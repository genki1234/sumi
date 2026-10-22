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
            controller.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            controller.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
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
    /// Collapse state saved while the terminal is maximized.
    private var beforeMaximize: [Bool]?

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
    }

    func openTerminal(at directory: URL) {
        setConsoleVisible(true)
        console.newSession(in: directory)
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

    func showSearchEverywhere() {
        guard let window else { return }
        if searchController == nil {
            let controller = SearchEverywhereController(index: fileIndex, rootURL: rootURL)
            controller.onOpen = { [weak self] url in
                guard let self else { return }
                if self.beforeMaximize != nil { self.restoreFromMaximize() }
                self.editorArea.openFile(url)
            }
            controller.recentFiles = { [weak self] in self?.editorArea.recentFiles ?? [] }
            searchController = controller
        }
        if searchController?.isVisible == false { searchController?.show(attachedTo: window) }
    }

    func saveSession() {
        Preferences.saveSession(for: rootURL, files: editorArea.openFilePaths, selected: max(editorArea.selectedIndex, 0))
    }

    /// Called while quitting. Returns false to cancel the quit.
    func confirmCloseForTermination() -> Bool {
        let dirty = editorArea.dirtyDocuments
        guard !dirty.isEmpty else { return true }
        window?.makeKeyAndOrderFront(nil)
        return editorArea.confirmSaveModal(dirty)
    }

    func applyFontSize() {
        editorArea.applyFontSize()
        console.applyFontSize()
    }

    // MARK: Menu actions (reached through the responder chain)

    @objc func searchEverywhere(_ sender: Any?) { showSearchEverywhere() }
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
        openTerminal(at: rootURL)
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

    func validateMenuItem(_ item: NSMenuItem) -> Bool {
        if item.action == #selector(togglePreview(_:)) { return editorArea.currentEditor?.hasPreview == true }
        return true
    }

    @objc func selectInProjectView(_ sender: Any?) {
        guard let url = editorArea.currentEditor?.document.url else { return }
        if treeItem.isCollapsed { treeItem.animator().isCollapsed = false }
        treeController.reveal(url)
    }

    // MARK: NSWindowDelegate

    func windowShouldClose(_ sender: NSWindow) -> Bool {
        let dirty = editorArea.dirtyDocuments
        guard !dirty.isEmpty else { return true }
        editorArea.confirmSave(dirty) { [weak self] proceed in
            if proceed { self?.window?.close() }
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
