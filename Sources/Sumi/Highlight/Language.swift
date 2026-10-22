import Foundation

/// Native SwiftPM executables look beside the executable bundle; packaged apps keep
/// the catalog in Contents/Resources so it remains available after distribution.
enum HighlightResources {
    static let bundle: Bundle = {
        if let url = Bundle.main.url(forResource: "Sumi_Sumi", withExtension: "bundle"),
           let bundle = Bundle(url: url) { return bundle }
        return Bundle.module
    }()
}

/// The bundled catalog recognizes source files by filename, extension and interpreter.
/// Grammars are optional because a recognized language can still be edited as text.
struct Language: Hashable, Sendable {
    let id: String

    static let kotlin = Language(id: "Kotlin")
    static let javascript = Language(id: "JavaScript")
    static let typescript = Language(id: "TypeScript")
    static let python = Language(id: "Python")

    private init(id: String) { self.id = id }

    init?(url: URL, source: String? = nil) {
        let catalog = Self.catalog
        let name = url.lastPathComponent
        if let id = catalog.filenames[name] {
            self.init(id: id)
            return
        }
        // Try compound suffixes before the final extension, such as .blade.php.
        let parts = name.split(separator: ".", omittingEmptySubsequences: false)
        if parts.count > 1 {
            for start in 1..<parts.count {
                let suffix = "." + parts[start...].joined(separator: ".")
                if let id = catalog.extensions[suffix] ?? catalog.foldedExtensions[suffix.lowercased()] {
                    self.init(id: id)
                    return
                }
            }
        }
        if let source, source.hasPrefix("#!") {
            let line = source.prefix(while: { $0 != "\n" && $0 != "\r" })
            let words = line.dropFirst(2).split(whereSeparator: { $0.isWhitespace })
            for word in words {
                let command = String(word.split(separator: "/").last ?? word)
                if command == "env" || command.hasPrefix("-") || command.contains("=") { continue }
                let unversioned = command.replacingOccurrences(of: #"[0-9]+(?:\.[0-9]+)*$"#, with: "", options: .regularExpression)
                if let id = catalog.interpreters[command] ?? catalog.interpreters[unversioned] {
                    self.init(id: id)
                    return
                }
                break
            }
        }
        return nil
    }

    var displayName: String { Self.catalog.entries[id]?.name ?? id }
    var grammar: String? { Self.catalog.entries[id]?.grammar }

    /// Preserve the existing indentation defaults and use four spaces for other languages.
    var indentWidth: Int {
        switch grammar {
        case "javascript", "typescript", "jsx", "tsx", "json", "json5", "css", "scss", "sass", "markup", "yaml", "ruby": 2
        default: 4
        }
    }

    var keywords: Set<String> {
        switch self {
        case .kotlin: Keywords.kotlin
        case .javascript: Keywords.javascript
        case .typescript: Keywords.typescript
        case .python: Keywords.python
        default: []
        }
    }

    var specials: Set<String> { self == .python ? Keywords.pythonSpecials : [] }
    var builtins: Set<String> { self == .python ? Keywords.pythonBuiltins : [] }

    private struct Entry: Decodable, Sendable {
        let id: String
        let name: String
        let grammar: String?
        let extensions: [String]
        let filenames: [String]
        let interpreters: [String]
    }

    private struct CatalogFile: Decodable {
        let preferences: [String: String]
        let languages: [Entry]
    }

    private struct Catalog: Sendable {
        var entries: [String: Entry] = [:]
        var extensions: [String: String] = [:]
        var foldedExtensions: [String: String] = [:]
        var filenames: [String: String] = [:]
        var interpreters: [String: String] = [:]

        init() {
            guard let url = HighlightResources.bundle.url(forResource: "LanguageCatalog", withExtension: "json", subdirectory: "Resources"),
                  let data = try? Data(contentsOf: url),
                  let file = try? JSONDecoder().decode(CatalogFile.self, from: data) else { return }
            for entry in file.languages {
                entries[entry.id] = entry
                for suffix in entry.extensions where extensions[suffix] == nil { extensions[suffix] = entry.id }
                for name in entry.filenames where filenames[name] == nil { filenames[name] = entry.id }
                for interpreter in entry.interpreters where interpreters[interpreter] == nil { interpreters[interpreter] = entry.id }
            }
            for (suffix, id) in file.preferences { extensions[suffix] = id }
            extensions.removeValue(forKey: ".txt")
            extensions.removeValue(forKey: ".text")
            for suffix in extensions.keys.sorted() {
                foldedExtensions[suffix.lowercased()] = extensions[suffix]
            }
            // Lowercase suffixes take precedence when only a case-insensitive match exists.
            for (suffix, id) in extensions where suffix == suffix.lowercased() { foldedExtensions[suffix] = id }
        }
    }

    private static let catalog = Catalog()
}

enum Keywords {
    static let kotlin: Set<String> = [
        "as", "break", "class", "continue", "do", "else", "false", "for", "fun", "if", "in",
        "interface", "is", "null", "object", "package", "return", "super", "this", "throw", "true",
        "try", "typealias", "typeof", "val", "var", "when", "while", "by", "catch", "constructor",
        "finally", "import", "init", "where", "abstract", "actual", "annotation", "companion",
        "const", "crossinline", "data", "enum", "expect", "external", "final", "infix", "inline",
        "inner", "internal", "lateinit", "noinline", "open", "operator", "out", "override",
        "private", "protected", "public", "reified", "sealed", "suspend", "tailrec", "vararg",
    ]

    static let javascript: Set<String> = [
        "break", "case", "catch", "class", "const", "continue", "debugger", "default", "delete",
        "do", "else", "export", "extends", "finally", "for", "function", "if", "import", "in",
        "instanceof", "new", "return", "super", "switch", "this", "throw", "try", "typeof", "var",
        "void", "while", "with", "yield", "let", "static", "async", "await", "of", "from", "as",
        "true", "false", "null", "undefined",
    ]

    static let typescript: Set<String> = javascript.union([
        "abstract", "any", "asserts", "bigint", "boolean", "declare", "enum", "implements",
        "infer", "interface", "is", "keyof", "module", "namespace", "never", "number", "object",
        "private", "protected", "public", "readonly", "string", "symbol", "type", "unique",
        "unknown", "override", "satisfies", "accessor",
    ])

    static let python: Set<String> = [
        "False", "None", "True", "and", "as", "assert", "async", "await", "break", "class",
        "continue", "def", "del", "elif", "else", "except", "finally", "for", "from", "global",
        "if", "import", "in", "is", "lambda", "nonlocal", "not", "or", "pass", "raise", "return",
        "try", "while", "with", "yield", "match", "case",
    ]

    static let pythonSpecials: Set<String> = ["self", "cls"]

    static let pythonBuiltins: Set<String> = [
        "print", "len", "range", "int", "str", "float", "bool", "list", "dict", "set", "tuple",
        "bytes", "type", "object", "isinstance", "issubclass", "super", "open", "enumerate", "zip",
        "map", "filter", "sorted", "reversed", "sum", "min", "max", "abs", "any", "all", "iter",
        "next", "getattr", "setattr", "hasattr", "repr", "round", "input", "format", "id", "hash",
        "callable", "vars", "dir", "property", "staticmethod", "classmethod", "frozenset",
        "Exception", "ValueError", "TypeError", "KeyError", "IndexError", "RuntimeError",
        "AttributeError", "NotImplementedError", "StopIteration", "OSError",
    ]
}
