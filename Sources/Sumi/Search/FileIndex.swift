import Foundation

struct IndexedFile: Sendable {
    let url: URL
    let relativePath: String
    let name: [UInt16]
    let path: [UInt16]
}

/// File list of a project for Search Everywhere. Built on a background task;
/// dependency and build-output folders are skipped.
@MainActor
final class FileIndex {
    struct Result {
        let file: IndexedFile
        let score: Int
        let positions: [Int]
        let matchedPath: Bool
    }

    nonisolated static let excludedDirectoryNames: Set<String> = [
        ".git", ".svn", ".hg", "node_modules", ".gradle", ".idea", ".build", "build", "dist", "out",
        "target", "__pycache__", ".venv", "venv", ".next", ".nuxt", ".turbo", ".cache",
        ".mypy_cache", ".pytest_cache", ".tox", "DerivedData", "Pods", "coverage",
    ]

    let root: URL
    private(set) var files: [IndexedFile] = []
    private var generation = 0
    private var pendingRebuild: Task<Void, Never>?

    init(root: URL) {
        self.root = root
    }

    func rebuild() {
        generation += 1
        let current = generation
        let root = root
        Task.detached(priority: .utility) {
            let scanned = FileIndex.scan(root: root)
            await MainActor.run { [weak self] in
                guard let self, self.generation == current else { return }
                self.files = scanned
            }
        }
    }

    /// Coalesces bursts of file-system events (e.g. git checkout) into one rebuild.
    func scheduleRebuild() {
        pendingRebuild?.cancel()
        pendingRebuild = Task { [weak self] in
            try? await Task.sleep(for: .milliseconds(500))
            guard !Task.isCancelled else { return }
            self?.rebuild()
        }
    }

    func search(_ query: String) -> [Result] {
        let q = query.utf16.filter { $0 != 0x20 }.map(FuzzyMatcher.fold)
        guard !q.isEmpty else { return [] }
        let byPath = q.contains(0x2F)
        var results: [Result] = []
        for file in files {
            if !byPath, let m = FuzzyMatcher.match(q, file.name) {
                results.append(Result(file: file, score: m.score, positions: m.positions, matchedPath: false))
            } else if let m = FuzzyMatcher.match(q, file.path) {
                results.append(Result(file: file, score: m.score - (byPath ? 0 : 20), positions: m.positions, matchedPath: true))
            }
        }
        results.sort { a, b in
            a.score != b.score ? a.score > b.score : a.file.path.count < b.file.path.count
        }
        return results
    }

    nonisolated static func scan(root: URL) -> [IndexedFile] {
        let keys: [URLResourceKey] = [.isDirectoryKey, .isRegularFileKey]
        guard let enumerator = FileManager.default.enumerator(at: root, includingPropertiesForKeys: keys, options: [], errorHandler: { _, _ in true }) else {
            return []
        }
        let rootCount = root.pathComponents.count
        var files: [IndexedFile] = []
        while let url = enumerator.nextObject() as? URL {
            let values = try? url.resourceValues(forKeys: Set(keys))
            if values?.isDirectory == true {
                if excludedDirectoryNames.contains(url.lastPathComponent) { enumerator.skipDescendants() }
                continue
            }
            guard values?.isRegularFile == true, url.lastPathComponent != ".DS_Store" else { continue }
            let relative = url.pathComponents.dropFirst(rootCount).joined(separator: "/")
            files.append(IndexedFile(url: url, relativePath: relative, name: Array(url.lastPathComponent.utf16), path: Array(relative.utf16)))
        }
        return files
    }
}
