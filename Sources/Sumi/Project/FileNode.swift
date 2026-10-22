import Foundation

/// A file or folder in the project tree. Children load lazily on first expansion,
/// and reloading keeps existing child objects so NSOutlineView keeps their expansion state.
@MainActor
final class FileNode {
    let url: URL
    let isDirectory: Bool
    weak var parent: FileNode?
    private(set) var children: [FileNode]?

    /// Never shown in the tree.
    static let hiddenNames: Set<String> = [".git", ".DS_Store"]

    init(url: URL, isDirectory: Bool, parent: FileNode?) {
        self.url = url
        self.isDirectory = isDirectory
        self.parent = parent
    }

    var name: String { url.lastPathComponent }

    var isExcluded: Bool { isDirectory && FileIndex.excludedDirectoryNames.contains(name) }

    func loadedChildren() -> [FileNode] {
        if let children { return children }
        let list = Self.list(url, parent: self, reusing: [:])
        children = list
        return list
    }

    var isLoaded: Bool { children != nil }

    func reload() {
        guard let old = children else { return }
        var reuse: [String: FileNode] = [:]
        for child in old { reuse[Self.key(child.name, child.isDirectory)] = child }
        children = Self.list(url, parent: self, reusing: reuse)
    }

    /// Finds an already-loaded descendant (or self) by URL.
    func loadedNode(for target: URL) -> FileNode? {
        let base = url.pathComponents
        let components = target.standardizedFileURL.pathComponents
        guard components.count >= base.count, Array(components.prefix(base.count)) == base else { return nil }
        var current = self
        for component in components.dropFirst(base.count) {
            guard let next = current.children?.first(where: { $0.name == component }) else { return nil }
            current = next
        }
        return current
    }

    func forEachLoadedDirectory(_ body: (FileNode) -> Void) {
        guard let children else { return }
        body(self)
        for child in children where child.isDirectory {
            child.forEachLoadedDirectory(body)
        }
    }

    private static func key(_ name: String, _ isDirectory: Bool) -> String {
        isDirectory ? name + "/" : name
    }

    private static func list(_ directory: URL, parent: FileNode, reusing: [String: FileNode]) -> [FileNode] {
        let keys: [URLResourceKey] = [.isDirectoryKey, .isSymbolicLinkKey]
        guard let urls = try? FileManager.default.contentsOfDirectory(at: directory, includingPropertiesForKeys: keys) else {
            return []
        }
        var nodes: [FileNode] = []
        for url in urls where !hiddenNames.contains(url.lastPathComponent) {
            let values = try? url.resourceValues(forKeys: Set(keys))
            var isDirectory = values?.isDirectory ?? false
            if values?.isSymbolicLink == true {
                isDirectory = (try? url.resolvingSymlinksInPath().resourceValues(forKeys: [.isDirectoryKey]))?.isDirectory ?? false
            }
            nodes.append(reusing[key(url.lastPathComponent, isDirectory)] ?? FileNode(url: url, isDirectory: isDirectory, parent: parent))
        }
        nodes.sort { a, b in
            if a.isDirectory != b.isDirectory { return a.isDirectory }
            return a.name.localizedStandardCompare(b.name) == .orderedAscending
        }
        return nodes
    }
}
