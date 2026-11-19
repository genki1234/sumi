import AppKit

private extension NSToolbarItem.Identifier {
    static let leftPanel = NSToolbarItem.Identifier("leftPanel")
    static let leftPanelSeparator = NSToolbarItem.Identifier("leftPanelSeparator")
    static let searchEverywhere = NSToolbarItem.Identifier("searchEverywhere")
}

/// Hosts whichever tool window (Project view or Terminal) is placed in a panel position.
final class PanelSlotViewController: NSViewController {
    private(set) var content: NSViewController?

    override func loadView() {
        view = NSView()
    }

    func setContent(_ controller: NSViewController) {
        guard controller !== content else { return }
        content?.view.removeFromSuperview()
        content?.removeFromParent()
        content = controller
        addChild(controller)
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(controller.view)
        NSLayoutConstraint.activate([
            controller.view.topAnchor.constraint(equalTo: view.topAnchor),
            controller.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            controller.view.leftAnchor.constraint(equalTo: view.leftAnchor),
            controller.view.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
    }
}

/// One window per project folder.
///
/// Layout: left panel | editor, with a bottom panel under the editor and the status bar across the bottom.
/// By default the left panel holds the Project view and the bottom panel the Terminal;
/// "Swap Terminal and Project" exchanges them so the terminal becomes a full-height pane.
final class ProjectWindowController: NSWindowController, NSWindowDelegate, NSToolbarDelegate {
    let rootURL: URL
    let treeController: FileTreeViewController
    let editorArea: EditorAreaViewController
    let console: ConsoleViewController
    let fileIndex: FileIndex
    var onClose: ((ProjectWindowController) -> Void)?
    private var watcher: FileWatcher?
    private var searchController: SearchEverywhereController?

    private let outerSplit = NSSplitViewController()
    private let centerSplit = NSSplitViewController()
    private let leftSlot = PanelSlotViewController()
    private let bottomSlot = PanelSlotViewController()
    private let leftItem: NSSplitViewItem
    private let centerItem: NSSplitViewItem
    private let editorItem: NSSplitViewItem
    private let bottomItem: NSSplitViewItem
    private var closeConfirmationPending = false
    /// Keep both collapse state and divider ratios so restoring does not squash the editor.
    private var beforeMaximize: [Bool]?
    private var beforeMaximizeSizes: (left: CGFloat, editor: CGFloat)?

    init(rootURL: URL, restoreSession: Bool) {
        self.rootURL = rootURL
        treeController = FileTreeViewController(rootURL: rootURL)
        editorArea = EditorAreaViewController(rootURL: rootURL)
        console = ConsoleViewController(directory: rootURL)
        fileIndex = FileIndex(root: rootURL)
        leftItem = NSSplitViewItem(sidebarWithViewController: leftSlot)
        centerItem = NSSplitViewItem(viewController: centerSplit)
        editorItem = NSSplitViewItem(viewController: editorArea)
        bottomItem = NSSplitViewItem(viewController: bottomSlot)

        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 1280, height: 860),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false
        )
        window.title = rootURL.lastPathComponent
        window.minSize = NSSize(width: 720, height: 480)
        super.init(window: window)
        NotificationCenter.default.addObserver(self, selector: #selector(applyLocalization), name: .sumiLanguageDidChange, object: nil)

        leftItem.canCollapse = true
        centerItem.canCollapse = true
        editorItem.canCollapse = true
        bottomItem.canCollapse = true
        bottomItem.minimumThickness = 80
        editorItem.holdingPriority = .init(240)
        bottomItem.holdingPriority = .init(260)
        centerSplit.splitView.isVertical = false
        centerSplit.addSplitViewItem(editorItem)
        centerSplit.addSplitViewItem(bottomItem)
        outerSplit.addSplitViewItem(leftItem)
        outerSplit.addSplitViewItem(centerItem)

        let root = NSViewController()
        root.view = NSView()
        root.addChild(outerSplit)
        let statusBar = editorArea.statusBar
        for view in [outerSplit.view, statusBar] {
            view.translatesAutoresizingMaskIntoConstraints = false
            root.view.addSubview(view)
        }
        NSLayoutConstraint.activate([
            outerSplit.view.topAnchor.constraint(equalTo: root.view.topAnchor),
            outerSplit.view.leadingAnchor.constraint(equalTo: root.view.leadingAnchor),
            outerSplit.view.trailingAnchor.constraint(equalTo: root.view.trailingAnchor),
            outerSplit.view.bottomAnchor.constraint(equalTo: statusBar.topAnchor),
            statusBar.leadingAnchor.constraint(equalTo: root.view.leadingAnchor),
            statusBar.trailingAnchor.constraint(equalTo: root.view.trailingAnchor),
            statusBar.bottomAnchor.constraint(equalTo: root.view.bottomAnchor),
            statusBar.heightAnchor.constraint(equalToConstant: 26),
        ])
        window.contentViewController = root
        window.setContentSize(NSSize(width: 1280, height: 860))

        let toolbar = NSToolbar(identifier: "SumiProjectToolbar")
        toolbar.delegate = self
        toolbar.displayMode = .iconOnly
        window.toolbar = toolbar
        window.toolbarStyle = .unified
        window.delegate = self
        if !window.setFrameUsingName("SumiProject " + rootURL.path) { window.center() }
        window.setFrameAutosaveName("SumiProject " + rootURL.path)

        treeController.onOpenFile = { [weak self] url in self?.editorArea.openFile(url) }
        treeController.onRenamed = { [weak self] old, new in self?.editorArea.fileRenamed(from: old, to: new) }
        treeController.onTrashed = { [weak self] url in self?.editorArea.fileTrashed(url) }
        treeController.onOpenInTerminal = { [weak self] url in self?.openTerminal(at: url) }
        editorArea.onCurrentEditorChange = { [weak self] in self?.updateTitle() }
        console.onAllSessionsClosed = { [weak self] in self?.setConsoleVisible(false) }
        console.onSwap = { [weak self] in self?.swapConsoleAndProject(nil) }
        console.onToggleMaximize = { [weak self] in self?.toggleMaximizeConsole(nil) }
        console.onHide = { [weak self] in self?.setConsoleVisible(false) }
        console.onOpenLink = { [weak self] url in self?.openFromTerminal(url) }

        applyLayout()
        window.layoutIfNeeded()
        setDefaultPanelSizes()

        fileIndex.rebuild()
        watcher = FileWatcher(url: rootURL) { [weak self] directories, rescan in
            self?.fileSystemChanged(directories, rescan: rescan)
        }
        if restoreSession {
            let session = Preferences.session(for: rootURL)
            editorArea.restore(paths: session.files, selected: session.selected)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    // MARK: Layout

    private var consoleItem: NSSplitViewItem { Preferences.consoleOnLeft ? leftItem : bottomItem }
    private var treeItem: NSSplitViewItem { Preferences.consoleOnLeft ? bottomItem : leftItem }

    private func applyLayout() {
        let consoleOnLeft = Preferences.consoleOnLeft
        leftSlot.setContent(consoleOnLeft ? console : treeController)
        bottomSlot.setContent(consoleOnLeft ? treeController : console)
        leftItem.minimumThickness = consoleOnLeft ? 260 : 180
        leftItem.maximumThickness = consoleOnLeft ? NSSplitViewItem.unspecifiedDimension : 520
        treeItem.isCollapsed = false
        consoleItem.isCollapsed = Preferences.consoleHidden
        if !Preferences.consoleHidden { console.ensureSession() }
    }

    private func setDefaultPanelSizes() {
        guard let contentSize = window?.contentView?.bounds.size else { return }
        let consoleOnLeft = Preferences.consoleOnLeft
        outerSplit.splitView.setPosition(consoleOnLeft ? (contentSize.width * 0.42).rounded() : 260, ofDividerAt: 0)
        let centerHeight = centerSplit.splitView.bounds.height
        centerSplit.splitView.setPosition(max(200, centerHeight - (consoleOnLeft ? 220 : 280)), ofDividerAt: 0)
    }

    private func setConsoleVisible(_ visible: Bool) {
        if !visible && beforeMaximize != nil { restoreFromMaximize() }
        Preferences.consoleHidden = !visible
        consoleItem.animator().isCollapsed = !visible
        if visible {
            console.ensureSession()
            console.focus()
        } else {
            editorArea.currentEditor?.focus()
        }
    }

    private func restoreFromMaximize() {
        guard let saved = beforeMaximize else { return }
        beforeMaximize = nil
        for (item, collapsed) in zip([leftItem, centerItem, editorItem, bottomItem], saved) {
            item.isCollapsed = collapsed
        }
        window?.layoutIfNeeded()
        if let sizes = beforeMaximizeSizes {
            if !leftItem.isCollapsed && !centerItem.isCollapsed {
                outerSplit.splitView.setPosition(outerSplit.splitView.bounds.width * sizes.left, ofDividerAt: 0)
            }
            if !editorItem.isCollapsed && !bottomItem.isCollapsed {
                centerSplit.splitView.setPosition(centerSplit.splitView.bounds.height * sizes.editor, ofDividerAt: 0)
            }
        }
        beforeMaximizeSizes = nil
    }

    func openTerminal(at directory: URL) {
        console.newSession(in: directory)
        setConsoleVisible(true)
    }

    /// A path clicked in the terminal: files open in the editor (at the line, when the output had one),
    /// folders are selected in the Project view. Paths outside this project go to the window that owns them.
    private func openFromTerminal(_ link: URL) {
        var components = URLComponents(url: link, resolvingAgainstBaseURL: false)
        let location = components?.fragment?.split(separator: ":").compactMap { Int($0) } ?? []
        components?.fragment = nil
        guard let url = components?.url?.standardizedFileURL else { return }
        var isDirectory: ObjCBool = false
        guard FileManager.default.fileExists(atPath: url.path, isDirectory: &isDirectory) else { return }
        let inside = url.path == rootURL.path || url.path.hasPrefix(rootURL.path + "/")
        if isDirectory.boolValue {
            if inside {
                if treeItem.isCollapsed { treeItem.animator().isCollapsed = false }
                treeController.reveal(url)
            } else {
                NSWorkspace.shared.activateFileViewerSelecting([url])
            }
            return
        }
        guard inside else {
            (NSApp.delegate as? AppDelegate)?.open(url)
            return
        }
        if beforeMaximize != nil { restoreFromMaximize() }
        editorArea.recordPlace()
        editorArea.openFile(url)
        guard let editor = editorArea.currentEditor, editor.document.url.standardizedFileURL == url else { return }
        if let line = location.first { editor.go(toLine: line, column: location.count > 1 ? location[1] : 1) }
        editor.focus()
    }

    // MARK: Title, file system, search

    private func updateTitle() {
        guard let window else { return }
        let editor = editorArea.currentEditor
        window.subtitle = editor.map { editorArea.relativePath(of: $0.document.url) } ?? ""
        window.representedURL = editor?.document.url
        window.isDocumentEdited = editor?.document.isDirty ?? false
    }

    private func fileSystemChanged(_ directories: [String], rescan: Bool) {
        let relevant = directories.filter { !$0.contains("/.git/") && !$0.hasSuffix("/.git") }
        guard rescan || !relevant.isEmpty else { return }
        treeController.directoriesChanged(relevant.map { URL(fileURLWithPath: $0) }, rescan: rescan)
        fileIndex.scheduleRebuild()
        editorArea.checkExternalChanges()
    }

    /// Double Shift and ⇧⌘O open the Files tab, ⌘E the recent files, ⇧⌘A the Actions tab, ⇧⌘F the Text tab
    /// and ⇧⌘R the Text tab with its replace field.
    func showSearchEverywhere(_ mode: SearchEverywhereController.Mode = .files, query: String? = nil, replace: Bool = false) {
        guard let window else { return }
        if searchController == nil {
            let controller = SearchEverywhereController(index: fileIndex, rootURL: rootURL)
            controller.onOpen = { [weak self] url in
                guard let self else { return }
                if self.beforeMaximize != nil { self.restoreFromMaximize() }
                self.editorArea.openFile(url)
            }
            controller.onOpenMatch = { [weak self] match in
                guard let self else { return }
                if self.beforeMaximize != nil { self.restoreFromMaximize() }
                self.editorArea.recordPlace()
                self.editorArea.openFile(match.url)
                guard let editor = self.editorArea.currentEditor, editor.document.url == match.url.standardizedFileURL else { return }
                editor.go(toLine: match.line, column: match.column)
                let caret = editor.textView.selectedRange().location
                editor.textView.setSelectedRange(NSRange(location: caret, length: match.length))
                editor.focus()
            }
            controller.recentFiles = { [weak self] in self?.editorArea.recentFiles ?? [] }
            controller.onReplaceAll = { [weak self] query, replacement in self?.confirmReplace(query, with: replacement) }
            searchController = controller
        }
        searchController?.show(attachedTo: window, mode: mode, query: query, replace: replace)
    }

    /// Counts the occurrences again over every project file (an open tab counts its unsaved text), asks
    /// once with the totals, then replaces.
    private func confirmReplace(_ query: String, with replacement: String) {
        let files = fileIndex.files
        var openTexts: [URL: String] = [:]
        for editor in editorArea.editors { openTexts[editor.document.url] = editor.document.textStorage.string }
        Task { [weak self] in
            let counts = await SearchEverywhereController.countMatches(query, in: files, openTexts: openTexts)
            guard let self, let window = self.window else { return }
            guard !counts.isEmpty else { NSSound.beep(); return }
            let alert = NSAlert()
            alert.messageText = "“\(query)” → “\(replacement)”"
            alert.informativeText = L("Matches: %1$ld / Files: %2$ld", counts.reduce(0) { $0 + $1.count }, counts.count)
            alert.addButton(withTitle: L("Replace All"))
            alert.addButton(withTitle: L("Cancel"))
            alert.beginSheetModal(for: window) { [weak self] response in
                guard response == .alertFirstButtonReturn else { return }
                self?.replace(query, with: replacement, in: counts.map(\.url))
            }
        }
    }

    /// Open files change in their tab, as one undo step, and autosave writes them. The other files are
    /// read and saved like a tab, so their encoding, BOM, line endings and permissions stay as they were.
    private func replace(_ query: String, with replacement: String, in urls: [URL]) {
        var failure: (url: URL, error: Error)?
        for url in urls {
            if let editor = editorArea.editors.first(where: { $0.document.url == url.standardizedFileURL }) {
                editor.replaceAll(query, with: replacement)
                continue
            }
            do {
                let document = try TextDocument(url: url)
                let text = document.textStorage.mutableString
                guard text.replaceOccurrences(of: query, with: replacement, options: .caseInsensitive, range: NSRange(location: 0, length: text.length)) > 0 else { continue }
                document.isDirty = true
                try document.save()
            } catch {
                if failure == nil { failure = (url, error) }
            }
        }
        guard let failure, let window else { return }
        let alert = NSAlert(error: failure.error)
        alert.informativeText = editorArea.relativePath(of: failure.url)
        alert.beginSheetModal(for: window, completionHandler: nil)
    }

    /// ⌘L: asks for "line" or "line:column" and moves the caret there.
    private func showGoToLine() {
        guard let window, let editor = editorArea.currentEditor else { return }
        let alert = NSAlert()
        alert.messageText = L("Go to Line:Column")
        let field = NSTextField(frame: NSRect(x: 0, y: 0, width: 220, height: 24))
        let caret = editor.caretPosition
        field.placeholderString = "\(caret.line):\(caret.column)"
        field.stringValue = "\(caret.line):\(caret.column)"
        alert.accessoryView = field
        alert.addButton(withTitle: L("OK"))
        alert.addButton(withTitle: L("Cancel"))
        alert.window.initialFirstResponder = field
        alert.beginSheetModal(for: window) { [weak self, weak editor] response in
            guard response == .alertFirstButtonReturn, let editor else { return }
            let numbers = field.stringValue.split(whereSeparator: { $0 == ":" || $0 == "," || $0 == " " }).compactMap { Int($0) }
            guard let line = numbers.first else { return }
            self?.editorArea.recordPlace()
            editor.go(toLine: line, column: numbers.count > 1 ? numbers[1] : 1)
            editor.focus()
        }
    }

    func saveSession() {
        Preferences.saveSession(for: rootURL, files: editorArea.openFilePaths, selected: max(editorArea.selectedIndex, 0))
    }

    /// Saving never asks a routine question; errors keep the project open.
    func saveBeforeClosing() -> Bool { editorArea.saveBeforeClosing() }
    var hasPendingCloseConfirmation: Bool { closeConfirmationPending || console.hasPendingCloseConfirmation }

    func applyFontSize() {
        editorArea.applyFontSize()
        console.applyFontSize()
    }

    // MARK: Menu actions (reached through the responder chain)

    @objc func searchEverywhere(_ sender: Any?) { showSearchEverywhere() }
    @objc func recentFiles(_ sender: Any?) { showSearchEverywhere(.files, query: "") }
    @objc func findAction(_ sender: Any?) { showSearchEverywhere(.actions) }
    @objc func goToLine(_ sender: Any?) { showGoToLine() }

    /// ⇧⌘F: the Text tab, starting from the text selected in the editor when it is on one line.
    @objc func findInFiles(_ sender: Any?) { showSearchEverywhere(.text, query: selectedQuery) }
    /// ⇧⌘R: the same with the replace field.
    @objc func replaceInFiles(_ sender: Any?) { showSearchEverywhere(.text, query: selectedQuery, replace: true) }

    private var selectedQuery: String? {
        guard let textView = editorArea.currentEditor?.textView, window?.firstResponder === textView else { return nil }
        let selected = (textView.string as NSString).substring(with: textView.selectedRange())
        return selected.isEmpty || selected.contains("\n") ? nil : selected
    }

    @objc func navigateBack(_ sender: Any?) { editorArea.goBack() }
    @objc func navigateForward(_ sender: Any?) { editorArea.goForward() }
    @objc func goToLastEditLocation(_ sender: Any?) { editorArea.goToLastEdit() }
    @objc func saveDocument(_ sender: Any?) { editorArea.saveCurrent() }
    @objc func saveAllDocuments(_ sender: Any?) { editorArea.saveAll() }
    @objc func newFile(_ sender: Any?) { treeController.newItem(folder: false) }
    @objc func newFolder(_ sender: Any?) { treeController.newItem(folder: true) }

    /// ⌘W closes the terminal tab when the terminal has focus, otherwise the editor tab.
    @objc func closeTab(_ sender: Any?) {
        if console.isFocused {
            console.closeCurrentSession()
        } else if editorArea.selectedIndex >= 0 {
            editorArea.closeTab(at: editorArea.selectedIndex)
        } else {
            window?.performClose(sender)
        }
    }

    @objc func selectNextTab(_ sender: Any?) {
        if console.isFocused { console.selectNext() } else { editorArea.selectNext() }
    }

    @objc func selectPreviousTab(_ sender: Any?) {
        if console.isFocused { console.selectPrevious() } else { editorArea.selectPrevious() }
    }

    @objc func toggleLeftPanel(_ sender: Any?) {
        leftItem.animator().isCollapsed.toggle()
    }

    @objc func toggleProjectView(_ sender: Any?) {
        if beforeMaximize != nil { restoreFromMaximize() }
        treeItem.animator().isCollapsed.toggle()
    }

    /// ⌥F12: shows and focuses the terminal; hides it when it already has focus.
    @objc func toggleConsole(_ sender: Any?) {
        if consoleItem.isCollapsed {
            setConsoleVisible(true)
        } else if console.isFocused {
            setConsoleVisible(false)
        } else {
            console.ensureSession()
            console.focus()
        }
    }

    @objc func newTerminalTab(_ sender: Any?) {
        openTerminal(at: console.currentSession?.currentDirectory ?? rootURL)
    }

    @objc func swapConsoleAndProject(_ sender: Any?) {
        restoreFromMaximize()
        Preferences.consoleOnLeft.toggle()
        applyLayout()
        window?.layoutIfNeeded()
        setDefaultPanelSizes()
        if !Preferences.consoleHidden { console.focus() }
    }

    /// ⇧⌘↩: the terminal fills the window; the same command restores the layout.
    @objc func toggleMaximizeConsole(_ sender: Any?) {
        if beforeMaximize != nil {
            restoreFromMaximize()
            return
        }
        beforeMaximizeSizes = (
            left: leftSlot.view.frame.width / max(1, outerSplit.splitView.bounds.width),
            editor: editorArea.view.frame.height / max(1, centerSplit.splitView.bounds.height)
        )
        beforeMaximize = [leftItem, centerItem, editorItem, bottomItem].map(\.isCollapsed)
        Preferences.consoleHidden = false
        if Preferences.consoleOnLeft {
            leftItem.isCollapsed = false
            centerItem.isCollapsed = true
        } else {
            bottomItem.isCollapsed = false
            leftItem.isCollapsed = true
            editorItem.isCollapsed = true
        }
        console.ensureSession()
        console.focus()
    }

    /// Markdown and HTML tabs: show or hide the rendered preview.
    @objc func togglePreview(_ sender: Any?) {
        editorArea.currentEditor?.togglePreview()
    }

    @objc func performFindAction(_ sender: NSMenuItem) {
        if console.isFocused, let action = NSTextFinder.Action(rawValue: sender.tag) {
            console.performFindAction(action)
        } else { editorArea.currentEditor?.textView.performTextFinderAction(sender) }
    }

    func validateMenuItem(_ item: NSMenuItem) -> Bool {
        if item.action == #selector(performFindAction(_:)) {
            if console.isFocused { return item.tag != NSTextFinder.Action.showReplaceInterface.rawValue }
            return editorArea.currentEditor != nil
        }
        if item.action == #selector(togglePreview(_:)) { return editorArea.currentEditor?.hasPreview == true }
        // The terminal keeps ⌘L for itself.
        if item.action == #selector(goToLine(_:)) { return editorArea.currentEditor != nil && !console.isFocused }
        if item.action == #selector(navigateBack(_:)) { return editorArea.canGoBack }
        if item.action == #selector(navigateForward(_:)) { return editorArea.canGoForward }
        if item.action == #selector(goToLastEditLocation(_:)) { return editorArea.lastEdit != nil }
        return true
    }

    @objc func selectInProjectView(_ sender: Any?) {
        guard let url = editorArea.currentEditor?.document.url else { return }
        if treeItem.isCollapsed { treeItem.animator().isCollapsed = false }
        treeController.reveal(url)
    }

    // MARK: NSWindowDelegate

    func windowShouldClose(_ sender: NSWindow) -> Bool {
        guard !hasPendingCloseConfirmation, sender.attachedSheet == nil, saveBeforeClosing() else { return false }
        guard let alert = TerminalCloseConfirmation.alert(jobs: console.runningJobs) else { return true }
        closeConfirmationPending = true
        alert.beginSheetModal(for: sender) { [weak self] response in
            guard let self else { return }
            self.closeConfirmationPending = false
            if response == .alertSecondButtonReturn, self.saveBeforeClosing() { sender.close() }
        }
        return false
    }

    func windowWillClose(_ notification: Notification) {
        saveSession()
        watcher?.stop()
        searchController?.close()
        console.terminateAll()
        onClose?(self)
    }

    // MARK: NSToolbarDelegate

    @objc private func applyLocalization() {
        treeController.applyLocalization()
        editorArea.applyLocalization()
        console.applyLocalization()
        searchController?.applyLocalization()
        for item in window?.toolbar?.items ?? [] {
            switch item.itemIdentifier {
            case .leftPanel:
                item.label = L("Left Panel")
                item.toolTip = L("Left Panel")
                item.image = NSImage(systemSymbolName: "sidebar.left", accessibilityDescription: L("Left Panel"))
            case .searchEverywhere:
                item.label = L("Search Everywhere")
                item.toolTip = L("Search Everywhere (Double ⇧)")
                item.image = NSImage(systemSymbolName: "magnifyingglass", accessibilityDescription: L("Search Everywhere"))
            default: break
            }
        }
    }

    func toolbarDefaultItemIdentifiers(_ toolbar: NSToolbar) -> [NSToolbarItem.Identifier] {
        [.leftPanel, .leftPanelSeparator, .flexibleSpace, .searchEverywhere]
    }

    func toolbarAllowedItemIdentifiers(_ toolbar: NSToolbar) -> [NSToolbarItem.Identifier] {
        toolbarDefaultItemIdentifiers(toolbar)
    }

    func toolbar(_ toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: NSToolbarItem.Identifier, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem? {
        switch itemIdentifier {
        case .leftPanelSeparator:
            return NSTrackingSeparatorToolbarItem(identifier: itemIdentifier, splitView: outerSplit.splitView, dividerIndex: 0)
        case .leftPanel:
            return button(itemIdentifier, symbol: "sidebar.left", label: L("Left Panel"), action: #selector(toggleLeftPanel(_:)))
        case .searchEverywhere:
            let item = button(itemIdentifier, symbol: "magnifyingglass", label: L("Search Everywhere"), action: #selector(searchEverywhere(_:)))
            item.toolTip = L("Search Everywhere (Double ⇧)")
            return item
        default:
            return nil
        }
    }

    private func button(_ identifier: NSToolbarItem.Identifier, symbol: String, label: String, action: Selector) -> NSToolbarItem {
        let item = NSToolbarItem(itemIdentifier: identifier)
        item.image = NSImage(systemSymbolName: symbol, accessibilityDescription: label)
        item.label = label
        item.toolTip = label
        item.isBordered = true
        item.target = self
        item.action = action
        return item
    }
}
