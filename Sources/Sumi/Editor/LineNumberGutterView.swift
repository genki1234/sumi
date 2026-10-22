import AppKit

/// Line-number gutter, placed to the left of the editor's scroll view.
/// It is a plain view rather than an NSRulerView: on macOS 26 and later a scroll view's ruler is drawn as a
/// floating banner that covers the text and the tab bar above it.
/// Line starts are cached from the shared UTF-16 buffer so the visible lines are found by binary search.
final class LineNumberGutterView: NSView {
    private(set) var lineStarts: [Int] = [0]
    private weak var codeView: NSTextView?
    private var ruleThickness: CGFloat = 44
    private var widthConstraint: NSLayoutConstraint!

    init(textView: NSTextView) {
        codeView = textView
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        widthConstraint = widthAnchor.constraint(equalToConstant: ruleThickness)
        widthConstraint.isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    override var isFlipped: Bool { true }

    private var numberFont: NSFont {
        NSFont.monospacedDigitSystemFont(ofSize: max(9, Preferences.fontSize - 1), weight: .regular)
    }

    func update(buffer: [UInt16]) {
        var starts = [0]
        starts.reserveCapacity(buffer.count / 32 + 1)
        for (index, ch) in buffer.enumerated() where ch == 0x0A {
            starts.append(index + 1)
        }
        lineStarts = starts
        let digits = max(3, String(starts.count).count)
        let digitWidth = ("8" as NSString).size(withAttributes: [.font: numberFont]).width
        let thickness = ceil(digitWidth * CGFloat(digits) + 30)
        if abs(thickness - ruleThickness) > 0.5 {
            ruleThickness = thickness
            widthConstraint.constant = thickness
        }
        needsDisplay = true
    }

    func lineIndex(of charIndex: Int) -> Int {
        var lo = 0
        var hi = lineStarts.count - 1
        while lo < hi {
            let mid = (lo + hi + 1) / 2
            if lineStarts[mid] <= charIndex { lo = mid } else { hi = mid - 1 }
        }
        return lo
    }

    override func draw(_ dirtyRect: NSRect) {
        Theme.editorBackground.setFill()
        dirtyRect.fill()
        guard let tv = codeView, let lm = tv.layoutManager, let container = tv.textContainer else { return }
        let length = tv.textStorage?.length ?? 0
        let visible = tv.visibleRect.offsetBy(dx: -tv.textContainerOrigin.x, dy: -tv.textContainerOrigin.y)
        let glyphs = lm.glyphRange(forBoundingRect: visible, in: container)
        let chars = lm.characterRange(forGlyphRange: glyphs, actualGlyphRange: nil)
        let caretLine = lineIndex(of: tv.selectedRange().location)
        let font = numberFont
        let baselineShift = lm.defaultBaselineOffset(for: tv.font ?? font) - font.ascender
        let rightPadding: CGFloat = 16

        var line = lineIndex(of: chars.location)
        while line < lineStarts.count {
            let start = lineStarts[line]
            if start > NSMaxRange(chars) { break }
            let fragment: NSRect
            if start >= length {
                fragment = lm.extraLineFragmentRect
                if fragment.height == 0 { break }
            } else {
                fragment = lm.lineFragmentRect(forGlyphAt: lm.glyphIndexForCharacter(at: start), effectiveRange: nil)
            }
            let y = convert(NSPoint(x: 0, y: fragment.minY + tv.textContainerOrigin.y), from: tv).y + baselineShift
            let label = String(line + 1) as NSString
            let attributes: [NSAttributedString.Key: Any] = [
                .font: font,
                .foregroundColor: line == caretLine ? Theme.currentLineNumber : Theme.lineNumber,
            ]
            let width = label.size(withAttributes: attributes).width
            label.draw(at: NSPoint(x: ruleThickness - rightPadding - width, y: y), withAttributes: attributes)
            line += 1
        }
    }
}
