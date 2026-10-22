import AppKit

/// Colors tokens with layout-manager temporary attributes.
/// Temporary attributes only affect drawing, so recoloring never invalidates layout,
/// and only the visible range is recolored (on edit and on scroll).
@MainActor
final class SyntaxHighlighter {
    private(set) var language: Language?
    weak var textView: NSTextView?
    private var tokens: [Token] = []

    init(language: Language?) {
        self.language = language
    }

    func setLanguage(_ language: Language?, buffer: [UInt16]) {
        self.language = language
        if let lm = textView?.layoutManager, let length = textView?.textStorage?.length {
            lm.removeTemporaryAttribute(.foregroundColor, forCharacterRange: NSRange(location: 0, length: length))
        }
        update(buffer: buffer)
    }

    func update(buffer: [UInt16]) {
        guard let language else {
            tokens = []
            return
        }
        tokens = Lexer.tokenize(buffer, language: language)
        applyVisible()
    }

    func applyVisible() {
        guard language != nil,
              let tv = textView,
              let lm = tv.layoutManager,
              let container = tv.textContainer,
              let length = tv.textStorage?.length,
              length > 0 else { return }
        let visible = tv.visibleRect.offsetBy(dx: -tv.textContainerOrigin.x, dy: -tv.textContainerOrigin.y)
        let glyphs = lm.glyphRange(forBoundingRect: visible, in: container)
        let chars = lm.characterRange(forGlyphRange: glyphs, actualGlyphRange: nil)
        let start = max(0, chars.location - 2000)
        let end = min(length, NSMaxRange(chars) + 2000)
        guard end > start else { return }
        lm.removeTemporaryAttribute(.foregroundColor, forCharacterRange: NSRange(location: start, length: end - start))

        var lo = 0
        var hi = tokens.count
        while lo < hi {
            let mid = (lo + hi) / 2
            if tokens[mid].location + tokens[mid].length <= start { lo = mid + 1 } else { hi = mid }
        }
        var k = lo
        while k < tokens.count && tokens[k].location < end {
            let t = tokens[k]
            let s = max(t.location, start)
            let e = min(t.location + t.length, end)
            if e > s {
                lm.addTemporaryAttribute(.foregroundColor, value: Theme.color(for: t.kind), forCharacterRange: NSRange(location: s, length: e - s))
            }
            k += 1
        }
    }
}
