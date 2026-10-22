import CoreServices
import Foundation

/// Watches the project folder with FSEvents so the tree, the search index and open tabs
/// follow changes made outside the editor (git checkout, other tools, Finder).
@MainActor
final class FileWatcher {
    private var stream: FSEventStreamRef?
    fileprivate let handler: ([String], Bool) -> Void

    init(url: URL, handler: @escaping (_ directories: [String], _ rescan: Bool) -> Void) {
        self.handler = handler
        var context = FSEventStreamContext(
            version: 0,
            info: Unmanaged.passUnretained(self).toOpaque(),
            retain: nil, release: nil, copyDescription: nil
        )
        let flags = FSEventStreamCreateFlags(kFSEventStreamCreateFlagUseCFTypes | kFSEventStreamCreateFlagWatchRoot)
        guard let stream = FSEventStreamCreate(
            kCFAllocatorDefault, fileWatcherCallback, &context,
            [url.path] as CFArray,
            FSEventStreamEventId(kFSEventStreamEventIdSinceNow),
            0.25, flags
        ) else { return }
        FSEventStreamSetDispatchQueue(stream, DispatchQueue.main)
        FSEventStreamStart(stream)
        self.stream = stream
    }

    func stop() {
        guard let stream else { return }
        FSEventStreamStop(stream)
        FSEventStreamInvalidate(stream)
        FSEventStreamRelease(stream)
        self.stream = nil
    }
}

/// Runs on the main queue (set with FSEventStreamSetDispatchQueue).
private func fileWatcherCallback(
    _ stream: ConstFSEventStreamRef,
    _ info: UnsafeMutableRawPointer?,
    _ count: Int,
    _ paths: UnsafeMutableRawPointer,
    _ flags: UnsafePointer<FSEventStreamEventFlags>,
    _ ids: UnsafePointer<FSEventStreamEventId>
) {
    guard let info else { return }
    let address = UInt(bitPattern: info)
    let list = Unmanaged<NSArray>.fromOpaque(paths).takeUnretainedValue() as? [String] ?? []
    var rescan = false
    for i in 0..<count where flags[i] & FSEventStreamEventFlags(kFSEventStreamEventFlagMustScanSubDirs) != 0 {
        rescan = true
    }
    MainActor.assumeIsolated {
        guard let pointer = UnsafeRawPointer(bitPattern: address) else { return }
        let watcher = Unmanaged<FileWatcher>.fromOpaque(pointer).takeUnretainedValue()
        watcher.handler(list, rescan)
    }
}
