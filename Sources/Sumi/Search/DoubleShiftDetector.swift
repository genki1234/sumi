import AppKit

/// Detects "Double Shift": Shift pressed and released twice within a short interval
/// with no other key, modifier or click in between.
@MainActor
final class DoubleShiftDetector {
    var onDoubleShift: (() -> Void)?
    private var monitor: Any?
    private var shiftIsDown = false
    private var interrupted = false
    private var lastRelease: TimeInterval = 0
    private let interval: TimeInterval = 0.4

    func install() {
        monitor = NSEvent.addLocalMonitorForEvents(matching: [.flagsChanged, .keyDown, .leftMouseDown, .rightMouseDown]) { [weak self] event in
            MainActor.assumeIsolated { self?.handle(event) }
            return event
        }
    }

    private func handle(_ event: NSEvent) {
        guard event.type == .flagsChanged, event.keyCode == 56 || event.keyCode == 60 else {
            interrupted = true
            lastRelease = 0
            return
        }
        let flags = event.modifierFlags.intersection(.deviceIndependentFlagsMask)
        if flags.contains(.shift) {
            shiftIsDown = true
            interrupted = !flags.subtracting([.shift, .capsLock]).isEmpty
        } else if shiftIsDown {
            shiftIsDown = false
            if interrupted {
                lastRelease = 0
            } else if lastRelease > 0 && event.timestamp - lastRelease < interval {
                lastRelease = 0
                onDoubleShift?()
            } else {
                lastRelease = event.timestamp
            }
        }
    }
}
