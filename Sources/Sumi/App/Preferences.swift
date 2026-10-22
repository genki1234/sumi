import AppKit

/// User settings stored in UserDefaults.
@MainActor
enum Preferences {
    private static let defaults = UserDefaults.standard
    static let defaultFontSize: CGFloat = 13

    static var fontSize: CGFloat {
        get {
            let value = defaults.double(forKey: "fontSize")
            return value > 0 ? CGFloat(value) : defaultFontSize
        }
        set { defaults.set(Double(newValue), forKey: "fontSize") }
    }

    static var softWrap: Bool {
        get { defaults.bool(forKey: "softWrap") }
        set { defaults.set(newValue, forKey: "softWrap") }
    }

    /// Markdown/HTML tabs: 0 = editor only, 1 = editor and preview (default), 2 = preview only.
    static var previewMode: Int {
        get { defaults.object(forKey: "previewMode") as? Int ?? 1 }
        set { defaults.set(newValue, forKey: "previewMode") }
    }

    /// Terminal on the left and Project view at the bottom, instead of the default.
    static var consoleOnLeft: Bool {
        get { defaults.bool(forKey: "consoleOnLeft") }
        set { defaults.set(newValue, forKey: "consoleOnLeft") }
    }

    static var consoleHidden: Bool {
        get { defaults.bool(forKey: "consoleHidden") }
        set { defaults.set(newValue, forKey: "consoleHidden") }
    }

    /// Project folders that were open when the app last quit.
    static var openProjects: [String] {
        get { defaults.stringArray(forKey: "openProjects") ?? [] }
        set { defaults.set(newValue, forKey: "openProjects") }
    }

    /// Open tabs of a project, restored when the project is reopened.
    static func session(for root: URL) -> (files: [String], selected: Int) {
        let dict = defaults.dictionary(forKey: "session:" + root.path) ?? [:]
        return (dict["files"] as? [String] ?? [], dict["selected"] as? Int ?? 0)
    }

    static func saveSession(for root: URL, files: [String], selected: Int) {
        defaults.set(["files": files, "selected": selected], forKey: "session:" + root.path)
    }
}
