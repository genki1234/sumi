import AppKit

/// The "Project" panel: the folder hierarchy with create / rename / trash / reveal.
final class FileTreeViewController: NSViewController, NSOutlineViewDataSource, NSOutlineViewDelegate, NSMenuDelegate {
    let root: FileNode
    private let outlineView = FileOutlineView()
    var onOpenFile: ((URL) -> Void)?
    var onRenamed: ((URL, URL) -> Void)?
    var onTrashed: ((URL) -> Void)?
    var onOpenInTerminal: ((URL) -> Void)?

    init(rootURL: URL) {
        root = FileNode(url: rootURL, isDirectory: true, parent: nil)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    override func loadView() {
        let container = NSView()

        let header = NSTextField(labelWithString: L("Project"))
        header.font = .systemFont(ofSize: 12, weight: .semibold)
        header.textColor = .secondaryLabelColor
        header.translatesAutoresizingMaskIntoConstraints = false

        let column = NSTableColumn(identifier: .init("name"))
        column.resizingMask = .autoresizingMask
        outlineView.addTableColumn(column)
        outlineView.outlineTableColumn = column
        outlineView.headerView = nil
        outlineView.style = .sourceList
        outlineView.rowSizeStyle = .custom
        outlineView.rowHeight = 22
        outlineView.indentationPerLevel = 14
        outlineView.columnAutoresizingStyle = .uniformColumnAutoresizingStyle
        outlineView.dataSource = self
        outlineView.delegate = self
        outlineView.target = self
        outlineView.action = #selector(rowClicked)
        outlineView.onActivate = { [weak self] in self?.activateSelection() }
        outlineView.onDelete = { [weak self] in
            guard let self, let node = self.selectedNode else { return }
            self.confirmTrash(node)
        }
        let menu = NSMenu()
        menu.delegate = self
        outlineView.menu = menu

        let scroll = NSScrollView()
        scroll.documentView = outlineView
        scroll.hasVerticalScroller = true
        scroll.autohidesScrollers = true
        scroll.drawsBackground = false
        scroll.automaticallyAdjustsContentInsets = false
        scroll.translatesAutoresizingMaskIntoConstraints = false

        container.addSubview(header)
        container.addSubview(scroll)
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: container.safeAreaLayoutGuide.topAnchor, constant: 8),
            header.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 14),
            scroll.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 6),
            scroll.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            scroll.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            scroll.bottomAnchor.constraint(equalTo: container.bottomAnchor),
        ])
        view = container
        outlineView.reloadData()
        outlineView.expandItem(root)
    }

    // MARK: Data source

    func outlineView(_ outlineView: NSOutlineView, numberOfChildrenOfItem item: Any?) -> Int {
        guard let node = item as? FileNode else { return 1 }
        return node.isDirectory ? node.loadedChildren().count : 0
    }

    func outlineView(_ outlineView: NSOutlineView, child index: Int, ofItem item: Any?) -> Any {
        guard let node = item as? FileNode else { return root }
        return node.loadedChildren()[index]
    }

    func outlineView(_ outlineView: NSOutlineView, isItemExpandable item: Any) -> Bool {
        (item as? FileNode)?.isDirectory ?? false
    }

    func outlineView(_ outlineView: NSOutlineView, viewFor tableColumn: NSTableColumn?, item: Any) -> NSView? {
        guard let node = item as? FileNode else { return nil }
        let identifier = NSUserInterfaceItemIdentifier("FileCell")
        let cell = outlineView.makeView(withIdentifier: identifier, owner: self) as? FileCellView ?? FileCellView(identifier: identifier)
        cell.configure(node, isRoot: node === root)
        return cell
    }

    // MARK: Interaction

    private var selectedNode: FileNode? {
        outlineView.item(atRow: outlineView.selectedRow) as? FileNode
    }

    @objc private func rowClicked() {
        let row = outlineView.clickedRow
        guard row >= 0, let node = outlineView.item(atRow: row) as? FileNode else { return }
        if node.isDirectory {
            // The disclosure triangle toggles by itself; a click elsewhere on a folder row toggles it too.
            if let event = NSApp.currentEvent {
                let point = outlineView.convert(event.locationInWindow, from: nil)
                if outlineView.frameOfOutlineCell(atRow: row).contains(point) { return }
            }
            toggle(node)
        } else {
            onOpenFile?(node.url)
        }
    }

    private func activateSelection() {
        guard let node = selectedNode else { return }
        if node.isDirectory { toggle(node) } else { onOpenFile?(node.url) }
    }

    private func toggle(_ node: FileNode) {
        if outlineView.isItemExpanded(node) {
            outlineView.collapseItem(node)
        } else {
            outlineView.expandItem(node)
        }
    }

    /// Expands the parents of `url` and selects it.
    func reveal(_ url: URL) {
        let base = root.url.pathComponents
        let components = url.standardizedFileURL.pathComponents
        guard components.count >= base.count, Array(components.prefix(base.count)) == base else { return }
        var node = root
        outlineView.expandItem(root)
        let rest = Array(components.dropFirst(base.count))
        for (index, component) in rest.enumerated() {
            guard let next = node.loadedChildren().first(where: { $0.name == component }) else { return }
            if next.isDirectory && index < rest.count - 1 { outlineView.expandItem(next) }
            node = next
        }
        let row = outlineView.row(forItem: node)
        guard row >= 0 else { return }
        outlineView.selectRowIndexes([row], byExtendingSelection: false)
        outlineView.scrollRowToVisible(row)
    }

    // MARK: File system changes

    func directoriesChanged(_ urls: [URL], rescan: Bool) {
        if rescan {
            var directories: [FileNode] = []
            root.forEachLoadedDirectory { directories.append($0) }
            directories.forEach(refresh)
            return
        }
        for url in urls {
            if let node = root.loadedNode(for: url), node.isDirectory, node.isLoaded {
                refresh(node)
            }
        }
    }

    private func refresh(_ node: FileNode) {
        let selected = selectedNode?.url
        node.reload()
        outlineView.reloadItem(node, reloadChildren: true)
        if let selected, let again = root.loadedNode(for: selected) {
            let row = outlineView.row(forItem: again)
            if row >= 0 { outlineView.selectRowIndexes([row], byExtendingSelection: false) }
        }
    }

    // MARK: Folder management

    private func targetDirectory(for node: FileNode?) -> FileNode {
        guard let node else { return root }
        return node.isDirectory ? node : (node.parent ?? root)
    }

    /// Main menu ⌘N / ⇧⌘N: create in the selected folder (or the selected file's folder).
    func newItem(folder: Bool) {
        promptNewItem(in: targetDirectory(for: selectedNode), folder: folder)
    }

    private func promptNewItem(in directory: FileNode, folder: Bool) {
        prompt(
            title: folder ? L("New Folder") : L("New File"),
            message: L("Enter a name in “%@”. Use / to create nested folders.", directory.name),
            initial: "", selectBaseName: false
        ) { [weak self] name in
            guard let self else { return }
            let target = directory.url.appendingPathComponent(name)
            do {
                let fm = FileManager.default
                if folder {
                    try fm.createDirectory(at: target, withIntermediateDirectories: true)
                } else {
                    guard !fm.fileExists(atPath: target.path) else { throw CocoaError(.fileWriteFileExists, userInfo: [NSFilePathErrorKey: target.path]) }
                    try fm.createDirectory(at: target.deletingLastPathComponent(), withIntermediateDirectories: true)
                    guard fm.createFile(atPath: target.path, contents: Data()) else { throw CocoaError(.fileWriteUnknown, userInfo: [NSFilePathErrorKey: target.path]) }
                }
                self.refresh(directory)
                self.reveal(target)
                if !folder { self.onOpenFile?(target) }
            } catch {
                self.present(error)
            }
        }
    }

    private func promptRename(_ node: FileNode) {
        guard node !== root else { return }
        prompt(title: L("Rename"), message: L("Enter a new name for “%@”.", node.name), initial: node.name, selectBaseName: !node.isDirectory) { [weak self] name in
            guard let self else { return }
            let target = node.url.deletingLastPathComponent().appendingPathComponent(name)
            guard target.path != node.url.path else { return }
            do {
                let fm = FileManager.default
                if target.path.lowercased() == node.url.path.lowercased() {
                    // Case-only rename on a case-insensitive volume (the macOS default) needs a temporary name.
                    let temp = node.url.deletingLastPathComponent().appendingPathComponent(".sumi-rename-\(UUID().uuidString)")
                    try fm.moveItem(at: node.url, to: temp)
                    try fm.moveItem(at: temp, to: target)
                } else {
                    try fm.moveItem(at: node.url, to: target)
                }
                self.onRenamed?(node.url, target)
                self.refresh(node.parent ?? self.root)
                self.reveal(target)
            } catch {
                self.present(error)
            }
        }
    }

    private func confirmTrash(_ node: FileNode) {
        guard node !== root, let window = view.window else { return }
        let alert = NSAlert()
        alert.messageText = L("Move “%@” to the Trash?", node.name)
        alert.informativeText = node.isDirectory ? L("The folder and everything in it will be moved to the Trash.") : L("You can restore it from the Trash.")
        alert.addButton(withTitle: L("Move to Trash"))
        alert.addButton(withTitle: L("Cancel"))
        Task { @MainActor in
            guard await alert.beginSheetModal(for: window) == .alertFirstButtonReturn else { return }
            do {
                try FileManager.default.trashItem(at: node.url, resultingItemURL: nil)
                self.onTrashed?(node.url)
                self.refresh(node.parent ?? self.root)
            } catch {
                self.present(error)
            }
        }
    }

    private func prompt(title: String, message: String, initial: String, selectBaseName: Bool, completion: @escaping (String) -> Void) {
        guard let window = view.window else { return }
        let alert = NSAlert()
        alert.messageText = title
        alert.informativeText = message
        alert.addButton(withTitle: L("OK"))
        alert.addButton(withTitle: L("Cancel"))
        let field = NSTextField(string: initial)
        field.frame = NSRect(x: 0, y: 0, width: 300, height: 24)
        alert.accessoryView = field
        alert.window.initialFirstResponder = field
        Task { @MainActor in
            let response = await alert.beginSheetModal(for: window)
            let name = field.stringValue.trimmingCharacters(in: .whitespacesAndNewlines)
            guard response == .alertFirstButtonReturn, !name.isEmpty else { return }
            completion(name)
        }
        alert.window.makeFirstResponder(field)
        if let editor = field.currentEditor() {
            let base = selectBaseName ? (initial as NSString).deletingPathExtension : initial
            editor.selectedRange = NSRange(location: 0, length: (base as NSString).length)
        }
    }

    private func present(_ error: Error) {
        guard let window = view.window else { return }
        NSAlert(error: error).beginSheetModal(for: window, completionHandler: nil)
    }

    // MARK: Context menu

    func menuNeedsUpdate(_ menu: NSMenu) {
        menu.removeAllItems()
        let row = outlineView.clickedRow
        let node = row >= 0 ? (outlineView.item(atRow: row) as? FileNode) : nil
        let target = node ?? root
        let directory = targetDirectory(for: node)

        menu.addItem(item(L("New File…"), #selector(menuNewFile(_:)), directory))
        menu.addItem(item(L("New Folder…"), #selector(menuNewFolder(_:)), directory))
        menu.addItem(.separator())
        if target !== root {
            menu.addItem(item(L("Rename…"), #selector(menuRename(_:)), target))
            menu.addItem(item(L("Move to Trash"), #selector(menuTrash(_:)), target))
            menu.addItem(.separator())
        }
        menu.addItem(item(L("Copy Path"), #selector(menuCopyPath(_:)), target))
        menu.addItem(item(L("Copy Relative Path"), #selector(menuCopyRelativePath(_:)), target))
        menu.addItem(item(L("Reveal in Finder"), #selector(menuReveal(_:)), target))
        menu.addItem(item(L("Open in Terminal"), #selector(menuOpenInTerminal(_:)), directory))
    }

    private func item(_ title: String, _ action: Selector, _ node: FileNode) -> NSMenuItem {
        let item = NSMenuItem(title: title, action: action, keyEquivalent: "")
        item.target = self
        item.representedObject = node
        return item
    }

    @objc private func menuNewFile(_ sender: NSMenuItem) {
        guard let node = sender.representedObject as? FileNode else { return }
        promptNewItem(in: node, folder: false)
    }

    @objc private func menuNewFolder(_ sender: NSMenuItem) {
        guard let node = sender.representedObject as? FileNode else { return }
        promptNewItem(in: node, folder: true)
    }

    @objc private func menuRename(_ sender: NSMenuItem) {
        guard let node = sender.representedObject as? FileNode else { return }
        promptRename(node)
    }

    @objc private func menuTrash(_ sender: NSMenuItem) {
        guard let node = sender.representedObject as? FileNode else { return }
        confirmTrash(node)
    }

    @objc private func menuCopyPath(_ sender: NSMenuItem) {
        guard let node = sender.representedObject as? FileNode else { return }
        copy(node.url.path)
    }

    @objc private func menuCopyRelativePath(_ sender: NSMenuItem) {
        guard let node = sender.representedObject as? FileNode else { return }
        let rootPath = root.url.path
        copy(node.url.path.hasPrefix(rootPath + "/") ? String(node.url.path.dropFirst(rootPath.count + 1)) : node.name)
    }

    @objc private func menuReveal(_ sender: NSMenuItem) {
        guard let node = sender.representedObject as? FileNode else { return }
        NSWorkspace.shared.activateFileViewerSelecting([node.url])
    }

    @objc private func menuOpenInTerminal(_ sender: NSMenuItem) {
        guard let node = sender.representedObject as? FileNode else { return }
        onOpenInTerminal?(node.url)
    }

    private func copy(_ string: String) {
        NSPasteboard.general.clearContents()
        NSPasteboard.general.setString(string, forType: .string)
    }
}

/// Return / Enter opens the selection, ⌘⌫ moves it to the Trash.
final class FileOutlineView: NSOutlineView {
    var onActivate: (() -> Void)?
    var onDelete: (() -> Void)?

    override func keyDown(with event: NSEvent) {
        switch event.keyCode {
        case 36, 76:
            onActivate?()
        case 51 where event.modifierFlags.contains(.command):
            onDelete?()
        default:
            super.keyDown(with: event)
        }
    }
}

private final class FileCellView: NSTableCellView {
    private let icon = NSImageView()
    private let label = NSTextField(labelWithString: "")

    init(identifier: NSUserInterfaceItemIdentifier) {
        super.init(frame: .zero)
        self.identifier = identifier
        icon.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byTruncatingTail
        addSubview(icon)
        addSubview(label)
        imageView = icon
        textField = label
        NSLayoutConstraint.activate([
            icon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            icon.centerYAnchor.constraint(equalTo: centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 16),
            label.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 6),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -4),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    func configure(_ node: FileNode, isRoot: Bool) {
        let (image, tint) = FileIcons.icon(for: node.url, isDirectory: node.isDirectory, excluded: node.isExcluded)
        icon.image = image
        icon.contentTintColor = tint
        toolTip = node.url.path
        if isRoot {
            let title = NSMutableAttributedString(string: node.name, attributes: [.font: NSFont.systemFont(ofSize: 13, weight: .semibold), .foregroundColor: NSColor.labelColor])
            let home = FileManager.default.homeDirectoryForCurrentUser.path
            let path = node.url.path.hasPrefix(home) ? "~" + node.url.path.dropFirst(home.count) : node.url.path
            title.append(NSAttributedString(string: "  " + path, attributes: [.font: NSFont.systemFont(ofSize: 12), .foregroundColor: NSColor.tertiaryLabelColor]))
            label.attributedStringValue = title
        } else {
            label.attributedStringValue = NSAttributedString(string: node.name, attributes: [
                .font: NSFont.systemFont(ofSize: 13),
                .foregroundColor: node.isExcluded ? NSColor.tertiaryLabelColor : NSColor.labelColor,
            ])
        }
    }
}
