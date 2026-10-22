import Foundation

/// Wraps file paths in terminal output with OSC 8 hyperlinks, so the terminal draws them as links
/// (blue, underlined) and a click opens them in the editor — for example the paths that coding agents
/// print (`⎿  M  src/app.ts`, `Update(src/app.ts)`, `src/app.ts:42:7`).
///
/// It works on the raw byte stream: escape sequences pass through untouched and only plain text runs
/// are scanned. A word becomes a link only when it resolves to an existing file or folder, so ordinary
/// words are never decorated. Links the program already emits (its own OSC 8) are left as they are.
struct PathLinkifier {
    private enum State {
        case text, escape, csi, osc, oscEscape, string, stringEscape
    }

    private var state = State.text
    private var word: [UInt8] = []
    private var osc: [UInt8] = []
    private var programLinkOpen = false

    /// Bytes of a word cut off at the end of a read. They are held until the next read (or a short timeout)
    /// so a path split between two reads still becomes one link.
    var hasPendingWord: Bool { !word.isEmpty }

    mutating func process(_ input: ArraySlice<UInt8>, holdTrailingWord: Bool, resolve: (String) -> URL?) -> [UInt8] {
        var out: [UInt8] = []
        out.reserveCapacity(input.count + 64)
        for byte in input {
            switch state {
            case .text:
                if Self.isWordByte(byte) {
                    word.append(byte)
                    continue
                }
                flushWord(into: &out, resolve: resolve)
                out.append(byte)
                if byte == 0x1B { state = .escape }
            case .escape:
                out.append(byte)
                switch byte {
                case UInt8(ascii: "["): state = .csi
                case UInt8(ascii: "]"): state = .osc; osc.removeAll(keepingCapacity: true)
                case UInt8(ascii: "P"), UInt8(ascii: "X"), UInt8(ascii: "^"), UInt8(ascii: "_"): state = .string
                case 0x20...0x2F: break // intermediate bytes, e.g. ESC ( B
                default: state = .text
                }
            case .csi:
                out.append(byte)
                if (0x40...0x7E).contains(byte) { state = .text }
            case .osc:
                out.append(byte)
                if byte == 0x07 {
                    finishOSC()
                } else if byte == 0x1B {
                    state = .oscEscape
                } else if osc.count < 4096 {
                    osc.append(byte)
                }
            case .oscEscape:
                out.append(byte)
                if byte == UInt8(ascii: "\\") {
                    finishOSC()
                } else {
                    state = .osc
                }
            case .string:
                out.append(byte)
                if byte == 0x1B { state = .stringEscape }
            case .stringEscape:
                out.append(byte)
                state = byte == UInt8(ascii: "\\") ? .text : .string
            }
        }
        if !holdTrailingWord { flushWord(into: &out, resolve: resolve) }
        return out
    }

    /// Emits a held word when no more output arrived in time.
    mutating func flush(resolve: (String) -> URL?) -> [UInt8] {
        var out: [UInt8] = []
        flushWord(into: &out, resolve: resolve)
        return out
    }

    private mutating func finishOSC() {
        state = .text
        // OSC 8 ; params ; URI — an empty URI closes the program's own link.
        guard osc.starts(with: [UInt8(ascii: "8"), UInt8(ascii: ";")]) else { return }
        let parts = osc.split(separator: UInt8(ascii: ";"), maxSplits: 2, omittingEmptySubsequences: false)
        programLinkOpen = parts.count == 3 && !parts[2].isEmpty
    }

    private mutating func flushWord(into out: inout [UInt8], resolve: (String) -> URL?) {
        guard !word.isEmpty else { return }
        defer { word.removeAll(keepingCapacity: true) }
        guard !programLinkOpen, word.count <= 1024, let text = String(bytes: word, encoding: .utf8) else {
            out.append(contentsOf: word)
            return
        }
        // Japanese and Chinese put no spaces around a path (`「src/a.ts」を参照`), so their brackets and
        // punctuation split the word as a space would.
        var segment = String.UnicodeScalarView()
        for scalar in text.unicodeScalars {
            if Self.separators.contains(scalar) {
                Self.emit(String(segment), into: &out, resolve: resolve)
                segment.removeAll()
                out.append(contentsOf: String(scalar).utf8)
            } else {
                segment.append(scalar)
            }
        }
        Self.emit(String(segment), into: &out, resolve: resolve)
    }

    private static func emit(_ text: String, into out: inout [UInt8], resolve: (String) -> URL?) {
        guard !text.isEmpty else { return }
        guard let (prefix, core, suffix) = trim(text),
              looksLikePath(core),
              let target = target(of: core, resolve: resolve)
        else {
            out.append(contentsOf: text.utf8)
            return
        }
        out.append(contentsOf: prefix.utf8)
        out.append(contentsOf: osc8(target.absoluteString))
        out.append(contentsOf: core.utf8)
        out.append(contentsOf: osc8(""))
        out.append(contentsOf: suffix.utf8)
    }

    private static func osc8(_ uri: String) -> [UInt8] {
        Array("\u{1B}]8;;\(uri)\u{1B}\\".utf8)
    }

    // MARK: Words

    /// Bytes that can be part of a path. Spaces, control bytes and brackets/quotes end a word;
    /// ':' stays so `file.ts:12:3` keeps its line and column.
    private static func isWordByte(_ byte: UInt8) -> Bool {
        if byte >= 0x80 { return true }
        if byte <= 0x20 || byte == 0x7F { return false }
        switch byte {
        case UInt8(ascii: "\""), UInt8(ascii: "'"), UInt8(ascii: "`"), UInt8(ascii: "("), UInt8(ascii: ")"),
             UInt8(ascii: "["), UInt8(ascii: "]"), UInt8(ascii: "{"), UInt8(ascii: "}"), UInt8(ascii: "<"),
             UInt8(ascii: ">"), UInt8(ascii: "|"), UInt8(ascii: ","), UInt8(ascii: ";"), UInt8(ascii: "="):
            return false
        default:
            return true
        }
    }

    /// Characters that never belong to a path: CJK brackets and punctuation, and the tree glyphs agents draw (`⎿`).
    private static let separators = CharacterSet(charactersIn: "「」『』（）【】〈〉《》〔〕、。，．：；！？…⎿│└├─")
    private static let edgePunctuation = CharacterSet(charactersIn: ".:!?")

    /// Splits off punctuation around the path, e.g. `src/a.ts.` at the end of a sentence.
    private static func trim(_ text: String) -> (String, String, String)? {
        let scalars = Array(text.unicodeScalars)
        var start = 0
        var end = scalars.count
        while start < end, edgePunctuation.contains(scalars[start]) {
            // `./x`, `../x` and dot-files such as `.agents/…` start with a dot that belongs to the path.
            if scalars[start] == ".", start + 1 < end,
               scalars[start + 1] == "." || !edgePunctuation.contains(scalars[start + 1]) { break }
            start += 1
        }
        while end > start, edgePunctuation.contains(scalars[end - 1]) { end -= 1 }
        guard start < end else { return nil }
        func string(_ range: Range<Int>) -> String {
            var result = String.UnicodeScalarView()
            result.append(contentsOf: scalars[range])
            return String(result)
        }
        return (string(0..<start), string(start..<end), string(end..<scalars.count))
    }

    /// A cheap filter before touching the file system: a path has a slash or a file extension.
    private static func looksLikePath(_ text: String) -> Bool {
        if text.hasPrefix("-") || text.contains("://") { return false }
        if text.contains("/") { return true }
        guard let dot = text.lastIndex(of: "."), dot != text.startIndex else { return false }
        let ext = text[text.index(after: dot)...].prefix { $0 != ":" }
        return !ext.isEmpty && ext.count <= 10 && ext.allSatisfy { $0.isLetter || $0.isNumber }
    }

    /// The file URL for a word, with `#line:column` when the word ends in `:line` or `:line:column`.
    private static func target(of word: String, resolve: (String) -> URL?) -> URL? {
        var path = Substring(word)
        var location: [Substring] = []
        while location.count < 2, let colon = path.lastIndex(of: ":"),
              case let number = path[path.index(after: colon)...], !number.isEmpty, number.allSatisfy(\.isNumber) {
            location.insert(number, at: 0)
            path = path[..<colon]
        }
        if path.hasSuffix(":") { path = path.dropLast() }
        guard !path.isEmpty else { return nil }
        var candidates = [String(path)]
        // `a/src/x.ts` and `b/src/x.ts` in diffs.
        if path.hasPrefix("a/") || path.hasPrefix("b/") { candidates.append(String(path.dropFirst(2))) }
        for candidate in candidates {
            if let url = resolve(candidate) {
                guard !location.isEmpty, var components = URLComponents(url: url, resolvingAgainstBaseURL: false) else { return url }
                components.fragment = location.joined(separator: ":")
                return components.url ?? url
            }
        }
        return nil
    }
}
