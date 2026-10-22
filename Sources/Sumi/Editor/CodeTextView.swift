import AppKit

/// NSTextView with code-editing behavior: current-line highlight, auto-indent, soft tabs and block indent.
final class CodeTextView: NSTextView {
    var language: Language?
    var indentWidth = 4

    override func drawBackground(in rect: NSRect) {
        super.drawBackground(in: rect)
        guard let lineRect = currentLineRect(), lineRect.intersects(rect) else { return }
        Theme.currentLine.setFill()
        lineRect.fill()
    }

    private func currentLineRect() -> NSRect? {
        guard let lm = layoutManager, let storage = textStorage else { return nil }
        let sel = selectedRange()
        guard sel.length == 0 else { return nil }
        var fragment: NSRect
        if sel.location >= storage.length && !lm.extraLineFragmentRect.isEmpty {
            fragment = lm.extraLineFragmentRect
        } else {
            let ns = storage.mutableString
            let paragraph = ns.lineRange(for: NSRange(location: min(sel.location, storage.length), length: 0))
            let glyphs = lm.glyphRange(forCharacterRange: paragraph, actualCharacterRange: nil)
            guard glyphs.length > 0 else { return nil }
            let first = lm.lineFragmentRect(forGlyphAt: glyphs.location, effectiveRange: nil)
            let last = lm.lineFragmentRect(forGlyphAt: NSMaxRange(glyphs) - 1, effectiveRange: nil)
            fragment = NSRect(x: 0, y: first.minY, width: 0, height: last.maxY - first.minY)
        }
        return NSRect(x: 0, y: fragment.minY + textContainerOrigin.y, width: bounds.width, height: fragment.height)
    }

    // MARK: Auto-indent

    override func insertNewline(_ sender: Any?) {
        guard let ns = textStorage?.mutableString else { return super.insertNewline(sender) }
        let sel = selectedRange()
        let lineStart = ns.lineRange(for: NSRange(location: sel.location, length: 0)).location
        var indentEnd = lineStart
        while indentEnd < sel.location {
            let c = ns.character(at: indentEnd)
            guard c == 0x20 || c == 0x09 else { break }
            indentEnd += 1
        }
        let indent = ns.substring(with: NSRange(location: lineStart, length: indentEnd - lineStart))
        var before: unichar = 0
        var k = sel.location - 1
        while k >= lineStart {
            let c = ns.character(at: k)
            if c != 0x20 && c != 0x09 { before = c; break }
            k -= 1
        }
        let afterIndex = NSMaxRange(sel)
        let after: unichar = afterIndex < ns.length ? ns.character(at: afterIndex) : 0
        let opens = before == 0x7B || before == 0x28 || before == 0x5B || (language == .python && before == 0x3A)
        let unit = String(repeating: " ", count: indentWidth)

        if opens, let closer = Self.closer(for: before), after == closer {
            // Between a bracket pair: put the closing bracket on its own line.
            insertText("\n" + indent + unit + "\n" + indent, replacementRange: sel)
            setSelectedRange(NSRange(location: sel.location + 1 + (indent + unit).utf16.count, length: 0))
        } else if opens {
            insertText("\n" + indent + unit, replacementRange: sel)
        } else {
            insertText("\n" + indent, replacementRange: sel)
        }
        scrollRangeToVisible(selectedRange())
    }

    private static func closer(for opener: unichar) -> unichar? {
        switch opener {
        case 0x7B: 0x7D
        case 0x28: 0x29
        case 0x5B: 0x5D
        default: nil
        }
    }

    // MARK: Tab / Shift-Tab

    override func insertTab(_ sender: Any?) {
        guard let ns = textStorage?.mutableString else { return super.insertTab(sender) }
        let sel = selectedRange()
        if sel.length > 0 && ns.substring(with: sel).contains("\n") {
            shiftLines(indent: true)
            return
        }
        let lineStart = ns.lineRange(for: NSRange(location: sel.location, length: 0)).location
        let column = sel.location - lineStart
        insertText(String(repeating: " ", count: indentWidth - column % indentWidth), replacementRange: sel)
    }

    override func insertBacktab(_ sender: Any?) {
        shiftLines(indent: false)
    }

    private func shiftLines(indent: Bool) {
        guard let storage = textStorage else { return }
        let ns = storage.mutableString
        let sel = selectedRange()
        let first = ns.lineRange(for: NSRange(location: sel.location, length: 0))
        let lastIndex = sel.length > 0 ? NSMaxRange(sel) - 1 : sel.location
        let last = ns.lineRange(for: NSRange(location: lastIndex, length: 0))
        let range = NSUnionRange(first, last)
        let text = ns.substring(with: range)
        let unit = String(repeating: " ", count: indentWidth)
        let lines = text.components(separatedBy: "\n")
        let shifted = lines.map { line -> String in
            if line.isEmpty { return line }
            if indent { return unit + line }
            var drop = 0
            for ch in line.prefix(indentWidth) {
                guard ch == " " else { break }
                drop += 1
            }
            if drop == 0 && line.hasPrefix("\t") { drop = 1 }
            return String(line.dropFirst(drop))
        }
        let replacement = shifted.joined(separator: "\n")
        guard replacement != text, shouldChangeText(in: range, replacementString: replacement) else { return }
        storage.replaceCharacters(in: range, with: replacement)
        didChangeText()
        setSelectedRange(NSRange(location: range.location, length: (replacement as NSString).length))
    }
}
