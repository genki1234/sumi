import Foundation

enum TokenKind: UInt8, Sendable {
    case keyword, string, number, comment, annotation, function, special, builtin
}

/// A colored span. Locations are UTF-16 offsets, the same units as NSRange.
struct Token: Sendable {
    var location: Int
    var length: Int
    var kind: TokenKind
}

/// Single-pass lexer over UTF-16 code units.
/// A hand-written scanner (not regular expressions) so multi-line comments and strings
/// (Kotlin raw strings, Python triple quotes, JS template literals) are tracked correctly
/// and a whole file is tokenized in one linear pass.
enum Lexer {
    static func tokenize(_ c: [UInt16], language: Language) -> [Token] {
        var tokens: [Token] = []
        tokens.reserveCapacity(c.count / 8)
        let n = c.count
        let python = language == .python
        let kotlin = language == .kotlin
        let jsLike = language == .javascript || language == .typescript
        let keywords = language.keywords
        let specials = language.specials
        let builtins = language.builtins
        var i = 0

        func add(_ start: Int, _ end: Int, _ kind: TokenKind) {
            if end > start { tokens.append(Token(location: start, length: end - start, kind: kind)) }
        }

        func followedByParen(_ end: Int) -> Bool {
            var j = end
            while j < n && (c[j] == 0x20 || c[j] == 0x09) { j += 1 }
            return j < n && c[j] == 0x28
        }

        while i < n {
            let ch = c[i]

            // Comments
            if python {
                if ch == 0x23 { // #
                    let s = i
                    while i < n && c[i] != 0x0A { i += 1 }
                    add(s, i, .comment)
                    continue
                }
            } else if ch == 0x2F && i + 1 < n { // /
                let next = c[i + 1]
                if next == 0x2F {
                    let s = i
                    while i < n && c[i] != 0x0A { i += 1 }
                    add(s, i, .comment)
                    continue
                }
                if next == 0x2A {
                    let s = i
                    i += 2
                    var depth = 1
                    while i < n {
                        if c[i] == 0x2A, i + 1 < n, c[i + 1] == 0x2F {
                            i += 2
                            depth -= 1
                            if depth == 0 { break }
                        } else if kotlin, c[i] == 0x2F, i + 1 < n, c[i + 1] == 0x2A {
                            i += 2
                            depth += 1 // Kotlin block comments nest
                        } else {
                            i += 1
                        }
                    }
                    add(s, i, .comment)
                    continue
                }
            }

            // Strings
            if ch == 0x22 || ch == 0x27 || (jsLike && ch == 0x60) {
                let s = i
                i = scanString(c, from: i, language: language)
                add(s, i, .string)
                continue
            }

            // Kotlin backtick identifiers
            if kotlin && ch == 0x60 {
                let s = i
                i += 1
                while i < n && c[i] != 0x60 && c[i] != 0x0A { i += 1 }
                if i < n && c[i] == 0x60 { i += 1 }
                if followedByParen(i) { add(s, i, .function) }
                continue
            }

            // Numbers
            if isDigit(ch) || (ch == 0x2E && i + 1 < n && isDigit(c[i + 1])) {
                let s = i
                let radix = i + 1 < n ? (c[i + 1] | 0x20) : 0
                if ch == 0x30 && (radix == 0x78 || radix == 0x62 || radix == 0x6F) { // 0x 0b 0o
                    i += 2
                    while i < n && (isHexDigit(c[i]) || c[i] == 0x5F) { i += 1 }
                } else {
                    while i < n && (isDigit(c[i]) || c[i] == 0x5F) { i += 1 }
                    if i + 1 < n && c[i] == 0x2E && isDigit(c[i + 1]) {
                        i += 1
                        while i < n && (isDigit(c[i]) || c[i] == 0x5F) { i += 1 }
                    }
                    if i < n && (c[i] | 0x20) == 0x65 { // exponent
                        var j = i + 1
                        if j < n && (c[j] == 0x2B || c[j] == 0x2D) { j += 1 }
                        if j < n && isDigit(c[j]) {
                            i = j
                            while i < n && isDigit(c[i]) { i += 1 }
                        }
                    }
                }
                while i < n && isASCIILetter(c[i]) { i += 1 } // suffixes such as L, f, n, j
                add(s, i, .number)
                continue
            }

            // Annotations / decorators
            if ch == 0x40 && i + 1 < n && isIdentStart(c[i + 1]) {
                let s = i
                i += 1
                while i < n && (isIdentPart(c[i]) || (c[i] == 0x2E && i + 1 < n && isIdentStart(c[i + 1]))) { i += 1 }
                add(s, i, .annotation)
                continue
            }

            // Identifiers and keywords
            if isIdentStart(ch) {
                let s = i
                i += 1
                while i < n && isIdentPart(c[i]) { i += 1 }
                if python, i < n, c[i] == 0x22 || c[i] == 0x27, isStringPrefix(c, s, i) {
                    i = scanString(c, from: i, language: language)
                    add(s, i, .string)
                    continue
                }
                let word = String(decoding: c[s..<i], as: UTF16.self)
                if keywords.contains(word) {
                    add(s, i, .keyword)
                } else if specials.contains(word) {
                    add(s, i, .special)
                } else if builtins.contains(word) {
                    add(s, i, .builtin)
                } else if followedByParen(i) {
                    add(s, i, .function)
                }
                continue
            }

            i += 1
        }
        return tokens
    }

    /// Returns the index just past the string that starts at `start`.
    /// Unterminated single-line strings stop at the end of the line.
    private static func scanString(_ c: [UInt16], from start: Int, language: Language) -> Int {
        let n = c.count
        let q = c[start]
        let tripleAllowed = language == .python || (language == .kotlin && q == 0x22)
        if tripleAllowed && start + 2 < n && c[start + 1] == q && c[start + 2] == q {
            let raw = language == .kotlin // Kotlin """ strings have no escapes
            var i = start + 3
            while i < n {
                if !raw && c[i] == 0x5C { i += 2; continue }
                if c[i] == q && i + 2 < n && c[i + 1] == q && c[i + 2] == q {
                    i += 3
                    while raw && i < n && c[i] == q { i += 1 }
                    return i
                }
                i += 1
            }
            return n
        }
        let multiline = q == 0x60
        var i = start + 1
        while i < n {
            let ch = c[i]
            if ch == 0x5C { i += 2; continue }
            if ch == q { return i + 1 }
            if ch == 0x0A && !multiline { return i }
            i += 1
        }
        return n
    }

    /// Python string prefixes: r, b, f, u and two-letter combinations such as rb / fr.
    private static func isStringPrefix(_ c: [UInt16], _ s: Int, _ e: Int) -> Bool {
        guard e - s <= 2 else { return false }
        for k in s..<e {
            switch c[k] | 0x20 {
            case 0x72, 0x62, 0x66, 0x75: continue // r b f u
            default: return false
            }
        }
        return true
    }

    @inline(__always) private static func isDigit(_ c: UInt16) -> Bool { c >= 0x30 && c <= 0x39 }

    @inline(__always) private static func isHexDigit(_ c: UInt16) -> Bool {
        isDigit(c) || ((c | 0x20) >= 0x61 && (c | 0x20) <= 0x66)
    }

    @inline(__always) private static func isASCIILetter(_ c: UInt16) -> Bool {
        (c | 0x20) >= 0x61 && (c | 0x20) <= 0x7A
    }

    @inline(__always) private static func isIdentStart(_ c: UInt16) -> Bool {
        isASCIILetter(c) || c == 0x5F || c == 0x24 || c >= 0x80
    }

    @inline(__always) private static func isIdentPart(_ c: UInt16) -> Bool {
        isIdentStart(c) || isDigit(c)
    }
}
