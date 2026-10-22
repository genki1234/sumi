import AppKit

/// A PID plus its birth time prevents a delayed close from signalling a reused PID.
struct TerminalProcess: Sendable {
    let pid: pid_t
    let startedSeconds: UInt64
    let startedMicroseconds: UInt64
    let name: String

    init?(_ pid: pid_t) {
        guard pid > 0 else { return nil }
        var info = proc_bsdinfo()
        let size = Int32(MemoryLayout<proc_bsdinfo>.size)
        guard proc_pidinfo(pid, PROC_PIDTBSDINFO, 0, &info, size) == size else { return nil }
        self.pid = pid
        startedSeconds = info.pbi_start_tvsec
        startedMicroseconds = info.pbi_start_tvusec
        name = withUnsafeBytes(of: info.pbi_comm) { String(decoding: $0.prefix { $0 != 0 }, as: UTF8.self) }
    }

    func signal(_ value: Int32) {
        guard let current = TerminalProcess(pid),
              current.startedSeconds == startedSeconds,
              current.startedMicroseconds == startedMicroseconds else { return }
        kill(pid, value)
    }

    /// Include background jobs and grandchildren, not only the foreground process group.
    static func descendants(of pid: pid_t) -> [TerminalProcess]? {
        var pending = [pid]
        var visited = Set<pid_t>()
        var result: [TerminalProcess] = []
        while let parent = pending.popLast() {
            guard visited.insert(parent).inserted else { continue }
            // This wrapper returns a PID count, unlike proc_pidinfo's byte count.
            let count = proc_listchildpids(parent, nil, 0)
            guard count >= 0 else { return nil }
            var children = [pid_t](repeating: 0, count: max(32, Int(count) + 32))
            let capacity = Int32(children.count * MemoryLayout<pid_t>.size)
            let received = proc_listchildpids(parent, &children, capacity)
            guard received >= 0, received < children.count else { return nil }
            for child in children.prefix(Int(received)) where child > 0 {
                if let process = TerminalProcess(child) {
                    result.append(process)
                    pending.append(child)
                }
            }
        }
        return result
    }
}

@MainActor
enum TerminalCloseConfirmation {
    static func alert(jobs: [String]) -> NSAlert? {
        guard !jobs.isEmpty else { return nil }
        let alert = NSAlert()
        alert.alertStyle = .warning
        alert.messageText = L("Close running terminal sessions?")
        alert.informativeText = L("These processes will be stopped:") + "\n\n" + jobs.joined(separator: "\n")
        alert.addButton(withTitle: L("Cancel"))
        let close = alert.addButton(withTitle: L("Close"))
        close.keyEquivalent = ""
        close.hasDestructiveAction = true
        return alert
    }
}
