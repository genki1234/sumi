import AppKit

private final class SearchPanel: NSPanel {
    override var canBecomeKey: Bool { true }
    override var canBecomeMain: Bool { false }
}

/// The Search Everywhere popup (files): opens with Double Shift, fuzzy-matches file names
/// (or paths when the query contains "/"), shows recent files when the query is empty.
@MainActor
final class SearchEverywhereController: NSObject, NSWindowDelegate, NSTextFieldDelegate, NSTableViewDataSource, NSTableViewDelegate {
    fileprivate struct Row {
        let url: URL
        let name: String
        let directory: String
        let nameMatches: [Int]
        let directoryMatches: [Int]
    }

    var onOpen: ((URL) -> Void)?
    var recentFiles: (() -> [URL])?
    private let index: FileIndex
    private let rootURL: URL
    private let panel: SearchPanel
    private let field = NSTextField()
    private let table = NSTableView()
    private let footer = NSTextField(labelWithString: "")
    private let tabLabel = NSTextField(labelWithString: "")
    private let hint = NSTextField(labelWithString: "")
    private var localizedViews: [NSView] = []
    private var rows: [Row] = []
    private weak var parentWindow: NSWindow?
    private var isClosing = false

    init(index: FileIndex, rootURL: URL) {
        self.index = index
        self.rootURL = rootURL
        panel = SearchPanel(
            contentRect: NSRect(x: 0, y: 0, width: 680, height: 440),
            styleMask: [.titled, .fullSizeContentView],
            backing: .buffered, defer: true
        )
        super.init()
        buildUI()
    }

    private func buildUI() {
        panel.titleVisibility = .hidden
        panel.titlebarAppearsTransparent = true
        for button in [NSWindow.ButtonType.closeButton, .miniaturizeButton, .zoomButton] {
            panel.standardWindowButton(button)?.isHidden = true
        }
        panel.isMovableByWindowBackground = true
        panel.isReleasedWhenClosed = false
        panel.hidesOnDeactivate = true
        panel.delegate = self

        let background = NSVisualEffectView()
        background.material = .popover
        background.blendingMode = .behindWindow
        background.state = .active
        panel.contentView = background

        tabLabel.stringValue = L("Files")
        tabLabel.font = .systemFont(ofSize: 12, weight: .semibold)
        tabLabel.textColor = .labelColor
        let underline = NSView()
        underline.wantsLayer = true
        underline.layer?.backgroundColor = NSColor.controlAccentColor.cgColor
        hint.stringValue = L("Double ⇧ to search everywhere")
        hint.font = .systemFont(ofSize: 11)
        hint.textColor = .tertiaryLabelColor

        let magnifier = NSImageView(image: NSImage(systemSymbolName: "magnifyingglass", accessibilityDescription: nil) ?? NSImage())
        magnifier.contentTintColor = .secondaryLabelColor
        magnifier.symbolConfiguration = .init(pointSize: 15, weight: .regular)
        field.isBordered = false
        field.drawsBackground = false
        field.focusRingType = .none
        field.font = .systemFont(ofSize: 16)
        field.placeholderString = L("Type a file name (use / to match the path)")
        field.delegate = self
        field.cell?.isScrollable = true
        field.cell?.wraps = false

        let separator = NSBox()
        separator.boxType = .separator

        let column = NSTableColumn(identifier: .init("result"))
        column.resizingMask = .autoresizingMask
        table.addTableColumn(column)
        table.headerView = nil
        table.rowHeight = 26
        table.style = .plain
        table.backgroundColor = .clear
        table.intercellSpacing = NSSize(width: 0, height: 0)
        table.columnAutoresizingStyle = .uniformColumnAutoresizingStyle
        table.dataSource = self
        table.delegate = self
        table.target = self
        table.doubleAction = #selector(openClickedRow)
        let scroll = NSScrollView()
        scroll.documentView = table
        scroll.hasVerticalScroller = true
        scroll.autohidesScrollers = true
        scroll.drawsBackground = false

        footer.font = .systemFont(ofSize: 11)
        footer.textColor = .tertiaryLabelColor

        for view in [tabLabel, underline, hint, magnifier, field, separator, scroll, footer] {
            view.translatesAutoresizingMaskIntoConstraints = false
            background.addSubview(view)
        }
        localizedViews = [background, tabLabel, underline, hint, magnifier, field, separator, scroll, scroll.contentView, table, footer]
        NSLayoutConstraint.activate([
            tabLabel.topAnchor.constraint(equalTo: background.topAnchor, constant: 10),
            tabLabel.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 18),
            underline.topAnchor.constraint(equalTo: tabLabel.bottomAnchor, constant: 4),
            underline.leadingAnchor.constraint(equalTo: tabLabel.leadingAnchor, constant: -4),
            underline.trailingAnchor.constraint(equalTo: tabLabel.trailingAnchor, constant: 4),
            underline.heightAnchor.constraint(equalToConstant: 2),
            hint.centerYAnchor.constraint(equalTo: tabLabel.centerYAnchor),
            hint.trailingAnchor.constraint(equalTo: background.trailingAnchor, constant: -16),

            magnifier.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 16),
            magnifier.centerYAnchor.constraint(equalTo: field.centerYAnchor),
            magnifier.widthAnchor.constraint(equalToConstant: 18),
            field.topAnchor.constraint(equalTo: underline.bottomAnchor, constant: 12),
            field.leadingAnchor.constraint(equalTo: magnifier.trailingAnchor, constant: 8),
            field.trailingAnchor.constraint(equalTo: background.trailingAnchor, constant: -16),

            separator.topAnchor.constraint(equalTo: field.bottomAnchor, constant: 10),
            separator.leadingAnchor.constraint(equalTo: background.leadingAnchor),
            separator.trailingAnchor.constraint(equalTo: background.trailingAnchor),

            scroll.topAnchor.constraint(equalTo: separator.bottomAnchor, constant: 4),
            scroll.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 6),
            scroll.trailingAnchor.constraint(equalTo: background.trailingAnchor, constant: -6),
            scroll.bottomAnchor.constraint(equalTo: footer.topAnchor, constant: -6),

            footer.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 16),
            footer.trailingAnchor.constraint(lessThanOrEqualTo: background.trailingAnchor, constant: -16),
            footer.bottomAnchor.constraint(equalTo: background.bottomAnchor, constant: -8),
        ])
        applyLocalization()
    }

    func applyLocalization() {
        let direction: NSUserInterfaceLayoutDirection = AppLocalization.isRightToLeft ? .rightToLeft : .leftToRight
        localizedViews.forEach { $0.userInterfaceLayoutDirection = direction }
        field.baseWritingDirection = .leftToRight
        tabLabel.stringValue = L("Files")
        hint.stringValue = L("Double ⇧ to search everywhere")
        field.placeholderString = L("Type a file name (use / to match the path)")
        refresh()
    }

    // MARK: Show / close

    var isVisible: Bool { panel.isVisible }

    func show(attachedTo window: NSWindow) {
        parentWindow = window
        let frame = window.frame
        let size = panel.frame.size
        let top = frame.maxY - min(140, frame.height * 0.15)
        panel.setFrameOrigin(NSPoint(x: frame.midX - size.width / 2, y: top - size.height))
        if panel.parent == nil { window.addChildWindow(panel, ordered: .above) }
        panel.makeKeyAndOrderFront(nil)
        panel.makeFirstResponder(field)
        field.currentEditor()?.selectAll(nil)
        refresh()
    }

    func close() {
        guard panel.isVisible, !isClosing else { return }
        isClosing = true
        panel.parent?.removeChildWindow(panel)
        panel.orderOut(nil)
        parentWindow?.makeKeyAndOrderFront(nil)
        isClosing = false
    }

    func windowDidResignKey(_ notification: Notification) {
        close()
    }

    // MARK: Results

    func controlTextDidChange(_ obj: Notification) {
        refresh()
    }

    private func refresh() {
        let query = field.stringValue.trimmingCharacters(in: .whitespaces)
        if query.isEmpty {
            rows = (recentFiles?() ?? []).map { url in
                let relative = relativePath(url)
                return Row(url: url, name: url.lastPathComponent, directory: (relative as NSString).deletingLastPathComponent, nameMatches: [], directoryMatches: [])
            }
            footer.stringValue = rows.isEmpty ? L("No recent files") : L("Recent Files") + "   " + keyHints
        } else {
            let results = index.search(query)
            rows = results.prefix(300).map(makeRow) // Display only: every file is matched, the list shows the top results.
            footer.stringValue = L("Matches: %1$ld / Files: %2$ld", results.count, index.files.count) + "   " + keyHints
        }
        table.reloadData()
        if !rows.isEmpty {
            table.selectRowIndexes([0], byExtendingSelection: false)
            table.scrollRowToVisible(0)
        }
    }

    private var keyHints: String {
        ["↑↓ " + L("Navigate"), "⏎ " + L("Open"), "⎋ " + L("Close")].joined(separator: "   ")
    }

    private func relativePath(_ url: URL) -> String {
        let root = rootURL.path
        return url.path.hasPrefix(root + "/") ? String(url.path.dropFirst(root.count + 1)) : url.path
    }

    private func makeRow(_ result: FileIndex.Result) -> Row {
        let relative = result.file.relativePath
        let name = String(decoding: result.file.name, as: UTF16.self)
        let directory = (relative as NSString).deletingLastPathComponent
        guard result.matchedPath else {
            return Row(url: result.file.url, name: name, directory: directory, nameMatches: result.positions, directoryMatches: [])
        }
        // Split path positions between the directory part and the file-name part.
        let nameStart = directory.isEmpty ? 0 : (directory as NSString).length + 1
        return Row(
            url: result.file.url, name: name, directory: directory,
            nameMatches: result.positions.filter { $0 >= nameStart }.map { $0 - nameStart },
            directoryMatches: result.positions.filter { $0 < nameStart }
        )
    }

    private func move(_ delta: Int) {
        guard !rows.isEmpty else { return }
        let next = max(0, min(rows.count - 1, table.selectedRow + delta))
        table.selectRowIndexes([next], byExtendingSelection: false)
        table.scrollRowToVisible(next)
    }

    private func open(row: Int) {
        guard rows.indices.contains(row) else { return }
        let url = rows[row].url
        close()
        onOpen?(url)
    }

    @objc private func openClickedRow() {
        open(row: table.clickedRow)
    }

    func control(_ control: NSControl, textView: NSTextView, doCommandBy selector: Selector) -> Bool {
        switch selector {
        case #selector(NSResponder.moveUp(_:)): move(-1)
        case #selector(NSResponder.moveDown(_:)): move(1)
        case #selector(NSResponder.scrollPageUp(_:)), #selector(NSResponder.pageUp(_:)): move(-10)
        case #selector(NSResponder.scrollPageDown(_:)), #selector(NSResponder.pageDown(_:)): move(10)
        case #selector(NSResponder.insertNewline(_:)): open(row: table.selectedRow)
        case #selector(NSResponder.cancelOperation(_:)): close()
        default: return false
        }
        return true
    }

    // MARK: Table

    func numberOfRows(in tableView: NSTableView) -> Int {
        rows.count
    }

    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let identifier = NSUserInterfaceItemIdentifier("SearchResult")
        let cell = tableView.makeView(withIdentifier: identifier, owner: self) as? SearchResultCell ?? SearchResultCell(identifier: identifier)
        cell.row = rows[row]
        return cell
    }
}

private final class SearchResultCell: NSTableCellView {
    private let icon = NSImageView()
    private let nameLabel = NSTextField(labelWithString: "")
    private let pathLabel = NSTextField(labelWithString: "")

    var row: SearchEverywhereController.Row? {
        didSet { render() }
    }

    override var backgroundStyle: NSView.BackgroundStyle {
        didSet { render() }
    }

    init(identifier: NSUserInterfaceItemIdentifier) {
        super.init(frame: .zero)
        self.identifier = identifier
        userInterfaceLayoutDirection = .leftToRight
        nameLabel.lineBreakMode = .byTruncatingTail
        pathLabel.lineBreakMode = .byTruncatingHead
        nameLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        pathLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        for view in [icon, nameLabel, pathLabel] {
            view.userInterfaceLayoutDirection = .leftToRight
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
        }
        nameLabel.baseWritingDirection = .leftToRight
        pathLabel.baseWritingDirection = .leftToRight
        NSLayoutConstraint.activate([
            icon.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            icon.centerYAnchor.constraint(equalTo: centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 16),
            nameLabel.leftAnchor.constraint(equalTo: icon.rightAnchor, constant: 8),
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            pathLabel.leftAnchor.constraint(equalTo: nameLabel.rightAnchor, constant: 10),
            pathLabel.rightAnchor.constraint(lessThanOrEqualTo: rightAnchor, constant: -10),
            pathLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    private func render() {
        guard let row else { return }
        let emphasized = backgroundStyle == .emphasized
        let (image, tint) = FileIcons.icon(for: row.url, isDirectory: false)
        icon.image = image
        icon.contentTintColor = emphasized ? .alternateSelectedControlTextColor : tint
        let primary: NSColor = emphasized ? .alternateSelectedControlTextColor : .labelColor
        let secondary: NSColor = emphasized ? .alternateSelectedControlTextColor.withAlphaComponent(0.75) : .secondaryLabelColor
        nameLabel.attributedStringValue = highlighted(row.name, matches: row.nameMatches, size: 13, color: primary)
        pathLabel.attributedStringValue = highlighted(row.directory, matches: row.directoryMatches, size: 12, color: secondary)
    }

    /// Matched characters are drawn bold.
    private func highlighted(_ text: String, matches: [Int], size: CGFloat, color: NSColor) -> NSAttributedString {
        let result = NSMutableAttributedString(string: text, attributes: [.font: NSFont.systemFont(ofSize: size), .foregroundColor: color])
        let length = result.length
        for position in matches where position < length {
            result.addAttribute(.font, value: NSFont.systemFont(ofSize: size, weight: .bold), range: NSRange(location: position, length: 1))
        }
        return result
    }
}
