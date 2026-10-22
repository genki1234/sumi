import AppKit
import SwiftTerm

/// PTY output and path resolution share one serial worker; only delivery touches AppKit.
private final class ProcessBridge: LocalProcessDelegate, @unchecked Sendable {
    weak var session: TerminalSession?
    weak var process: LocalProcess?
    let queue = DispatchQueue(label: "dev.sumi.terminal.output", qos: .userInitiated)
    private let sizeLock = NSLock()
    private var size = winsize(ws_row: 25, ws_col: 80, ws_xpixel: 0, ws_ypixel: 0)
    var windowSize: winsize {
        get { sizeLock.withLock { size } }
        set { sizeLock.withLock { size = newValue } }
    }
    let startDirectory: URL
    private var reportedDirectory: URL?
    private var linkifier = PathLinkifier()
    private var pendingFlush: DispatchWorkItem?

    init(directory: URL) { startDirectory = directory }

    func processTerminated(_ source: LocalProcess, exitCode: Int32?) {
        pendingFlush?.cancel()
        flush()
        DispatchQueue.main.async { [self] in session?.processExited() }
    }

    func dataReceived(slice: ArraySlice<UInt8>) {
        pendingFlush?.cancel()
        let directories = searchDirectories()
        let bytes = linkifier.process(slice, holdTrailingWord: slice.count >= 256) {
            Self.resolve($0, in: directories)
        }
        deliver(bytes)
        if linkifier.hasPendingWord {
            let work = DispatchWorkItem { [weak self] in self?.flush() }
            pendingFlush = work
            queue.asyncAfter(deadline: .now() + 0.03, execute: work)
        }
    }

    func reportDirectory(_ directory: URL) {
        queue.async { self.reportedDirectory = directory }
    }

    private func flush() {
        let directories = searchDirectories()
        deliver(linkifier.flush { Self.resolve($0, in: directories) })
    }

    private func deliver(_ bytes: [UInt8]) {
        guard !bytes.isEmpty else { return }
        DispatchQueue.main.async { [self] in session?.received(bytes[...]) }
    }

    func getWindowSize() -> winsize { windowSize }

    private func searchDirectories() -> [URL] {
        var result: [URL] = []
        let foreground = process.map { tcgetpgrp($0.childfd) } ?? -1
        for url in [Self.directory(of: foreground), reportedDirectory, startDirectory].compactMap({ $0 }) where !result.contains(url) {
            result.append(url)
        }
        return result
    }

    static func directory(of pid: pid_t) -> URL? {
        guard pid > 0 else { return nil }
        var info = proc_vnodepathinfo()
        let size = Int32(MemoryLayout<proc_vnodepathinfo>.size)
        guard proc_pidinfo(pid, PROC_PIDVNODEPATHINFO, 0, &info, size) == size else { return nil }
        let path = withUnsafeBytes(of: info.pvi_cdir.vip_path) { String(decoding: $0.prefix { $0 != 0 }, as: UTF8.self) }
        return path.isEmpty ? nil : URL(fileURLWithPath: path, isDirectory: true)
    }

    private static func resolve(_ path: String, in directories: [URL]) -> URL? {
        let expanded = (path as NSString).expandingTildeInPath
        let candidates = expanded.hasPrefix("/") ? [URL(fileURLWithPath: expanded)] : directories.map { $0.appendingPathComponent(expanded) }
        for url in candidates where FileManager.default.fileExists(atPath: url.path) { return url.standardizedFileURL }
        return nil
    }
}

/// One shell session in the console. The shell is the user's login shell, started in the given folder.
/// Output passes through `PathLinkifier` so file paths show as links that open in the editor.
@MainActor
final class TerminalSession: NSObject, TerminalViewDelegate {
    let terminal = FocusingTerminalView(frame: NSRect(x: 0, y: 0, width: 600, height: 240))
    private let process: LocalProcess
    private let bridge: ProcessBridge
    private let startDirectory: URL
    private let shell: String
    private var terminationTask: Task<Void, Never>?
    private(set) var isClosing = false
    private(set) var title: String
    private var hasShellTitle = false
    var number = 1
    var onTitleChange: (() -> Void)?
    var onExit: (() -> Void)?
    /// A path in the output was clicked. The URL fragment carries `line` or `line:column` when the output had one.
    var onOpenLink: ((URL) -> Void)?

    init(title: String, directory: URL) {
        self.title = title
        startDirectory = directory
        let bridge = ProcessBridge(directory: directory)
        self.bridge = bridge
        shell = Self.loginShell()
        process = LocalProcess(delegate: bridge, dispatchQueue: bridge.queue)
        super.init()
        bridge.session = self
        bridge.process = process
        terminal.terminalDelegate = self
        terminal.optionAsMetaKey = true
        terminal.userInterfaceLayoutDirection = .leftToRight
        terminal.linkHighlightMode = .always
        terminal.setAccessibilityLabel(L("Terminal"))
        applyAppearance()
        let dimensions = terminal.terminalDimensions
        bridge.windowSize = winsize(ws_row: UInt16(dimensions.rows), ws_col: UInt16(dimensions.cols), ws_xpixel: 0, ws_ypixel: 0)
        process.startProcess(
            executable: shell,
            args: [],
            environment: Self.environment(),
            execName: "-" + (shell as NSString).lastPathComponent, // leading "-" = login shell
            currentDirectory: directory.path
        )
    }

    func applyAppearance() {
        let appearance = terminal.effectiveAppearance
        terminal.font = NSFont.monospacedSystemFont(ofSize: Preferences.fontSize, weight: .regular)
        terminal.nativeBackgroundColor = Theme.resolved(Theme.editorBackground, for: appearance)
        terminal.nativeForegroundColor = Theme.resolved(Theme.text, for: appearance)
        terminal.caretColor = Theme.resolved(Theme.caret, for: appearance)
        terminal.selectedTextBackgroundColor = Theme.resolved(Theme.selection, for: appearance)
        terminal.linkColor = Theme.resolved(Theme.link, for: appearance)
    }

    var currentDirectory: URL {
        ProcessBridge.directory(of: tcgetpgrp(process.childfd))
            ?? ProcessBridge.directory(of: process.shellPid) ?? startDirectory
    }

    var runningJobs: [String] {
        guard process.running, !isClosing else { return [] }
        guard let children = TerminalProcess.descendants(of: process.shellPid),
              let root = TerminalProcess(process.shellPid), tcgetpgrp(process.childfd) > 0 else { return [title] }
        var names = children.map(\.name)
        // `exec command` replaces the login shell without adding a child PID.
        if root.name != (shell as NSString).lastPathComponent { names.append(root.name) }
        return Array(Set(names)).sorted().map { title + ": " + $0 }
    }

    @discardableResult
    func terminate() -> Task<Void, Never> {
        if let terminationTask { return terminationTask }
        isClosing = true
        let root = TerminalProcess(process.shellPid)
        let children = TerminalProcess.descendants(of: process.shellPid) ?? []
        children.reversed().forEach { $0.signal(SIGHUP) }
        process.terminate()
        // Retain process identities after the shell exits so orphaned background jobs
        // are also stopped. Escalation is limited to the identities approved for close.
        let task = Task { [self] in
            try? await Task.sleep(for: .milliseconds(600))
            children.reversed().forEach { $0.signal(SIGTERM) }
            root?.signal(SIGTERM)
            try? await Task.sleep(for: .milliseconds(600))
            children.reversed().forEach { $0.signal(SIGKILL) }
            root?.signal(SIGKILL)
            _ = process
        }
        terminationTask = task
        return task
    }

    // MARK: Output

    fileprivate func received(_ slice: ArraySlice<UInt8>) {
        // SwiftTerm preserves its user-scrolling state while feeding output, so
        // historical output stays put and the live viewport follows the bottom.
        terminal.feed(byteArray: slice)
    }

    fileprivate func processExited() { onExit?() }

    private static func loginShell() -> String {
        if let shell = ProcessInfo.processInfo.environment["SHELL"], !shell.isEmpty { return shell }
        if let entry = getpwuid(getuid()), let shell = entry.pointee.pw_shell { return String(cString: shell) }
        return "/bin/zsh"
    }

    private static func environment() -> [String] {
        var env = ProcessInfo.processInfo.environment
        env["TERM"] = "xterm-256color"
        env["COLORTERM"] = "truecolor"
        env["TERM_PROGRAM"] = "Sumi"
        if env["LANG"] == nil {
            let language = Locale.current.language.languageCode?.identifier ?? "en"
            let region = Locale.current.region?.identifier ?? "US"
            env["LANG"] = "\(language)_\(region).UTF-8"
        }
        return env.map { "\($0.key)=\($0.value)" }
    }

    // MARK: TerminalViewDelegate

    func sizeChanged(source: TerminalView, newCols: Int, newRows: Int) {
        var size = winsize(ws_row: UInt16(newRows), ws_col: UInt16(newCols), ws_xpixel: 0, ws_ypixel: 0)
        bridge.windowSize = size
        _ = process.updateWindowSize(&size)
    }

    func setTerminalTitle(source: TerminalView, title: String) {
        guard !title.isEmpty else { return }
        self.title = title
        hasShellTitle = true
        onTitleChange?()
    }

    func hostCurrentDirectoryUpdate(source: TerminalView, directory: String?) {
        guard let directory, let url = URL(string: directory), url.isFileURL else { return }
        bridge.reportDirectory(url)
    }

    func send(source: TerminalView, data: ArraySlice<UInt8>) {
        process.send(data: data)
    }

    func scrolled(source: TerminalView, position: Double) {}

    func requestOpenLink(source: TerminalView, link: String, params: [String: String]) {
        guard let url = URL(string: link) else { return }
        if url.isFileURL {
            onOpenLink?(url)
        } else {
            NSWorkspace.shared.open(url)
        }
    }

    func clipboardCopy(source: TerminalView, content: Data) {
        guard let text = String(data: content, encoding: .utf8) else { return }
        NSPasteboard.general.clearContents()
        NSPasteboard.general.setString(text, forType: .string)
    }

    func rangeChanged(source: TerminalView, startY: Int, endY: Int) {}

    func applyLocalization() {
        terminal.setAccessibilityLabel(L("Terminal"))
        if !hasShellTitle { title = number == 1 ? L("Local") : L("Local (%ld)", number) }
    }
}

/// Console panel: terminal tabs.
/// It sits at the bottom by default and can be swapped with the Project view to the left side.
final class ConsoleViewController: NSViewController {
    let directory: URL
    private var sessions: [TerminalSession] = []
    private var selectedIndex = -1
    private var sessionCounter = 0
    private let tabStrip = NSStackView()
    private let container = NSView()
    private let titleLabel = NSTextField(labelWithString: "")
    private var closingTasks: [Task<Void, Never>] = []
    private var closeConfirmationPending = false
    private let searchField = NSSearchField()
    private let searchBar = NSStackView()
    private var searchButtons: [NSButton] = []
    private var headerButtons: [NSButton] = []
    /// The last session ended (e.g. `exit`); the window hides the console.
    var onAllSessionsClosed: (() -> Void)?
    var onSwap: (() -> Void)?
    var onToggleMaximize: (() -> Void)?
    var onHide: (() -> Void)?
    var onOpenLink: ((URL) -> Void)?

    init(directory: URL) {
        self.directory = directory
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    override func loadView() {
        let root = AppearanceObservingView()
        root.onAppearanceChange = { [weak self] in self?.sessions.forEach { $0.applyAppearance() } }

        let title = titleLabel
        title.stringValue = L("Terminal")
        title.font = .systemFont(ofSize: 12, weight: .semibold)
        title.textColor = .secondaryLabelColor
        tabStrip.orientation = .horizontal
        tabStrip.spacing = 2
        let add = Self.iconButton("plus", L("New Terminal Tab"), target: self, action: #selector(newTabClicked))
        let swap = Self.iconButton("rectangle.2.swap", L("Swap Terminal and Project"), target: self, action: #selector(swapClicked))
        let maximize = Self.iconButton("arrow.up.left.and.arrow.down.right", L("Maximize Terminal"), target: self, action: #selector(maximizeClicked))
        let hide = Self.iconButton("minus", L("Hide Terminal"), target: self, action: #selector(hideClicked))
        headerButtons = [add, swap, maximize, hide]
        let spacer = NSView()
        spacer.setContentHuggingPriority(.init(1), for: .horizontal)
        let header = NSStackView(views: [title, tabStrip, add, spacer, swap, maximize, hide])
        header.orientation = .horizontal
        header.spacing = 8
        header.edgeInsets = NSEdgeInsets(top: 0, left: 12, bottom: 0, right: 8)

        searchField.placeholderString = L("Find…")
        searchField.sendsSearchStringImmediately = true
        searchField.target = self
        searchField.action = #selector(searchChanged)
        searchField.delegate = self
        let previous = Self.iconButton("chevron.up", L("Find Previous"), target: self, action: #selector(findPrevious))
        let next = Self.iconButton("chevron.down", L("Find Next"), target: self, action: #selector(findNext))
        let closeSearch = Self.iconButton("xmark", L("Close"), target: self, action: #selector(hideSearch))
        searchButtons = [previous, next, closeSearch]
        searchBar.orientation = .horizontal
        searchBar.spacing = 6
        searchBar.edgeInsets = NSEdgeInsets(top: 4, left: 8, bottom: 4, right: 8)
        [searchField, previous, next, closeSearch].forEach { searchBar.addArrangedSubview($0) }
        searchBar.isHidden = true
        let body = NSStackView(views: [searchBar, container])
        body.orientation = .vertical
        body.alignment = .width
        body.spacing = 0

        let separator = NSBox()
        separator.boxType = .separator
        for view in [header, separator, body] {
            view.translatesAutoresizingMaskIntoConstraints = false
            root.addSubview(view)
        }
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: root.safeAreaLayoutGuide.topAnchor),
            header.leadingAnchor.constraint(equalTo: root.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: root.trailingAnchor),
            header.heightAnchor.constraint(equalToConstant: 30),
            separator.topAnchor.constraint(equalTo: header.bottomAnchor),
            separator.leadingAnchor.constraint(equalTo: root.leadingAnchor),
            separator.trailingAnchor.constraint(equalTo: root.trailingAnchor),
            body.topAnchor.constraint(equalTo: separator.bottomAnchor),
            body.leadingAnchor.constraint(equalTo: root.leadingAnchor, constant: 6),
            body.trailingAnchor.constraint(equalTo: root.trailingAnchor),
            body.bottomAnchor.constraint(equalTo: root.bottomAnchor),
            searchField.widthAnchor.constraint(greaterThanOrEqualToConstant: 80),
        ])
        view = root
        applyLocalization()
    }

    private static func iconButton(_ symbol: String, _ tip: String, target: AnyObject, action: Selector) -> NSButton {
        let button = NSButton(image: NSImage(systemSymbolName: symbol, accessibilityDescription: tip) ?? NSImage(), target: target, action: action)
        button.isBordered = false
        button.contentTintColor = .secondaryLabelColor
        button.toolTip = tip
        return button
    }

    var hasSessions: Bool { !sessions.isEmpty }

    var currentSession: TerminalSession? {
        sessions.indices.contains(selectedIndex) ? sessions[selectedIndex] : nil
    }

    /// True when keyboard focus is inside the console (⌘W / tab switching then act on terminal tabs).
    var isFocused: Bool {
        guard let responder = view.window?.firstResponder as? NSView else { return false }
        return responder.isDescendant(of: view)
    }

    func ensureSession() {
        if sessions.isEmpty { newSession(in: directory) }
    }

    func newSession(in directory: URL) {
        _ = view
        sessionCounter += 1
        let title = sessionCounter == 1 ? L("Local") : L("Local (%ld)", sessionCounter)
        let session = TerminalSession(title: title, directory: directory)
        session.number = sessionCounter
        session.terminal.onFindAction = { [weak self] action in self?.performFindAction(action) }
        session.onTitleChange = { [weak self] in self?.rebuildTabs() }
        session.onOpenLink = { [weak self] url in self?.onOpenLink?(url) }
        session.onExit = { [weak self, weak session] in
            guard let self, let session else { return }
            self.remove(session)
        }
        sessions.append(session)
        select(sessions.count - 1)
    }

    func select(_ index: Int) {
        guard sessions.indices.contains(index) else { return }
        currentSession?.terminal.removeFromSuperview()
        selectedIndex = index
        let terminal = sessions[index].terminal
        terminal.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(terminal)
        NSLayoutConstraint.activate([
            terminal.topAnchor.constraint(equalTo: container.topAnchor, constant: 4),
            terminal.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            terminal.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            terminal.trailingAnchor.constraint(equalTo: container.trailingAnchor),
        ])
        rebuildTabs()
        if !searchBar.isHidden { searchChanged() }
        focus()
    }

    func selectNext() {
        guard !sessions.isEmpty else { return }
        select((selectedIndex + 1) % sessions.count)
    }

    func selectPrevious() {
        guard !sessions.isEmpty else { return }
        select((selectedIndex - 1 + sessions.count) % sessions.count)
    }

    func focus() {
        guard let terminal = currentSession?.terminal else { return }
        view.window?.makeFirstResponder(terminal)
    }

    var runningJobs: [String] { sessions.flatMap(\.runningJobs) }
    var hasPendingCloseConfirmation: Bool { closeConfirmationPending }

    func closeCurrentSession() {
        guard let session = currentSession else { return }
        requestClose(session)
    }

    private func requestClose(_ session: TerminalSession) {
        guard !session.isClosing, !closeConfirmationPending else { return }
        guard let alert = TerminalCloseConfirmation.alert(jobs: session.runningJobs), let window = view.window else {
            closingTasks.append(session.terminate())
            return
        }
        closeConfirmationPending = true
        alert.beginSheetModal(for: window) { [weak self, weak session] response in
            guard let self else { return }
            self.closeConfirmationPending = false
            if response == .alertSecondButtonReturn, let session { self.closingTasks.append(session.terminate()) }
        }
    }

    func terminateAll() { closingTasks.append(contentsOf: sessions.map { $0.terminate() }) }

    func terminateAllAndWait() async {
        let tasks = closingTasks + sessions.map { $0.terminate() }
        for task in tasks { await task.value }
    }

    func applyGPUSetting() { sessions.forEach { $0.terminal.applyGPUSetting() } }

    func performFindAction(_ action: NSTextFinder.Action) {
        switch action {
        case .showFindInterface:
            searchBar.isHidden = false
            view.window?.makeFirstResponder(searchField)
        case .nextMatch: findNext()
        case .previousMatch: findPrevious()
        case .hideFindInterface: hideSearch()
        case .setSearchString:
            if let selected = currentSession?.terminal.getSelection() { searchField.stringValue = selected }
            searchChanged()
        default: break
        }
    }

    @objc private func searchChanged() {
        currentSession?.terminal.clearSearch()
        if !searchField.stringValue.isEmpty { findNext() }
    }
    @objc private func findNext() { currentSession?.terminal.findNext(searchField.stringValue) }
    @objc private func findPrevious() { currentSession?.terminal.findPrevious(searchField.stringValue) }
    @objc private func hideSearch() {
        searchBar.isHidden = true
        currentSession?.terminal.clearSearch()
        focus()
    }

    func applyFontSize() {
        sessions.forEach { $0.applyAppearance() }
    }

    func applyLocalization() {
        guard isViewLoaded else { return }
        titleLabel.stringValue = L("Terminal")
        searchField.placeholderString = L("Find…")
        searchField.userInterfaceLayoutDirection = AppLocalization.isRightToLeft ? .rightToLeft : .leftToRight
        for (button, tip) in zip(searchButtons, [L("Find Previous"), L("Find Next"), L("Close")]) {
            button.toolTip = tip
            button.setAccessibilityLabel(tip)
        }
        titleLabel.userInterfaceLayoutDirection = AppLocalization.isRightToLeft ? .rightToLeft : .leftToRight
        let tips = [L("New Terminal Tab"), L("Swap Terminal and Project"), L("Maximize Terminal"), L("Hide Terminal")]
        for (button, tip) in zip(headerButtons, tips) {
            button.toolTip = tip
            button.setAccessibilityLabel(tip)
        }
        sessions.forEach { $0.applyLocalization() }
        rebuildTabs()
    }

    private func remove(_ session: TerminalSession) {
        guard let index = sessions.firstIndex(where: { $0 === session }) else { return }
        let wasSelected = index == selectedIndex
        session.terminal.removeFromSuperview()
        sessions.remove(at: index)
        if sessions.isEmpty {
            selectedIndex = -1
            rebuildTabs()
            onAllSessionsClosed?()
        } else if wasSelected {
            selectedIndex = -1
            select(min(index, sessions.count - 1))
        } else {
            if index < selectedIndex { selectedIndex -= 1 }
            rebuildTabs()
        }
    }

    private func rebuildTabs() {
        tabStrip.arrangedSubviews.forEach { $0.removeFromSuperview() }
        for (index, session) in sessions.enumerated() {
            let tab = ConsoleTabButton(title: session.title, selected: index == selectedIndex)
            tab.onSelect = { [weak self] in self?.select(index) }
            tab.onClose = { [weak self, weak session] in
                guard let self, let session else { return }
                self.requestClose(session)
            }
            tabStrip.addArrangedSubview(tab)
        }
    }

    @objc private func newTabClicked() { newSession(in: currentSession?.currentDirectory ?? directory) }
    @objc private func swapClicked() { onSwap?() }
    @objc private func maximizeClicked() { onToggleMaximize?() }
    @objc private func hideClicked() { onHide?() }
}

/// Re-applies terminal colors when the system switches between light and dark.
private final class AppearanceObservingView: NSView {
    var onAppearanceChange: (() -> Void)?

    override func viewDidChangeEffectiveAppearance() {
        super.viewDidChangeEffectiveAppearance()
        onAppearanceChange?()
    }
}

private final class ConsoleTabButton: NSView {
    var onSelect: (() -> Void)?
    var onClose: (() -> Void)?
    private let isSelected: Bool

    init(title: String, selected: Bool) {
        isSelected = selected
        super.init(frame: .zero)
        let label = NSTextField(labelWithString: title)
        label.font = .systemFont(ofSize: 12)
        label.textColor = selected ? .labelColor : .secondaryLabelColor
        label.lineBreakMode = .byTruncatingMiddle
        label.widthAnchor.constraint(lessThanOrEqualToConstant: 200).isActive = true
        let close = NSButton(image: NSImage(systemSymbolName: "xmark", accessibilityDescription: L("Close Tab"))?
            .withSymbolConfiguration(.init(pointSize: 8, weight: .semibold)) ?? NSImage(), target: nil, action: nil)
        close.isBordered = false
        close.contentTintColor = .tertiaryLabelColor
        close.target = self
        close.action = #selector(closeClicked)
        let row = NSStackView(views: [label, close])
        row.spacing = 4
        row.edgeInsets = NSEdgeInsets(top: 3, left: 8, bottom: 3, right: 6)
        row.translatesAutoresizingMaskIntoConstraints = false
        addSubview(row)
        NSLayoutConstraint.activate([
            row.leadingAnchor.constraint(equalTo: leadingAnchor),
            row.trailingAnchor.constraint(equalTo: trailingAnchor),
            row.topAnchor.constraint(equalTo: topAnchor),
            row.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        wantsLayer = true
        layer?.cornerRadius = 5
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    override func updateLayer() {
        layer?.backgroundColor = isSelected ? Theme.tabHover.cgColor : NSColor.clear.cgColor
    }

    override var wantsUpdateLayer: Bool { true }

    override func mouseDown(with event: NSEvent) { onSelect?() }
    @objc private func closeClicked() { onClose?() }
}

/// Native input, paste and focus stay on the terminal view; search UI belongs to Sumi.
final class FocusingTerminalView: TerminalView {
    var onFindAction: ((NSTextFinder.Action) -> Void)?
    private var keyMonitor: Any?

    override func mouseDown(with event: NSEvent) {
        if window?.firstResponder !== self { window?.makeFirstResponder(self) }
        super.mouseDown(with: event)
    }

    override func viewDidMoveToWindow() {
        super.viewDidMoveToWindow()
        if let keyMonitor { NSEvent.removeMonitor(keyMonitor); self.keyMonitor = nil }
        if window != nil {
            applyGPUSetting()
            keyMonitor = NSEvent.addLocalMonitorForEvents(matching: .keyDown) { [weak self] event in
                guard let self, event.window === self.window, self.window?.firstResponder === self else { return event }
                // Legacy Enter encoding drops Shift. Negotiated modes retain the
                // library encoder, including the input method's marked text.
                if (event.keyCode == 36 || event.keyCode == 76),
                   event.modifierFlags.intersection([.shift, .control, .option, .command]) == .shift,
                   !self.hasMarkedText(), self.keyboardEnhancementFlags.isEmpty {
                    self.send(data: Array("\u{1B}[13;2u".utf8)[...])
                    return nil
                }
                return event
            }
        }
    }

    func applyGPUSetting() {
        guard window != nil else { return }
        do { try setUseMetal(Preferences.terminalGPU) }
        catch {
            // Metal is optional; a missing device or shader must not prevent shell use.
            try? setUseMetal(false)
            NSLog("Terminal GPU initialization failed: %@", error.localizedDescription)
        }
    }

    override func performTextFinderAction(_ sender: Any?) {
        guard let item = sender as? NSMenuItem, let action = NSTextFinder.Action(rawValue: item.tag) else { return }
        onFindAction?(action)
    }

    override func paste(_ sender: Any) {
        let board = NSPasteboard.general
        // File URLs take precedence over their text representation; quote each path
        // independently so spaces and apostrophes survive shell and prompt parsing.
        if let urls = board.readObjects(forClasses: [NSURL.self], options: [.urlReadingFileURLsOnly: true]) as? [URL], !urls.isEmpty {
            pasteText(urls.map { Self.quote($0.path) }.joined(separator: " "))
            return
        }
        guard let imageData = board.data(forType: .png) ?? board.data(forType: .tiff),
              let bitmap = NSBitmapImageRep(data: imageData),
              let png = bitmap.representation(using: .png, properties: [:]) else { super.paste(sender); return }
        do {
            let directory = FileManager.default.temporaryDirectory.appendingPathComponent("Sumi-Pasted-Images", isDirectory: true)
            try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true, attributes: [.posixPermissions: 0o700])
            let url = directory.appendingPathComponent(UUID().uuidString + ".png")
            try png.write(to: url, options: [.atomic])
            try FileManager.default.setAttributes([.posixPermissions: 0o600], ofItemAtPath: url.path)
            // Keep the image after closing the terminal so deferred agent reads still work.
            pasteText(Self.quote(url.path))
        } catch {
            let alert = NSAlert(error: error)
            if let window { alert.beginSheetModal(for: window) }
        }
    }

    private static func quote(_ path: String) -> String {
        "'" + path.replacingOccurrences(of: "'", with: "'\\''") + "'"
    }
}

extension ConsoleViewController: NSSearchFieldDelegate {
    func control(_ control: NSControl, textView: NSTextView, doCommandBy selector: Selector) -> Bool {
        if selector == #selector(NSResponder.cancelOperation(_:)) { hideSearch(); return true }
        if selector == #selector(NSResponder.insertNewline(_:)) {
            if NSApp.currentEvent?.modifierFlags.contains(.shift) == true { findPrevious() } else { findNext() }
            return true
        }
        return false
    }
}
