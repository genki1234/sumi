import AppKit

/// Line and selection commands of the editor (Edit menu). They are reached through the responder chain,
/// so their shortcuts do nothing to the terminal, the Project view or a search field, which keep their
/// own keys. Every change goes through shouldChangeText / didChangeText: one undo step per command,
/// and the document, highlighter and autosave see it like typing.
extension CodeTextView {
    static let lineEditingActions: Set<Selector> = [
        #selector(duplicateLineOrSelection(_:)), #selector(deleteLine(_:)), #selector(joinLines(_:)),
        #selector(toggleCase(_:)), #selector(commentWithLineComment(_:)), #selector(commentWithBlockComment(_:)),
        #selector(moveLineUp(_:)),
        #selector(moveLineDown(_:)), #selector(startNewLine(_:)), #selector(startNewLineBeforeCurrent(_:)),
    ]

    private var text: NSString { textStorage?.mutableString ?? "" }

    @discardableResult
    private func edit(_ range: NSRange, _ replacement: String) -> Bool {
        guard let storage = textStorage, shouldChangeText(in: range, replacementString: replacement) else { return false }
        storage.replaceCharacters(in: range, with: replacement)
        didChangeText()
        return true
    }

    private func select(_ range: NSRange) {
        setSelectedRange(range)
        scrollRangeToVisible(range)
    }

    /// The whole lines the selection touches, with their line breaks. A selection that ends at the
    /// start of a line does not take that line.
    private var selectedLines: NSRange {
        let sel = selectedRange()
        var end = NSMaxRange(sel)
        if sel.length > 0, text.character(at: end - 1) == 0x0A { end -= 1 }
        return text.lineRange(for: NSRange(location: sel.location, length: end - sel.location))
    }

    private func lineContentsEnd(at location: Int) -> Int {
        var end = 0
        text.getLineStart(nil, end: nil, contentsEnd: &end, for: NSRange(location: min(location, text.length), length: 0))
        return end
    }

    private static func indent(of line: String) -> String {
        String(line.prefix(while: { $0 == " " || $0 == "\t" }))
    }

    // MARK: Duplicate, delete, join, case

    /// ⌘D: copies the selection after itself, or the current lines below themselves.
    @objc func duplicateLineOrSelection(_ sender: Any?) {
        let sel = selectedRange()
        if sel.length > 0 {
            let copy = text.substring(with: sel)
            if edit(NSRange(location: NSMaxRange(sel), length: 0), copy) {
                select(NSRange(location: NSMaxRange(sel), length: sel.length))
            }
            return
        }
        let lines = selectedLines
        let block = text.substring(with: lines)
        // The last line has no line break of its own: the copy starts with one.
        let copy = (block as NSString).hasSuffix("\n") ? block : "\n" + block
        if edit(NSRange(location: NSMaxRange(lines), length: 0), copy) {
            select(NSRange(location: sel.location + (copy as NSString).length, length: 0))
        }
    }

    /// ⌘⌫: removes the lines the selection touches; the caret keeps its column on the line that moves up.
    @objc func deleteLine(_ sender: Any?) {
        var lines = selectedLines
        // The empty last line has no characters of its own; it goes with the break before it.
        guard lines.length > 0 || lines.location > 0 else { return }
        let column = selectedRange().location - lines.location
        if NSMaxRange(lines) == text.length, lines.location > 0, !text.substring(with: lines).hasSuffix("\n") {
            // Last line without a line break: take the break before it, so no empty line is left behind.
            lines = NSRange(location: lines.location - 1, length: lines.length + 1)
        }
        guard edit(lines, "") else { return }
        let start = text.lineRange(for: NSRange(location: min(lines.location, text.length), length: 0)).location
        select(NSRange(location: min(start + column, lineContentsEnd(at: start)), length: 0))
    }

    /// ⌃⇧J: joins the selected lines, or the current line with the next, with single spaces.
    @objc func joinLines(_ sender: Any?) {
        var lines = selectedLines
        var parts = text.substring(with: lines).components(separatedBy: "\n")
        if parts.count > 1, parts.last == "" { parts.removeLast() }
        if parts.count == 1 {
            guard NSMaxRange(lines) < text.length else { return }
            lines = NSUnionRange(lines, text.lineRange(for: NSRange(location: NSMaxRange(lines), length: 0)))
            parts = text.substring(with: lines).components(separatedBy: "\n")
            if parts.last == "" { parts.removeLast() }
        }
        let keepsBreak = text.substring(with: lines).hasSuffix("\n")
        var joined = parts[0]
        while joined.last == " " || joined.last == "\t" { joined.removeLast() }
        let caret = lines.location + (joined as NSString).length
        for part in parts.dropFirst() {
            let trimmed = part.trimmingCharacters(in: .whitespaces)
            if !trimmed.isEmpty { joined += (joined.isEmpty ? "" : " ") + trimmed }
        }
        if edit(lines, joined + (keepsBreak ? "\n" : "")) { select(NSRange(location: caret, length: 0)) }
    }

    /// ⇧⌘U: upper case, or lower case when the text is already all upper case. Without a selection,
    /// the word at the caret.
    @objc func toggleCase(_ sender: Any?) {
        let sel = selectedRange()
        let range = sel.length > 0 ? sel : wordRange(around: sel)
        guard range.length > 0 else { return }
        let original = text.substring(with: range)
        let upper = original.uppercased()
        let replacement = original == upper ? original.lowercased() : upper
        guard edit(range, replacement) else { return }
        select(sel.length > 0 ? NSRange(location: range.location, length: (replacement as NSString).length) : sel)
    }

    // MARK: Comment

    /// ⌘/: comments the lines out, or back in when they all are comments. Without a selection the
    /// caret then moves to the next line, so repeated presses walk down the file.
    @objc func commentWithLineComment(_ sender: Any?) {
        guard let syntax = CommentSyntax.of(language) else { return }
        let sel = selectedRange()
        let lines = selectedLines
        let block = text.substring(with: lines)
        var parts = block.components(separatedBy: "\n")
        let keepsBreak = (block as NSString).hasSuffix("\n")
        if keepsBreak { parts.removeLast() }
        let filled = parts.indices.filter { !parts[$0].trimmingCharacters(in: .whitespaces).isEmpty }
        let targets = filled.isEmpty ? Array(parts.indices) : filled

        func body(_ line: String) -> Substring { line.dropFirst(Self.indent(of: line).count) }
        let commented: Bool
        switch syntax {
        case .line(let token):
            commented = targets.allSatisfy { body(parts[$0]).hasPrefix(token) }
        case .block(let open, let close):
            commented = targets.allSatisfy {
                let trimmed = parts[$0].trimmingCharacters(in: .whitespaces)
                return trimmed.hasPrefix(open) && trimmed.hasSuffix(close) && trimmed.count >= open.count + close.count
            }
        }
        // New comments line up at the smallest indentation of the lines.
        let column = targets.map { Self.indent(of: parts[$0]).count }.min() ?? 0
        for i in targets {
            let line = parts[i]
            switch (syntax, commented) {
            case (.line(let token), true):
                var rest = body(line).dropFirst(token.count)
                if rest.first == " " { rest = rest.dropFirst() }
                parts[i] = Self.indent(of: line) + rest
            case (.line(let token), false):
                let rest = line.dropFirst(column)
                parts[i] = String(line.prefix(column)) + token + (rest.isEmpty ? "" : " ") + rest
            case (.block(let open, let close), true):
                var inner = body(line).trimmingCharacters(in: .whitespaces)
                inner = String(inner.dropFirst(open.count).dropLast(close.count))
                if inner.hasPrefix(" ") { inner.removeFirst() }
                if inner.hasSuffix(" ") { inner.removeLast() }
                parts[i] = Self.indent(of: line) + inner
            case (.block(let open, let close), false):
                parts[i] = Self.indent(of: line) + open + " " + body(line) + " " + close
            }
        }
        let replacement = parts.joined(separator: "\n") + (keepsBreak ? "\n" : "")
        guard edit(lines, replacement) else { return }
        let changed = (replacement as NSString).length
        if sel.length > 0 || parts.count > 1 {
            select(NSRange(location: lines.location, length: changed - (keepsBreak ? 1 : 0)))
        } else if keepsBreak {
            let next = lines.location + changed
            select(NSRange(location: min(next + sel.location - lines.location, lineContentsEnd(at: next)), length: 0))
        } else {
            select(NSRange(location: min(max(lines.location, sel.location + changed - lines.length), lineContentsEnd(at: lines.location)), length: 0))
        }
    }

    /// ⌥⌘/: wraps the selection in the language's block comment, or takes the comment away when the
    /// selection or the caret is inside one. With no selection outside a comment, it inserts an empty
    /// comment and puts the caret inside it.
    @objc func commentWithBlockComment(_ sender: Any?) {
        guard let (open, close) = CommentSyntax.block(of: language) else { return }
        let sel = selectedRange()
        let openLength = (open as NSString).length
        if let comment = blockComment(containing: sel, open: open, close: close) {
            let inner = NSRange(location: comment.location + openLength, length: comment.length - openLength - (close as NSString).length)
            guard edit(comment, text.substring(with: inner)) else { return }
            // The selection keeps the same text; parts of it that were markers are gone.
            func moved(_ location: Int) -> Int { min(max(location - openLength, comment.location), comment.location + inner.length) }
            let start = moved(sel.location)
            select(NSRange(location: start, length: moved(NSMaxRange(sel)) - start))
            return
        }
        let wrapped = open + text.substring(with: sel) + close
        guard edit(sel, wrapped) else { return }
        if sel.length == 0 {
            select(NSRange(location: sel.location + openLength, length: 0))
        } else {
            select(NSRange(location: sel.location, length: (wrapped as NSString).length))
        }
    }

    /// The block comment, markers included, that contains the range: the nearest opening marker at or
    /// before it whose first closing marker ends at or after it.
    private func blockComment(containing range: NSRange, open: String, close: String) -> NSRange? {
        let searchEnd = min(text.length, range.location + (open as NSString).length)
        let opening = text.range(of: open, options: [.literal, .backwards], range: NSRange(location: 0, length: searchEnd))
        guard opening.location != NSNotFound else { return nil }
        let from = NSMaxRange(opening)
        let closing = text.range(of: close, options: .literal, range: NSRange(location: from, length: text.length - from))
        guard closing.location != NSNotFound, NSMaxRange(closing) >= NSMaxRange(range) else { return nil }
        return NSRange(location: opening.location, length: NSMaxRange(closing) - opening.location)
    }

    // MARK: Move lines

    /// ⌥⇧↑: swaps the selected lines with the line above; the selection moves with them.
    @objc func moveLineUp(_ sender: Any?) {
        let sel = selectedRange()
        let lines = selectedLines
        guard lines.location > 0 else { return }
        let previous = text.lineRange(for: NSRange(location: lines.location - 1, length: 0))
        var block = text.substring(with: lines)
        var above = text.substring(with: previous)
        if !(block as NSString).hasSuffix("\n") {
            block += "\n"
            above = String(above.dropLast())
        }
        if edit(NSUnionRange(previous, lines), block + above) {
            select(NSRange(location: sel.location - previous.length, length: sel.length))
        }
    }

    /// ⌥⇧↓: swaps the selected lines with the line below; the selection moves with them.
    @objc func moveLineDown(_ sender: Any?) {
        let sel = selectedRange()
        let lines = selectedLines
        guard NSMaxRange(lines) < text.length else { return }
        let next = text.lineRange(for: NSRange(location: NSMaxRange(lines), length: 0))
        var block = text.substring(with: lines)
        var below = text.substring(with: next)
        if !(below as NSString).hasSuffix("\n") {
            below += "\n"
            block = String(block.dropLast())
        }
        if edit(NSUnionRange(lines, next), below + block) {
            select(NSRange(location: sel.location + (below as NSString).length, length: sel.length))
        }
    }

    // MARK: New lines

    /// ⇧↩: a new line below the current one, wherever the caret is in it.
    @objc func startNewLine(_ sender: Any?) {
        setSelectedRange(NSRange(location: lineContentsEnd(at: selectedRange().location), length: 0))
        insertNewline(sender)
    }

    /// ⌥⌘↩: a new line above the current one, indented like it.
    @objc func startNewLineBeforeCurrent(_ sender: Any?) {
        let start = text.lineRange(for: NSRange(location: selectedRange().location, length: 0)).location
        let indent = Self.indent(of: text.substring(with: NSRange(location: start, length: lineContentsEnd(at: start) - start)))
        if edit(NSRange(location: start, length: 0), indent + "\n") {
            select(NSRange(location: start + (indent as NSString).length, length: 0))
        }
    }

    // MARK: Extend / shrink selection

    /// ⌥↑: grows the selection to the next larger unit around it: word, string or bracket contents,
    /// the same with its delimiters, the lines, the enclosing brackets, and finally the whole file.
    @objc func extendSelection(_ sender: Any?) {
        let current = selectedRange()
        let candidates = expansionCandidates(around: current).filter {
            $0.location <= current.location && NSMaxRange($0) >= NSMaxRange(current) && $0.length > current.length
        }
        guard let next = candidates.min(by: { $0.length < $1.length }) else { return }
        // Any selection change clears the history (CodeTextView); this one keeps it.
        let history = selectionHistory + [current]
        select(next)
        selectionHistory = history
    }

    /// ⌥↓: goes back one step of Extend Selection.
    @objc func shrinkSelection(_ sender: Any?) {
        guard let previous = selectionHistory.last else { return }
        let history = Array(selectionHistory.dropLast())
        select(previous)
        selectionHistory = history
    }

    private func wordRange(around sel: NSRange) -> NSRange {
        func isWord(_ c: unichar) -> Bool {
            c == 0x5F || (UnicodeScalar(c).map { CharacterSet.alphanumerics.contains($0) } ?? false)
        }
        var start = sel.location
        var end = NSMaxRange(sel)
        while start > 0, isWord(text.character(at: start - 1)) { start -= 1 }
        while end < text.length, isWord(text.character(at: end)) { end += 1 }
        return NSRange(location: start, length: end - start)
    }

    private func expansionCandidates(around sel: NSRange) -> [NSRange] {
        var candidates = [wordRange(around: sel), NSRange(location: 0, length: text.length)]

        // Quotes on the caret's line, paired left to right; a backslash escapes the next character.
        let line = text.lineRange(for: NSRange(location: sel.location, length: 0))
        let lineEnd = lineContentsEnd(at: line.location)
        if NSMaxRange(sel) <= lineEnd {
            var open: (index: Int, quote: unichar)?
            var i = line.location
            while i < lineEnd {
                let c = text.character(at: i)
                if c == 0x5C { i += 2; continue }
                if c == 0x22 || c == 0x27 || c == 0x60 {
                    if let o = open, o.quote == c {
                        if o.index < sel.location && i >= NSMaxRange(sel) {
                            candidates.append(NSRange(location: o.index + 1, length: i - o.index - 1))
                            candidates.append(NSRange(location: o.index, length: i - o.index + 1))
                        }
                        open = nil
                    } else if open == nil {
                        open = (i, c)
                    }
                }
                i += 1
            }
        }

        // The lines, without and with their indentation.
        let lines = selectedLines
        let contentsEnd = lineContentsEnd(at: max(lines.location, NSMaxRange(lines) - 1))
        var firstText = lines.location
        while firstText < contentsEnd, [0x20, 0x09].contains(text.character(at: firstText)) { firstText += 1 }
        candidates.append(NSRange(location: firstText, length: contentsEnd - firstText))
        candidates.append(NSRange(location: lines.location, length: contentsEnd - lines.location))

        // Enclosing bracket pairs, innermost first: their contents, then with the brackets.
        var from = sel.location
        while let opener = unmatchedOpener(before: from) {
            guard let closer = matchingCloser(of: opener) else { break }
            if closer >= NSMaxRange(sel) {
                candidates.append(NSRange(location: opener + 1, length: closer - opener - 1))
                candidates.append(NSRange(location: opener, length: closer - opener + 1))
            }
            from = opener
        }
        return candidates
    }

    private func unmatchedOpener(before index: Int) -> Int? {
        var depth = 0
        var i = index - 1
        while i >= 0 {
            switch text.character(at: i) {
            case 0x29, 0x5D, 0x7D: depth += 1
            case 0x28, 0x5B, 0x7B:
                if depth == 0 { return i }
                depth -= 1
            default: break
            }
            i -= 1
        }
        return nil
    }

    private func matchingCloser(of opener: Int) -> Int? {
        var depth = 0
        var i = opener + 1
        while i < text.length {
            switch text.character(at: i) {
            case 0x28, 0x5B, 0x7B: depth += 1
            case 0x29, 0x5D, 0x7D:
                if depth == 0 { return i }
                depth -= 1
            default: break
            }
            i += 1
        }
        return nil
    }
}
