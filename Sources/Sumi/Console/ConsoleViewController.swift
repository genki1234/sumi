import AppKit
import SwiftTerm

/// Receives the shell's output and exit on the main queue and hands them to the session.
private final class ProcessBridge: LocalProcessDelegate, @unchecked Sendable {
    weak var session: TerminalSession?
    var windowSize = winsize(ws_row: 25, ws_col: 80, ws_xpixel: 0, ws_ypixel: 0)

    func processTerminated(_ source: LocalProcess, exitCode: Int32?) {
        MainActor.assumeIsolated { session?.processExited() }
    }

    func dataReceived(slice: ArraySlice<UInt8>) {
        MainActor.assumeIsolated { session?.received(slice) }
    }

    func getWindowSize() -> winsize { windowSize }
}

/// One shell session in the console. The shell is the user's login shell, started in the given folder.
/// Output passes through `PathLinkifier` so file paths show as links that open in the editor.
@MainActor
final class TerminalSession: NSObject, TerminalViewDelegate {
    let terminal = FocusingTerminalView(frame: NSRect(x: 0, y: 0, width: 600, height: 240))
    private let process: LocalProcess
    private let bridge = ProcessBridge()
    private let startDirectory: URL
    private var linkifier = PathLinkifier()
    private var pendingFlush: DispatchWorkItem?
    /// Folder reported by the shell (OSC 7), if it reports one.
    private var reportedDirectory: URL?
    private(set) var title: String
    var onTitleChange: (() -> Void)?
    var onExit: (() -> Void)?
    /// A path in the output was clicked. The URL fragment carries `line` or `line:column` when the output had one.
    var onOpenLink: ((URL) -> Void)?

    init(title: String, directory: URL) {
        self.title = title
        startDirectory = directory
        process = LocalProcess(delegate: bridge, dispatchQueue: .main)
        super.init()
        bridge.session = self
        terminal.terminalDelegate = self
        terminal.optionAsMetaKey = true
        terminal.userInterfaceLayoutDirection = .leftToRight
        terminal.linkHighlightMode = .always
        applyAppearance()
        let dimensions = terminal.terminalDimensions
        bridge.windowSize = winsize(ws_row: UInt16(dimensions.rows), ws_col: UInt16(dimensions.cols), ws_xpixel: 0, ws_ypixel: 0)
        let shell = Self.loginShell()
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

    func terminate() {
        pendingFlush?.cancel()
        process.terminate()
    }

    // MARK: Output

    fileprivate func received(_ slice: ArraySlice<UInt8>) {
        pendingFlush?.cancel()
        pendingFlush = nil
        let directories = searchDirectories()
        // A large read that ends inside a word was probably cut in the middle of a longer write;
        // hold the word for the next read. Small reads (typing echo) are never delayed.
        let bytes = linkifier.process(slice, holdTrailingWord: slice.count >= 256) { Self.resolve($0, in: directories) }
        terminal.feed(byteArray: bytes[...])
        if linkifier.hasPendingWord {
            let work = DispatchWorkItem { [weak self] in
                guard let self else { return }
                let directories = self.searchDirectories()
                let rest = self.linkifier.flush { Self.resolve($0, in: directories) }
                self.terminal.feed(byteArray: rest[...])
            }
            pendingFlush = work
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.03, execute: work)
        }
    }

    fileprivate func processExited() {
        onExit?()
    }

    /// Relative paths are resolved against the folder of the program in the foreground
    /// (e.g. the agent, which prints paths relative to where it was started), then the shell's folder,
    /// then the folder the session started in.
    private func searchDirectories() -> [URL] {
        var result: [URL] = []
        for url in [foregroundDirectory(), reportedDirectory, startDirectory].compactMap({ $0 }) where !result.contains(url) {
            result.append(url)
        }
        return result
    }

    private func foregroundDirectory() -> URL? {
        let group = tcgetpgrp(process.childfd)
        guard group > 0 else { return nil }
        var info = proc_vnodepathinfo()
        let size = Int32(MemoryLayout<proc_vnodepathinfo>.size)
        guard proc_pidinfo(group, PROC_PIDVNODEPATHINFO, 0, &info, size) == size else { return nil }
        let path = withUnsafeBytes(of: info.pvi_cdir.vip_path) { raw in
            String(decoding: raw.prefix { $0 != 0 }, as: UTF8.self)
        }
        return path.isEmpty ? nil : URL(fileURLWithPath: path, isDirectory: true)
    }

    private static func resolve(_ path: String, in directories: [URL]) -> URL? {
        let expanded = (path as NSString).expandingTildeInPath
        let candidates = expanded.hasPrefix("/")
            ? [URL(fileURLWithPath: expanded)]
            : directories.map { $0.appendingPathComponent(expanded) }
        for url in candidates where FileManager.default.fileExists(atPath: url.path) {
            return url.standardizedFileURL
        }
        return nil
    }

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
        onTitleChange?()
    }

    func hostCurrentDirectoryUpdate(source: TerminalView, directory: String?) {
        guard let directory, let url = URL(string: directory), url.isFileURL else { return }
        reportedDirectory = url
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

        let title = NSTextField(labelWithString: L("Terminal"))
        title.font = .systemFont(ofSize: 12, weight: .semibold)
        title.textColor = .secondaryLabelColor
        tabStrip.orientation = .horizontal
        tabStrip.spacing = 2
        let add = Self.iconButton("plus", L("New Terminal Tab"), target: self, action: #selector(newTabClicked))
        let swap = Self.iconButton("rectangle.2.swap", L("Swap Terminal and Project"), target: self, action: #selector(swapClicked))
        let maximize = Self.iconButton("arrow.up.left.and.arrow.down.right", L("Maximize Terminal"), target: self, action: #selector(maximizeClicked))
        let hide = Self.iconButton("minus", L("Hide Terminal"), target: self, action: #selector(hideClicked))
        let spacer = NSView()
        spacer.setContentHuggingPriority(.init(1), for: .horizontal)
        let header = NSStackView(views: [title, tabStrip, add, spacer, swap, maximize, hide])
        header.orientation = .horizontal
        header.spacing = 8
        header.edgeInsets = NSEdgeInsets(top: 0, left: 12, bottom: 0, right: 8)

        let separator = NSBox()
        separator.boxType = .separator
        for view in [header, separator, container] {
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
            container.topAnchor.constraint(equalTo: separator.bottomAnchor),
            container.leadingAnchor.constraint(equalTo: root.leadingAnchor, constant: 6),
            container.trailingAnchor.constraint(equalTo: root.trailingAnchor),
            container.bottomAnchor.constraint(equalTo: root.bottomAnchor),
        ])
        view = root
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

    func closeCurrentSession() {
        guard let session = currentSession else { return }
        session.terminate()
        remove(session)
    }

    func terminateAll() {
        sessions.forEach { $0.terminate() }
    }

    func applyFontSize() {
        sessions.forEach { $0.applyAppearance() }
    }

    private func remove(_ session: TerminalSession) {
        guard let index = sessions.firstIndex(where: { $0 === session }) else { return }
        session.terminal.removeFromSuperview()
        sessions.remove(at: index)
        if sessions.isEmpty {
            selectedIndex = -1
            rebuildTabs()
            onAllSessionsClosed?()
        } else {
            selectedIndex = -1
            select(min(index, sessions.count - 1))
        }
    }

    private func rebuildTabs() {
        tabStrip.arrangedSubviews.forEach { $0.removeFromSuperview() }
        for (index, session) in sessions.enumerated() {
            let tab = ConsoleTabButton(title: session.title, selected: index == selectedIndex)
            tab.onSelect = { [weak self] in self?.select(index) }
            tab.onClose = { [weak self, weak session] in
                guard let self, let session else { return }
                session.terminate()
                self.remove(session)
            }
            tabStrip.addArrangedSubview(tab)
        }
    }

    @objc private func newTabClicked() { newSession(in: directory) }
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

/// SwiftTerm's view does not take keyboard focus when clicked, so typing after a click would still go to the editor.
final class FocusingTerminalView: TerminalView {
    override func mouseDown(with event: NSEvent) {
        if window?.firstResponder !== self { window?.makeFirstResponder(self) }
        super.mouseDown(with: event)
    }
}
