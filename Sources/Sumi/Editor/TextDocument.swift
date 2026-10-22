import AppKit

enum LineEnding: String {
    case lf = "LF", crlf = "CRLF", cr = "CR"

    var sequence: String {
        switch self {
        case .lf: "\n"
        case .crlf: "\r\n"
        case .cr: "\r"
        }
    }
}

enum DocumentError: LocalizedError {
    case binary
    case undecodable
    case unencodable(String)

    var errorDescription: String? {
        switch self {
        case .binary: L("The file is a binary file.")
        case .undecodable: L("The file's text encoding could not be determined.")
        case .unencodable(let encoding): L("The text cannot be saved in %@.", encoding)
        }
    }
}

/// One open file. Keeps the original encoding, BOM and line endings so saving does not rewrite them.
@MainActor
final class TextDocument {
    private(set) var url: URL
    private(set) var language: Language?
    let textStorage = NSTextStorage()
    let undoManager = UndoManager()
    private(set) var encoding: String.Encoding = .utf8
    private(set) var hasBOM = false
    private(set) var lineEnding: LineEnding = .lf
    private(set) var diskModificationDate: Date?
    var isDirty = false

    init(url: URL) throws {
        self.url = url
        self.language = Language(url: url)
        try load()
    }

    var encodingName: String {
        let cf = CFStringConvertNSStringEncodingToEncoding(encoding.rawValue)
        let name = (CFStringConvertEncodingToIANACharSetName(cf) as String?)?.uppercased() ?? "?"
        return hasBOM && encoding == .utf8 ? name + " BOM" : name
    }

    private func load() throws {
        let data = try Data(contentsOf: url)
        let (raw, encoding, bom) = try Self.decode(data)
        let (text, ending) = Self.normalizeLineEndings(raw)
        self.encoding = encoding
        self.hasBOM = bom
        self.lineEnding = ending
        textStorage.setAttributedString(NSAttributedString(string: text, attributes: Theme.textAttributes()))
        diskModificationDate = Self.modificationDate(url)
    }

    func reloadFromDisk() throws {
        try load()
        undoManager.removeAllActions()
        isDirty = false
    }

    func save() throws {
        var text = textStorage.string
        if lineEnding != .lf {
            let ns = text as NSString
            text = ns.replacingOccurrences(of: "\n", with: lineEnding.sequence, options: .literal, range: NSRange(location: 0, length: ns.length))
        }
        guard var data = text.data(using: encoding) else {
            throw DocumentError.unencodable(encodingName)
        }
        if hasBOM && encoding == .utf8 {
            data.insert(contentsOf: [0xEF, 0xBB, 0xBF], at: 0)
        }
        // Write through symlinks and keep the file mode (e.g. executable scripts),
        // because an atomic write replaces the file with a new one.
        let target = url.resolvingSymlinksInPath()
        let permissions = try? FileManager.default.attributesOfItem(atPath: target.path)[.posixPermissions]
        try data.write(to: target, options: .atomic)
        if let permissions {
            try? FileManager.default.setAttributes([.posixPermissions: permissions], ofItemAtPath: target.path)
        }
        diskModificationDate = Self.modificationDate(url)
        isDirty = false
    }

    func rename(to newURL: URL) {
        url = newURL
        language = Language(url: newURL)
    }

    /// UTF-16 copy of the text, shared by the lexer and the line-number gutter.
    func utf16Buffer() -> [UInt16] {
        let ns = textStorage.mutableString
        let length = ns.length
        var buffer = [UInt16](repeating: 0, count: length)
        if length > 0 {
            buffer.withUnsafeMutableBufferPointer { p in
                ns.getCharacters(p.baseAddress!, range: NSRange(location: 0, length: length))
            }
        }
        return buffer
    }

    static func modificationDate(_ url: URL) -> Date? {
        (try? FileManager.default.attributesOfItem(atPath: url.path))?[.modificationDate] as? Date
    }

    nonisolated static func decode(_ data: Data) throws -> (String, String.Encoding, Bool) {
        let head = [UInt8](data.prefix(4))
        if head.starts(with: [0xEF, 0xBB, 0xBF]) {
            guard let s = String(data: data.dropFirst(3), encoding: .utf8) else { throw DocumentError.undecodable }
            return (s, .utf8, true)
        }
        if head.starts(with: [0xFF, 0xFE]) || head.starts(with: [0xFE, 0xFF]) {
            guard let s = String(data: data, encoding: .utf16) else { throw DocumentError.undecodable }
            return (s, .utf16, true)
        }
        if data.prefix(8000).contains(0) { throw DocumentError.binary }
        if let s = String(data: data, encoding: .utf8) { return (s, .utf8, false) }
        var converted: NSString?
        var lossy: ObjCBool = false
        let suggested: [UInt] = [
            String.Encoding.shiftJIS.rawValue,
            String.Encoding.japaneseEUC.rawValue,
            String.Encoding.iso2022JP.rawValue,
            String.Encoding.windowsCP1252.rawValue,
        ]
        let raw = NSString.stringEncoding(
            for: data,
            encodingOptions: [.suggestedEncodingsKey: suggested],
            convertedString: &converted,
            usedLossyConversion: &lossy
        )
        guard raw != 0, let converted, !lossy.boolValue else { throw DocumentError.undecodable }
        return (converted as String, String.Encoding(rawValue: raw), false)
    }

    /// The editor works with "\n" only; the original line ending is restored on save.
    nonisolated static func normalizeLineEndings(_ s: String) -> (String, LineEnding) {
        let ns = s as NSString
        guard ns.range(of: "\r", options: .literal).location != NSNotFound else { return (s, .lf) }
        let ending: LineEnding = ns.range(of: "\r\n", options: .literal).location != NSNotFound ? .crlf : .cr
        let m = NSMutableString(string: ns)
        m.replaceOccurrences(of: "\r\n", with: "\n", options: .literal, range: NSRange(location: 0, length: m.length))
        m.replaceOccurrences(of: "\r", with: "\n", options: .literal, range: NSRange(location: 0, length: m.length))
        return (m as String, ending)
    }
}
