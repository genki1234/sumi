import AppKit

/// Right side of the project window: tab bar, the active editor and the status bar.
final class EditorAreaViewController: NSViewController {
    let rootURL: URL
    private(set) var editors: [EditorViewController] = []
    private(set) var selectedIndex = -1
    /// Most recently used first. Feeds Search Everywhere's empty state and tab activation on close.
    private(set) var recentFiles: [URL] = []
    var onCurrentEditorChange: (() -> Void)?

    private let tabBar = TabBarView()
    private let content = NSView()
    /// Placed at the bottom of the window by ProjectWindowController, below the console.
    let statusBar = StatusBarView()
    private let emptyView = EmptyEditorView()

    init(rootURL: URL) {
        self.rootURL = rootURL
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    var currentEditor: EditorViewController? {
        editors.indices.contains(selectedIndex) ? editors[selectedIndex] : nil
    }

    var dirtyDocuments: [TextDocument] {
        editors.map(\.document).filter(\.isDirty)
    }

    override func loadView() {
        let root = NSView()
        // On macOS 26 and later a scroll view draws past its frame (toward the titlebar). Clipping the
        // editor content and keeping the tab bar on top stops it from painting over the tabs.
        content.clipsToBounds = true
        for sub in [content, tabBar] {
            sub.translatesAutoresizingMaskIntoConstraints = false
            root.addSubview(sub)
        }
        emptyView.translatesAutoresizingMaskIntoConstraints = false
        content.addSubview(emptyView)
        NSLayoutConstraint.activate([
            tabBar.topAnchor.constraint(equalTo: root.safeAreaLayoutGuide.topAnchor),
            tabBar.leadingAnchor.constraint(equalTo: root.leadingAnchor),
            tabBar.trailingAnchor.constraint(equalTo: root.trailingAnchor),
            tabBar.heightAnchor.constraint(equalToConstant: 36),
            content.topAnchor.constraint(equalTo: tabBar.bottomAnchor),
            content.leadingAnchor.constraint(equalTo: root.leadingAnchor),
            content.trailingAnchor.constraint(equalTo: root.trailingAnchor),
            content.bottomAnchor.constraint(equalTo: root.bottomAnchor),
        ])
        pin(emptyView, to: content)
        tabBar.onSelect = { [weak self] index in self?.select(index) }
        tabBar.onClose = { [weak self] index in self?.closeTab(at: index) }
        view = root
        refreshChrome()
    }

    private func pin(_ child: NSView, to parent: NSView) {
        NSLayoutConstraint.activate([
            child.topAnchor.constraint(equalTo: parent.topAnchor),
            child.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
            child.leftAnchor.constraint(equalTo: parent.leftAnchor),
            child.rightAnchor.constraint(equalTo: parent.rightAnchor),
        ])
    }

    // MARK: Opening and selecting

    func openFile(_ url: URL) {
        let url = url.standardizedFileURL
        if let index = editors.firstIndex(where: { $0.document.url == url }) {
            select(index)
            return
        }
        do {
            let editor = EditorViewController(document: try TextDocument(url: url))
            editor.onStateChange = { [weak self, weak editor] dirtyChanged in
                guard let self, let editor, editor === self.currentEditor || dirtyChanged else { return }
                if dirtyChanged { self.refreshChrome() } else { self.updateStatus() }
            }
            editor.onSaveError = { [weak self, weak editor] error in
                guard let self, let editor else { return }
                self.presentSaveError(error, editor: editor)
            }
            editor.onOpenFile = { [weak self] url in
                var isDirectory: ObjCBool = false
                guard FileManager.default.fileExists(atPath: url.path, isDirectory: &isDirectory) else { return }
                if isDirectory.boolValue { NSWorkspace.shared.open(url) } else { self?.openFile(url) }
            }
            addChild(editor)
            editors.append(editor)
            select(editors.count - 1)
        } catch DocumentError.binary {
            NSWorkspace.shared.open(url)
        } catch {
            presentAlert(error)
        }
    }

    func select(_ index: Int) {
        guard editors.indices.contains(index) else { return }
        if index != selectedIndex { currentEditor?.view.removeFromSuperview() }
        selectedIndex = index
        let editor = editors[index]
        if editor.view.superview !== content {
            editor.view.translatesAutoresizingMaskIntoConstraints = false
            content.addSubview(editor.view)
            pin(editor.view, to: content)
        }
        emptyView.isHidden = true
        editor.focus()
        recentFiles.removeAll { $0 == editor.document.url }
        recentFiles.insert(editor.document.url, at: 0)
        refreshChrome()
    }

    func selectNext() {
        guard !editors.isEmpty else { return }
        select((selectedIndex + 1) % editors.count)
    }

    func selectPrevious() {
        guard !editors.isEmpty else { return }
        select((selectedIndex - 1 + editors.count) % editors.count)
    }

    // MARK: Closing

    func closeTab(at index: Int) {
        guard editors.indices.contains(index) else { return }
        let editor = editors[index]
        if editor.savePendingChanges() { removeTab(editor) }
    }

    private func removeTab(_ editor: EditorViewController) {
        guard let index = editors.firstIndex(where: { $0 === editor }) else { return }
        editor.cancelAutosave()
        let wasSelected = index == selectedIndex
        editor.view.removeFromSuperview()
        editor.removeFromParent()
        editors.remove(at: index)
        if editors.isEmpty {
            selectedIndex = -1
            emptyView.isHidden = false
            view.window?.makeFirstResponder(nil)
            refreshChrome()
        } else if wasSelected {
            // Activate the most recently used remaining tab.
            selectedIndex = -1
            let next = recentFiles.lazy.compactMap { url in self.editors.firstIndex { $0.document.url == url } }.first
            select(next ?? min(index, editors.count - 1))
        } else {
            if index < selectedIndex { selectedIndex -= 1 }
            refreshChrome()
        }
    }

    /// Flush every tab before closing; a failed write keeps the window alive.
    func saveBeforeClosing() -> Bool {
        for editor in editors where !editor.savePendingChanges() { return false }
        return true
    }

    private func presentSaveError(_ error: Error, editor: EditorViewController) {
        let alert = NSAlert()
        alert.alertStyle = .warning
        alert.messageText = error.localizedDescription
        alert.addButton(withTitle: L("Cancel"))
        alert.addButton(withTitle: L("Save a Copy…"))
        guard let window = view.window else { alert.runModal(); return }
        alert.beginSheetModal(for: window) { [weak self, weak editor] response in
            guard response == .alertSecondButtonReturn, let self, let editor else { return }
            let panel = NSSavePanel()
            panel.nameFieldStringValue = editor.document.url.lastPathComponent
            panel.directoryURL = editor.document.url.deletingLastPathComponent()
            panel.beginSheetModal(for: window) { response in
                guard response == .OK, let target = panel.url else { return }
                // A copy must not silently replace the version that triggered the conflict.
                guard target.resolvingSymlinksInPath().standardizedFileURL != editor.document.url.resolvingSymlinksInPath().standardizedFileURL else {
                    self.presentSaveError(DocumentError.changedOnDisk, editor: editor)
                    return
                }
                do {
                    try editor.document.saveCopy(to: target)
                    editor.savePendingChanges()
                    editor.languageChanged()
                    self.refreshChrome()
                } catch { self.presentSaveError(error, editor: editor) }
            }
        }
    }

    // MARK: Saving

    func saveCurrent() {
        guard let document = currentEditor?.document else { return }
        save([document])
    }

    func saveAll() {
        save(dirtyDocuments)
    }

    @discardableResult
    func save(_ documents: [TextDocument]) -> Bool {
        defer { refreshChrome() }
        for document in documents {
            guard let editor = editors.first(where: { $0.document === document }),
                  editor.savePendingChanges() else { return false }
        }
        return true
    }

    // MARK: Changes from outside the editor

    /// Reloads unmodified tabs whose files changed on disk and closes tabs whose files were deleted.
    func checkExternalChanges() {
        for editor in editors {
            let document = editor.document
            if !FileManager.default.fileExists(atPath: document.url.path) {
                if !document.isDirty { removeTab(editor) }
                continue
            }
            if !document.isDirty && TextDocument.modificationDate(document.url) != document.diskModificationDate {
                editor.reloadFromDisk()
            }
        }
    }

    func fileRenamed(from old: URL, to new: URL) {
        for editor in editors {
            let path = editor.document.url.path
            let target: URL
            if path == old.path {
                target = new
            } else if path.hasPrefix(old.path + "/") {
                target = URL(fileURLWithPath: new.path + path.dropFirst(old.path.count))
            } else {
                continue
            }
            let oldLanguage = editor.document.language
            editor.document.rename(to: target.standardizedFileURL)
            if editor.document.language != oldLanguage { editor.languageChanged() }
        }
        recentFiles = recentFiles.filter { $0.path != old.path && !$0.path.hasPrefix(old.path + "/") }
        refreshChrome()
    }

    func fileTrashed(_ url: URL) {
        for editor in editors where editor.document.url.path == url.path || editor.document.url.path.hasPrefix(url.path + "/") {
            removeTab(editor)
        }
    }

    // MARK: Settings

    func applyFontSize() {
        editors.forEach { $0.applyFontSize() }
    }

    func applyWrap() {
        editors.forEach { $0.applyWrap(Preferences.softWrap) }
    }

    // MARK: Session

    var openFilePaths: [String] {
        editors.map(\.document.url.path)
    }

    func restore(paths: [String], selected: Int) {
        for path in paths where FileManager.default.fileExists(atPath: path) {
            openFile(URL(fileURLWithPath: path))
        }
        if editors.indices.contains(selected) { select(selected) }
    }

    // MARK: Chrome

    func relativePath(of url: URL) -> String {
        let root = rootURL.path
        return url.path.hasPrefix(root + "/") ? String(url.path.dropFirst(root.count + 1)) : url.path
    }

    private func refreshChrome() {
        tabBar.update(tabs: editors.map { TabInfo(url: $0.document.url, isDirty: $0.document.isDirty) }, selected: selectedIndex)
        updateStatus()
        onCurrentEditorChange?()
    }

    func applyLocalization() {
        guard isViewLoaded else { return }
        emptyView.applyLocalization()
        editors.forEach { $0.applyLocalization() }
        refreshChrome()
    }

    private func updateStatus() {
        let editor = currentEditor
        let path = editor.map { relativePath(of: $0.document.url).replacingOccurrences(of: "/", with: " › ") } ?? ""
        statusBar.show(path: rootURL.lastPathComponent + (path.isEmpty ? "" : " › " + path), editor: editor)
    }

    private func presentAlert(_ error: Error) {
        let alert = NSAlert(error: error)
        if let window = view.window {
            alert.beginSheetModal(for: window, completionHandler: nil)
        } else {
            alert.runModal()
        }
    }
}
