import AppKit

/// Bottom status bar: file path on the left; caret position, line ending, encoding, indent and language on the right.
final class StatusBarView: NSView {
    private let pathLabel = StatusBarView.makeLabel()
    private let positionLabel = StatusBarView.makeLabel()
    private let lineEndingLabel = StatusBarView.makeLabel()
    private let encodingLabel = StatusBarView.makeLabel()
    private let indentLabel = StatusBarView.makeLabel()
    private let languageLabel = StatusBarView.makeLabel()

    private static func makeLabel() -> NSTextField {
        let label = NSTextField(labelWithString: "")
        label.font = .systemFont(ofSize: 11.5)
        label.textColor = .secondaryLabelColor
        label.lineBreakMode = .byTruncatingHead
        return label
    }

    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        pathLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        let right = NSStackView(views: [positionLabel, lineEndingLabel, encodingLabel, indentLabel, languageLabel])
        right.spacing = 16
        let row = NSStackView(views: [pathLabel, right])
        row.distribution = .fill
        row.spacing = 16
        row.edgeInsets = NSEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
        row.translatesAutoresizingMaskIntoConstraints = false
        addSubview(row)
        NSLayoutConstraint.activate([
            row.leadingAnchor.constraint(equalTo: leadingAnchor),
            row.trailingAnchor.constraint(equalTo: trailingAnchor),
            row.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    override func draw(_ dirtyRect: NSRect) {
        Theme.chrome.setFill()
        bounds.fill()
        Theme.chromeBorder.setFill()
        NSRect(x: 0, y: bounds.height - 1, width: bounds.width, height: 1).fill()
    }

    func show(path: String, editor: EditorViewController?) {
        pathLabel.stringValue = path
        guard let editor else {
            [positionLabel, lineEndingLabel, encodingLabel, indentLabel, languageLabel].forEach { $0.stringValue = "" }
            return
        }
        let document = editor.document
        let caret = editor.caretPosition
        positionLabel.stringValue = "\(caret.line):\(caret.column)"
        lineEndingLabel.stringValue = document.lineEnding.rawValue
        encodingLabel.stringValue = document.encodingName
        indentLabel.stringValue = L("Spaces: %ld", document.language?.indentWidth ?? 4)
        switch (document.language, PreviewKind(url: document.url)) {
        case let (language?, _): languageLabel.stringValue = language.displayName
        case (nil, .markdown): languageLabel.stringValue = "Markdown"
        case (nil, .html): languageLabel.stringValue = "HTML"
        case (nil, nil): languageLabel.stringValue = L("Plain Text")
        }
    }
}

/// Shown when no tab is open.
final class EmptyEditorView: NSView {
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        let hints: [(String, String)] = [
            (L("Search Everywhere"), L("Double ⇧")),
            (L("Go to File"), "⇧⌘O"),
            (L("Open Folder"), "⌘O"),
            (L("Project View"), "⌘1"),
        ]
        let rows = hints.map { title, key -> NSView in
            let titleLabel = NSTextField(labelWithString: title)
            titleLabel.font = .systemFont(ofSize: 13)
            titleLabel.textColor = .secondaryLabelColor
            titleLabel.alignment = .right
            titleLabel.lineBreakMode = .byTruncatingTail
            titleLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
            let keyLabel = NSTextField(labelWithString: key)
            keyLabel.font = .systemFont(ofSize: 13)
            keyLabel.textColor = Theme.accent
            let row = NSStackView(views: [titleLabel, keyLabel])
            row.spacing = 12
            return row
        }
        let column = NSStackView(views: rows)
        column.orientation = .vertical
        column.alignment = .leading
        column.spacing = 10
        column.translatesAutoresizingMaskIntoConstraints = false
        addSubview(column)
        NSLayoutConstraint.activate([
            column.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -40),
            column.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    override func draw(_ dirtyRect: NSRect) {
        Theme.editorBackground.setFill()
        bounds.fill()
    }
}
