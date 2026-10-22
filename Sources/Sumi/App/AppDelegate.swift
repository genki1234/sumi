import AppKit

@MainActor
final class AppDelegate: NSObject, NSApplicationDelegate, NSMenuItemValidation {
    private var projects: [ProjectWindowController] = []
    private let doubleShift = DoubleShiftDetector()
    private var isTerminating = false
    private var openedFromLaunchURLs = false

    func applicationWillFinishLaunching(_ notification: Notification) {
        NSApp.mainMenu = MainMenu.build()
    }

    func applicationDidFinishLaunching(_ notification: Notification) {
        doubleShift.onDoubleShift = { [weak self] in self?.searchEverywhereInFrontProject() }
        doubleShift.install()

        // `Sumi path…` from a terminal (paths that exist; AppKit's own -Key value arguments are skipped).
        for argument in CommandLine.arguments.dropFirst() where !argument.hasPrefix("-") && FileManager.default.fileExists(atPath: argument) {
            open(URL(fileURLWithPath: argument))
        }
        if projects.isEmpty && !openedFromLaunchURLs {
            for path in Preferences.openProjects where FileManager.default.fileExists(atPath: path) {
                openProject(URL(fileURLWithPath: path), restoreSession: true)
            }
        }
        if projects.isEmpty { openDocument(nil) }
        NSApp.activate()
    }

    func application(_ application: NSApplication, open urls: [URL]) {
        openedFromLaunchURLs = true
        urls.forEach(open)
    }

    func applicationShouldOpenUntitledFile(_ sender: NSApplication) -> Bool { false }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool { false }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool { true }

    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        if !flag { openDocument(nil) }
        return true
    }

    func applicationDidBecomeActive(_ notification: Notification) {
        projects.forEach { $0.editorArea.checkExternalChanges() }
    }

    func applicationShouldTerminate(_ sender: NSApplication) -> NSApplication.TerminateReply {
        guard !isTerminating, !projects.contains(where: { $0.hasPendingCloseConfirmation || $0.window?.attachedSheet != nil }) else {
            return .terminateCancel
        }
        for project in projects where !project.saveBeforeClosing() { return .terminateCancel }
        let jobs = projects.flatMap { project in project.console.runningJobs.map { project.rootURL.lastPathComponent + " — " + $0 } }
        if let alert = TerminalCloseConfirmation.alert(jobs: jobs), alert.runModal() != .alertSecondButtonReturn {
            return .terminateCancel
        }
        for project in projects where !project.saveBeforeClosing() { return .terminateCancel }
        isTerminating = true
        rememberOpenProjects()
        let closingProjects = projects
        closingProjects.forEach { $0.saveSession() }
        Task {
            // Start teardown in every project before waiting for its grace period.
            closingProjects.forEach { $0.console.terminateAll() }
            for project in closingProjects { await project.console.terminateAllAndWait() }
            sender.reply(toApplicationShouldTerminate: true)
        }
        return .terminateLater
    }

    // MARK: Opening

    /// A folder opens as a project; a file opens in the project that contains it,
    /// or in a new window rooted at the file's folder.
    func open(_ url: URL) {
        let url = url.resolvingSymlinksInPath().standardizedFileURL
        var isDirectory: ObjCBool = false
        guard FileManager.default.fileExists(atPath: url.path, isDirectory: &isDirectory) else { return }
        if isDirectory.boolValue {
            openProject(url, restoreSession: true)
            return
        }
        if let project = projects.first(where: { url.path.hasPrefix($0.rootURL.path + "/") }) {
            project.showWindow(nil)
            project.editorArea.openFile(url)
            return
        }
        openProject(url.deletingLastPathComponent(), restoreSession: false).editorArea.openFile(url)
    }

    @discardableResult
    private func openProject(_ root: URL, restoreSession: Bool) -> ProjectWindowController {
        let root = root.resolvingSymlinksInPath().standardizedFileURL
        if let existing = projects.first(where: { $0.rootURL == root }) {
            existing.showWindow(nil)
            return existing
        }
        let project = ProjectWindowController(rootURL: root, restoreSession: restoreSession)
        project.onClose = { [weak self] closed in
            guard let self else { return }
            self.projects.removeAll { $0 === closed }
            if !self.isTerminating { self.rememberOpenProjects() }
        }
        projects.append(project)
        project.showWindow(nil)
        rememberOpenProjects()
        return project
    }

    private func rememberOpenProjects() {
        Preferences.openProjects = projects.map(\.rootURL.path)
    }

    @objc func openDocument(_ sender: Any?) {
        let panel = NSOpenPanel()
        panel.canChooseDirectories = true
        panel.canChooseFiles = true
        panel.allowsMultipleSelection = true
        panel.message = L("Open a folder as a project, or a file to edit.")
        panel.prompt = L("Open")
        if panel.runModal() == .OK { panel.urls.forEach(open) }
    }

    private func searchEverywhereInFrontProject() {
        var window = NSApp.keyWindow
        if let parent = window?.parent { window = parent }
        let project = (window?.windowController as? ProjectWindowController)
            ?? (NSApp.mainWindow?.windowController as? ProjectWindowController)
        project?.showSearchEverywhere()
    }

    // MARK: View settings

    @objc func selectLanguage(_ sender: NSMenuItem) {
        guard let code = sender.representedObject as? String else { return }
        Preferences.interfaceLanguage = code.isEmpty ? nil : code
        NSApp.mainMenu = MainMenu.build()
        NotificationCenter.default.post(name: .sumiLanguageDidChange, object: nil)
    }

    @objc func increaseFontSize(_ sender: Any?) { setFontSize(Preferences.fontSize + 1) }
    @objc func decreaseFontSize(_ sender: Any?) { setFontSize(Preferences.fontSize - 1) }
    @objc func resetFontSize(_ sender: Any?) { setFontSize(Preferences.defaultFontSize) }

    private func setFontSize(_ size: CGFloat) {
        Preferences.fontSize = min(max(size, 8), 40)
        projects.forEach { $0.applyFontSize() }
    }

    @objc func toggleTerminalGPU(_ sender: Any?) {
        Preferences.terminalGPU.toggle()
        projects.forEach { $0.console.applyGPUSetting() }
    }

    @objc func toggleSoftWrap(_ sender: Any?) {
        Preferences.softWrap.toggle()
        projects.forEach { $0.editorArea.applyWrap() }
    }

    func validateMenuItem(_ menuItem: NSMenuItem) -> Bool {
        if menuItem.action == #selector(toggleTerminalGPU(_:)) {
            menuItem.state = Preferences.terminalGPU ? .on : .off
        }
        if menuItem.action == #selector(toggleSoftWrap(_:)) {
            menuItem.state = Preferences.softWrap ? .on : .off
        }
        return true
    }
}
