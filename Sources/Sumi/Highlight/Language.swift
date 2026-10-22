import Foundation

/// Languages with syntax highlighting. Other files open as plain text.
enum Language: Sendable {
    case kotlin, javascript, typescript, python

    init?(url: URL) {
        switch url.pathExtension.lowercased() {
        case "kt", "kts": self = .kotlin
        case "js", "mjs", "cjs", "jsx": self = .javascript
        case "ts", "mts", "cts", "tsx": self = .typescript
        case "py", "pyw", "pyi": self = .python
        default: return nil
        }
    }

    var displayName: String {
        switch self {
        case .kotlin: "Kotlin"
        case .javascript: "JavaScript"
        case .typescript: "TypeScript"
        case .python: "Python"
        }
    }

    /// Indent width used by Tab and auto-indent (community defaults: 4 for Kotlin/Python, 2 for JS/TS).
    var indentWidth: Int {
        switch self {
        case .javascript, .typescript: 2
        case .kotlin, .python: 4
        }
    }

    var keywords: Set<String> {
        switch self {
        case .kotlin: Keywords.kotlin
        case .javascript: Keywords.javascript
        case .typescript: Keywords.typescript
        case .python: Keywords.python
        }
    }

    var specials: Set<String> {
        self == .python ? Keywords.pythonSpecials : []
    }

    var builtins: Set<String> {
        self == .python ? Keywords.pythonBuiltins : []
    }
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
