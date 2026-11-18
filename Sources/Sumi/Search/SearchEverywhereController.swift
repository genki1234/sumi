import AppKit

private final class SearchPanel: NSPanel {
    override var canBecomeKey: Bool { true }
    override var canBecomeMain: Bool { false }
}

/// The Search Everywhere popup with three tabs, switched with ⇥ / ⇧⇥ or a click:
/// - Files (Double Shift, ⇧⌘O, ⌘E): fuzzy file names, or paths when the query contains "/";
///   recent files when the query is empty.
/// - Actions (⇧⌘A): every enabled menu command, run with ⏎.
/// - Text (⇧⌘F): the text in every project file; ⏎ opens the file at the match.
@MainActor
final class SearchEverywhereController: NSObject, NSWindowDelegate, NSTextFieldDelegate, NSTableViewDataSource, NSTableViewDelegate {
    enum Mode: Int, CaseIterable {
        case files, actions, text
    }

    /// One occurrence of the query in a file. Line and column are 1-based (UTF-16 columns, as the editor counts).
    struct TextMatch: Sendable {
        let url: URL
        let relativePath: String
        let line: Int
        let column: Int
        let length: Int
        let preview: String
        let previewMatch: NSRange
    }

    fileprivate enum Row {
        case file(url: URL, name: String, directory: String, nameMatches: [Int], directoryMatches: [Int])
        case action(item: NSMenuItem, target: AnyObject?, title: String, path: String, shortcut: String, matches: [Int])
        case text(TextMatch)
    }

    var onOpen: ((URL) -> Void)?
    var onOpenMatch: ((TextMatch) -> Void)?
    var recentFiles: (() -> [URL])?
    private let index: FileIndex
    private let rootURL: URL
    private let panel: SearchPanel
    private let field = NSTextField()
    private let table = NSTableView()
    private let footer = NSTextField(labelWithString: "")
    private var tabButtons: [NSButton] = []
    private let underline = NSView()
    private var underlineConstraints: [NSLayoutConstraint] = []
    private let hint = NSTextField(labelWithString: "")
    private var localizedViews: [NSView] = []
    private var rows: [Row] = []
    private var mode = Mode.files
    private weak var parentWindow: NSWindow?
    private var isClosing = false
    private var actions: [(item: NSMenuItem, target: AnyObject?, title: [UInt16], path: String, shortcut: String)] = []
    private var textSearch: Task<Void, Never>?
    private var textQuery = ""
    private var textResult: (matches: [TextMatch], total: Int, files: Int)?

    init(index: FileIndex, rootURL: URL) {
        self.index = index
        self.rootURL = rootURL
        panel = SearchPanel(
            contentRect: NSRect(x: 0, y: 0, width: 760, height: 460),
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

        for tab in Mode.allCases {
            let button = NSButton(title: "", target: self, action: #selector(tabClicked(_:)))
            button.isBordered = false
            button.tag = tab.rawValue
            button.setButtonType(.momentaryChange)
            tabButtons.append(button)
        }
        let tabs = NSStackView(views: tabButtons)
        tabs.spacing = 18
        underline.wantsLayer = true
        underline.layer?.backgroundColor = NSColor.controlAccentColor.cgColor
        hint.font = .systemFont(ofSize: 11)
        hint.textColor = .tertiaryLabelColor

        let magnifier = NSImageView(image: NSImage(systemSymbolName: "magnifyingglass", accessibilityDescription: nil) ?? NSImage())
        magnifier.contentTintColor = .secondaryLabelColor
        magnifier.symbolConfiguration = .init(pointSize: 15, weight: .regular)
        field.isBordered = false
        field.drawsBackground = false
        field.focusRingType = .none
        field.font = .systemFont(ofSize: 16)
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

        for view in [tabs, underline, hint, magnifier, field, separator, scroll, footer] {
            view.translatesAutoresizingMaskIntoConstraints = false
            background.addSubview(view)
        }
        localizedViews = [background, tabs, underline, hint, magnifier, field, separator, scroll, scroll.contentView, table, footer]
        NSLayoutConstraint.activate([
            tabs.topAnchor.constraint(equalTo: background.topAnchor, constant: 8),
            tabs.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 18),
            underline.topAnchor.constraint(equalTo: tabs.bottomAnchor, constant: 3),
            underline.heightAnchor.constraint(equalToConstant: 2),
            hint.centerYAnchor.constraint(equalTo: tabs.centerYAnchor),
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
        hint.stringValue = L("Double ⇧ to search everywhere")
        updateTabs()
        refresh()
    }

    private func title(of tab: Mode) -> String {
        switch tab {
        case .files: L("Files")
        case .actions: L("Actions")
        case .text: L("Text")
        }
    }

    private func updateTabs() {
        for (tab, button) in zip(Mode.allCases, tabButtons) {
            let selected = tab == mode
            button.attributedTitle = NSAttributedString(string: title(of: tab), attributes: [
                .font: NSFont.systemFont(ofSize: 12, weight: selected ? .semibold : .regular),
                .foregroundColor: selected ? NSColor.labelColor : NSColor.secondaryLabelColor,
            ])
        }
        NSLayoutConstraint.deactivate(underlineConstraints)
        let selected = tabButtons[mode.rawValue]
        underlineConstraints = [
            underline.leadingAnchor.constraint(equalTo: selected.leadingAnchor, constant: -4),
            underline.trailingAnchor.constraint(equalTo: selected.trailingAnchor, constant: 4),
        ]
        NSLayoutConstraint.activate(underlineConstraints)
        switch mode {
        case .files: field.placeholderString = L("Type a file name (use / to match the path)")
        case .actions: field.placeholderString = L("Type a command name")
        case .text: field.placeholderString = L("Type text to find in project files")
        }
    }

    // MARK: Show / close

    var isVisible: Bool { panel.isVisible }

    /// `query` replaces the text in the field; nil keeps the last query, selected so typing replaces it.
    func show(attachedTo window: NSWindow, mode: Mode, query: String? = nil) {
        parentWindow = window
        if !panel.isVisible {
            let frame = window.frame
            let size = panel.frame.size
            let top = frame.maxY - min(140, frame.height * 0.15)
            panel.setFrameOrigin(NSPoint(x: frame.midX - size.width / 2, y: top - size.height))
        }
        if panel.parent == nil { window.addChildWindow(panel, ordered: .above) }
        if let query { field.stringValue = query }
        self.mode = mode
        collectActions()
        updateTabs()
        panel.makeKeyAndOrderFront(nil)
        panel.makeFirstResponder(field)
        field.currentEditor()?.selectAll(nil)
        refresh()
    }

    func close() {
        guard panel.isVisible, !isClosing else { return }
        isClosing = true
        textSearch?.cancel()
        panel.parent?.removeChildWindow(panel)
        panel.orderOut(nil)
        parentWindow?.makeKeyAndOrderFront(nil)
        isClosing = false
    }

    func windowDidResignKey(_ notification: Notification) {
        close()
    }

    private func switchMode(by delta: Int) {
        let count = Mode.allCases.count
        mode = Mode(rawValue: (mode.rawValue + delta + count) % count) ?? .files
        updateTabs()
        refresh()
    }

    @objc private func tabClicked(_ sender: NSButton) {
        mode = Mode(rawValue: sender.tag) ?? .files
        updateTabs()
        refresh()
        panel.makeFirstResponder(field)
    }

    // MARK: Results

    func controlTextDidChange(_ obj: Notification) {
        refresh()
    }

    private func refresh() {
        let query = field.stringValue.trimmingCharacters(in: .whitespaces)
        switch mode {
        case .files: refreshFiles(query)
        case .actions: refreshActions(query)
        case .text: refreshText(field.stringValue)
        }
        table.reloadData()
        if !rows.isEmpty {
            table.selectRowIndexes([0], byExtendingSelection: false)
            table.scrollRowToVisible(0)
        }
    }

    private func refreshFiles(_ query: String) {
        if query.isEmpty {
            rows = (recentFiles?() ?? []).map { url in
                let relative = relativePath(url)
                return .file(url: url, name: url.lastPathComponent, directory: (relative as NSString).deletingLastPathComponent, nameMatches: [], directoryMatches: [])
            }
            footer.stringValue = rows.isEmpty ? L("No recent files") : L("Recent Files") + "   " + keyHints
        } else {
            let results = index.search(query)
            rows = results.prefix(300).map(makeRow) // Display only: every file is matched, the list shows the top results.
            footer.stringValue = L("Matches: %1$ld / Files: %2$ld", results.count, index.files.count) + "   " + keyHints
        }
    }

    private func refreshActions(_ query: String) {
        let q = query.utf16.filter { $0 != 0x20 }.map(FuzzyMatcher.fold)
        var scored: [(order: Int, score: Int, row: Row)] = []
        for (order, action) in actions.enumerated() {
            var positions: [Int] = []
            var score = 0
            if !q.isEmpty {
                guard let match = FuzzyMatcher.match(q, action.title) else { continue }
                positions = match.positions
                score = match.score
            }
            let title = String(decoding: action.title, as: UTF16.self)
            scored.append((order, score, .action(item: action.item, target: action.target, title: title, path: action.path, shortcut: action.shortcut, matches: positions)))
        }
        scored.sort { $0.score != $1.score ? $0.score > $1.score : $0.order < $1.order }
        rows = scored.map(\.row)
        footer.stringValue = keyHints
    }

    /// The text tab searches on a background task after a short pause in typing; each keystroke cancels the previous search.
    private func refreshText(_ query: String) {
        if query != textQuery {
            textQuery = query
            textResult = nil
            textSearch?.cancel()
            if !query.isEmpty {
                let files = index.files
                textSearch = Task { [weak self] in
                    try? await Task.sleep(for: .milliseconds(150))
                    guard !Task.isCancelled else { return }
                    let result = await Self.findText(query, in: files)
                    guard !Task.isCancelled, let self, let result, self.textQuery == query else { return }
                    self.textResult = result
                    if self.mode == .text { self.refresh() }
                }
            }
        }
        if let textResult {
            rows = textResult.matches.map { .text($0) }
            footer.stringValue = L("Matches: %1$ld / Files: %2$ld", textResult.total, textResult.files) + "   " + keyHints
        } else {
            rows = []
            footer.stringValue = query.isEmpty ? keyHints : L("Searching…")
        }
    }

    /// Case-insensitive search through every indexed file; files with a NUL byte near the start are binary
    /// and skipped. Every match is counted; the list keeps the first 1000 (display only).
    nonisolated static func findText(_ query: String, in files: [IndexedFile]) async -> (matches: [TextMatch], total: Int, files: Int)? {
        var matches: [TextMatch] = []
        var total = 0
        var fileCount = 0
        for file in files {
            if Task.isCancelled { return nil }
            guard let data = try? Data(contentsOf: file.url, options: .mappedIfSafe), !data.prefix(8192).contains(0) else { continue }
            let content = String(decoding: data, as: UTF8.self) as NSString
            var found = content.range(of: query, options: .caseInsensitive)
            guard found.location != NSNotFound else { continue }
            fileCount += 1
            var line = 1
            var scanned = 0
            while found.location != NSNotFound {
                total += 1
                if matches.count < 1000 {
                    while scanned < found.location {
                        if content.character(at: scanned) == 0x0A { line += 1 }
                        scanned += 1
                    }
                    matches.append(textMatch(file, content, found, line: line))
                }
                let next = NSMaxRange(found)
                found = content.range(of: query, options: .caseInsensitive, range: NSRange(location: next, length: content.length - next))
            }
        }
        return (matches, total, fileCount)
    }

    private nonisolated static func textMatch(_ file: IndexedFile, _ content: NSString, _ found: NSRange, line: Int) -> TextMatch {
        var start = 0
        var contentsEnd = 0
        content.getLineStart(&start, end: nil, contentsEnd: &contentsEnd, for: NSRange(location: found.location, length: 0))
        // The preview drops the indentation, and long lines start shortly before the match.
        var from = start
        while from < found.location, [0x20, 0x09].contains(content.character(at: from)) { from += 1 }
        var prefix = ""
        if found.location - from > 60 {
            from = found.location - 40
            prefix = "…"
        }
        let to = min(contentsEnd, max(NSMaxRange(found), from + 300))
        let preview = prefix + content.substring(with: NSRange(location: from, length: to - from))
        let matchStart = (prefix as NSString).length + found.location - from
        return TextMatch(
            url: file.url, relativePath: file.relativePath, line: line, column: found.location - start + 1, length: found.length,
            preview: preview, previewMatch: NSRange(location: matchStart, length: min(found.length, to - found.location))
        )
    }

    /// The enabled commands of the menu bar, validated against the project window as it was before
    /// the popup opened, so they reflect the editor or terminal that has focus there.
    private func collectActions() {
        actions = []
        guard let main = NSApp.mainMenu, let window = parentWindow else { return }
        func walk(_ menu: NSMenu, path: String) {
            for item in menu.items {
                if let submenu = item.submenu {
                    if submenu !== NSApp.servicesMenu { walk(submenu, path: path + " › " + item.title) }
                    continue
                }
                guard !item.isSeparatorItem, let action = item.action, action != #selector(ProjectWindowController.findAction(_:)) else { continue }
                let target = Self.target(of: item, action: action, in: window)
                guard target != nil else { continue }
                if let validator = target as? NSMenuItemValidation, !validator.validateMenuItem(item) { continue }
                actions.append((item, target, Array(item.title.utf16), path, Self.shortcut(of: item)))
            }
        }
        for top in main.items {
            if let submenu = top.submenu { walk(submenu, path: top.title) }
        }
    }

    /// The object a menu item sends its action to: its own target, or the first responder of the
    /// project window and what follows it, then the application and its delegate.
    private static func target(of item: NSMenuItem, action: Selector, in window: NSWindow) -> AnyObject? {
        if let target = item.target { return target.responds(to: action) ? target : nil }
        var responder: NSResponder? = window.firstResponder
        while let current = responder {
            if current.responds(to: action) { return current }
            responder = current.nextResponder
        }
        if let delegate = window.delegate, delegate.responds(to: action) { return delegate }
        if let controller = window.windowController, controller.responds(to: action) { return controller }
        if NSApp.responds(to: action) { return NSApp }
        if let delegate = NSApp.delegate, delegate.responds(to: action) { return delegate }
        return nil
    }

    private static func shortcut(of item: NSMenuItem) -> String {
        guard !item.keyEquivalent.isEmpty else { return "" }
        let flags = item.keyEquivalentModifierMask
        var text = ""
        if flags.contains(.control) { text += "⌃" }
        if flags.contains(.option) { text += "⌥" }
        if flags.contains(.shift) { text += "⇧" }
        if flags.contains(.command) { text += "⌘" }
        let key = item.keyEquivalent
        switch key.unicodeScalars.first.map({ Int($0.value) }) {
        case 0x0D: text += "↩"
        case 0x08: text += "⌫"
        case NSUpArrowFunctionKey: text += "↑"
        case NSDownArrowFunctionKey: text += "↓"
        case NSLeftArrowFunctionKey: text += "←"
        case NSRightArrowFunctionKey: text += "→"
        case let value? where value >= NSF1FunctionKey && value <= NSF35FunctionKey: text += "F\(value - NSF1FunctionKey + 1)"
        default: text += key.uppercased()
        }
        return text
    }

    private var keyHints: String {
        ["↑↓ " + L("Navigate"), "⏎ " + L("Open"), "⇥ " + L("Switch Tab"), "⎋ " + L("Close")].joined(separator: "   ")
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
            return .file(url: result.file.url, name: name, directory: directory, nameMatches: result.positions, directoryMatches: [])
        }
        // Split path positions between the directory part and the file-name part.
        let nameStart = directory.isEmpty ? 0 : (directory as NSString).length + 1
        return .file(
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
        let selected = rows[row]
        close()
        switch selected {
        case .file(let url, _, _, _, _):
            onOpen?(url)
        case .text(let match):
            onOpenMatch?(match)
        case .action(let item, let target, _, _, _, _):
            // After the popup closes, so the command acts on the project window.
            Task { @MainActor in
                guard let action = item.action else { return }
                NSApp.sendAction(action, to: target, from: item)
            }
        }
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
        case #selector(NSResponder.insertTab(_:)): switchMode(by: 1)
        case #selector(NSResponder.insertBacktab(_:)): switchMode(by: -1)
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
    private let shortcutLabel = NSTextField(labelWithString: "")

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
        shortcutLabel.alignment = .right
        shortcutLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
        for view in [icon, nameLabel, pathLabel, shortcutLabel] {
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
            pathLabel.rightAnchor.constraint(lessThanOrEqualTo: shortcutLabel.leftAnchor, constant: -10),
            pathLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            shortcutLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10),
            shortcutLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    private func render() {
        guard let row else { return }
        let emphasized = backgroundStyle == .emphasized
        let primary: NSColor = emphasized ? .alternateSelectedControlTextColor : .labelColor
        let secondary: NSColor = emphasized ? .alternateSelectedControlTextColor.withAlphaComponent(0.75) : .secondaryLabelColor
        var image: NSImage?
        var tint: NSColor = secondary
        // File rows keep the file name whole and shorten the folder; text rows shorten the line instead.
        var nameFirst = true
        switch row {
        case .file(let url, let name, let directory, let nameMatches, let directoryMatches):
            (image, tint) = FileIcons.icon(for: url, isDirectory: false)
            nameLabel.attributedStringValue = highlighted(name, matches: nameMatches, size: 13, color: primary)
            pathLabel.attributedStringValue = highlighted(directory, matches: directoryMatches, size: 12, color: secondary)
            shortcutLabel.stringValue = ""
        case .action(_, _, let title, let path, let shortcut, let matches):
            image = NSImage(systemSymbolName: "command", accessibilityDescription: nil)?
                .withSymbolConfiguration(.init(pointSize: 12, weight: .regular))
            nameLabel.attributedStringValue = highlighted(title, matches: matches, size: 13, color: primary)
            pathLabel.attributedStringValue = highlighted(path, matches: [], size: 12, color: secondary)
            shortcutLabel.attributedStringValue = NSAttributedString(string: shortcut, attributes: [
                .font: NSFont.systemFont(ofSize: 12), .foregroundColor: secondary,
            ])
        case .text(let match):
            (image, tint) = FileIcons.icon(for: match.url, isDirectory: false)
            let preview = NSMutableAttributedString(string: match.preview, attributes: [
                .font: NSFont.monospacedSystemFont(ofSize: 12, weight: .regular), .foregroundColor: primary,
            ])
            if NSMaxRange(match.previewMatch) <= preview.length {
                preview.addAttribute(.font, value: NSFont.monospacedSystemFont(ofSize: 12, weight: .bold), range: match.previewMatch)
            }
            nameLabel.attributedStringValue = preview
            pathLabel.attributedStringValue = highlighted("\(match.relativePath):\(match.line)", matches: [], size: 12, color: secondary)
            shortcutLabel.stringValue = ""
            nameFirst = false
        }
        icon.image = image
        icon.contentTintColor = emphasized ? .alternateSelectedControlTextColor : tint
        nameLabel.setContentCompressionResistancePriority(nameFirst ? .defaultHigh : .defaultLow, for: .horizontal)
        pathLabel.setContentCompressionResistancePriority(nameFirst ? .defaultLow : .defaultHigh, for: .horizontal)
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
