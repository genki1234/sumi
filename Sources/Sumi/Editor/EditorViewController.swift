import AppKit

/// One editor tab: scroll view + code text view + line-number gutter + highlighter.
final class EditorViewController: NSViewController, NSTextViewDelegate, NSSplitViewDelegate {
    let document: TextDocument
    let textView: CodeTextView
    private let scrollView = NSScrollView()
    private var gutter: LineNumberGutterView?
    private let highlighter: SyntaxHighlighter
    /// Markdown and HTML files: the rendered page next to (or instead of) the text.
    private var preview: PreviewViewController?
    private var splitView: NSSplitView?
    private var modeControl: NSSegmentedControl?
    private(set) var previewMode = PreviewMode.editor
    private var autosaveTask: Task<Void, Never>?
    private var autosaveFailed = false
    var onSaveError: ((Error) -> Void)?
    private var previewTask: Task<Void, Never>?
    private var previewIsStale = true
    /// Share of the width the text takes when text and preview are side by side.
    private var editorFraction: CGFloat = 0.5
    /// Called on edits and caret moves. The argument is true when the dirty state changed.
    var onStateChange: ((Bool) -> Void)?

    init(document: TextDocument) {
        self.document = document
        // TextKit 1 stack: temporary attributes give layout-free recoloring and
        // the gutter can read line fragments directly from the layout manager.
        let layoutManager = NSLayoutManager()
        layoutManager.allowsNonContiguousLayout = true
        document.textStorage.addLayoutManager(layoutManager)
        let container = NSTextContainer(size: NSSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude))
        container.widthTracksTextView = false
        layoutManager.addTextContainer(container)
        textView = CodeTextView(frame: .zero, textContainer: container)
        highlighter = SyntaxHighlighter(language: document.language)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    override func loadView() {
        configureTextView()
        scrollView.documentView = textView
        scrollView.hasVerticalScroller = true
        scrollView.hasHorizontalScroller = true
        scrollView.autohidesScrollers = true
        // The text view paints the editor background itself (it is kept at least as large as the viewport).
        // A scroll view that draws a background extends it upward over the tab bar on macOS 26 and later.
        scrollView.drawsBackground = false
        // Code reads left to right even when the UI language is Arabic or Hebrew.
        scrollView.userInterfaceLayoutDirection = .leftToRight
        textView.userInterfaceLayoutDirection = .leftToRight
        let gutter = LineNumberGutterView(textView: textView)
        self.gutter = gutter
        let container = NSView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(gutter)
        container.addSubview(scrollView)
        // left/right instead of leading/trailing: the gutter stays on the left in right-to-left UI languages.
        NSLayoutConstraint.activate([
            gutter.leftAnchor.constraint(equalTo: container.leftAnchor),
            gutter.topAnchor.constraint(equalTo: container.topAnchor),
            gutter.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            scrollView.leftAnchor.constraint(equalTo: gutter.rightAnchor),
            scrollView.rightAnchor.constraint(equalTo: container.rightAnchor),
            scrollView.topAnchor.constraint(equalTo: container.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: container.bottomAnchor),
        ])
        scrollView.contentView.postsBoundsChangedNotifications = true
        NotificationCenter.default.addObserver(
            self, selector: #selector(didScroll(_:)),
            name: NSView.boundsDidChangeNotification, object: scrollView.contentView
        )
        if let kind = PreviewKind(url: document.url) {
            view = makePreviewLayout(editor: container, kind: kind)
        } else {
            view = container
        }
        highlighter.textView = textView
        applyWrap(Preferences.softWrap)
        refreshAnalysis()
    }

    private func configureTextView() {
        let tv = textView
        tv.delegate = self
        tv.isRichText = false
        tv.importsGraphics = false
        tv.allowsUndo = true
        tv.usesFindBar = true
        tv.isIncrementalSearchingEnabled = true
        tv.isAutomaticQuoteSubstitutionEnabled = false
        tv.isAutomaticDashSubstitutionEnabled = false
        tv.isAutomaticTextReplacementEnabled = false
        tv.isAutomaticSpellingCorrectionEnabled = false
        tv.isAutomaticLinkDetectionEnabled = false
        tv.isAutomaticDataDetectionEnabled = false
        tv.isAutomaticTextCompletionEnabled = false
        tv.isContinuousSpellCheckingEnabled = false
        tv.isGrammarCheckingEnabled = false
        tv.smartInsertDeleteEnabled = false
        tv.inlinePredictionType = .no
        if #available(macOS 15.0, *) { tv.writingToolsBehavior = .none }
        tv.drawsBackground = true
        tv.backgroundColor = Theme.editorBackground
        tv.insertionPointColor = Theme.caret
        tv.selectedTextAttributes = [.backgroundColor: Theme.selection]
        tv.textContainerInset = NSSize(width: 4, height: 6)
        tv.typingAttributes = Theme.textAttributes()
        tv.minSize = .zero
        tv.maxSize = NSSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude)
        tv.isVerticallyResizable = true
        tv.language = document.language
        tv.indentWidth = document.language?.indentWidth ?? 4
    }

    func applyWrap(_ wrap: Bool) {
        guard let container = textView.textContainer else { return }
        if wrap {
            scrollView.hasHorizontalScroller = false
            textView.isHorizontallyResizable = false
            textView.autoresizingMask = [.width]
            let width = scrollView.contentSize.width
            textView.setFrameSize(NSSize(width: width, height: textView.frame.height))
            container.containerSize = NSSize(width: width, height: CGFloat.greatestFiniteMagnitude)
            container.widthTracksTextView = true
        } else {
            scrollView.hasHorizontalScroller = true
            textView.isHorizontallyResizable = true
            textView.autoresizingMask = [.width, .height]
            container.widthTracksTextView = false
            container.containerSize = NSSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude)
        }
        fitTextViewToViewport()
        highlighter.applyVisible()
        gutter?.needsDisplay = true
    }

    override func viewDidLayout() {
        super.viewDidLayout()
        fitTextViewToViewport()
    }

    // MARK: Preview

    var hasPreview: Bool { preview != nil }

    private func makePreviewLayout(editor: NSView, kind: PreviewKind) -> NSView {
        let preview = PreviewViewController(kind: kind, documentURL: document.url)
        addChild(preview)
        self.preview = preview
        let split = NSSplitView()
        split.isVertical = true
        split.dividerStyle = .thin
        split.userInterfaceLayoutDirection = .leftToRight
        split.delegate = self
        split.addSubview(editor)
        split.addSubview(preview.view)
        splitView = split

        let control = NSSegmentedControl(images: [
            NSImage(systemSymbolName: "text.alignleft", accessibilityDescription: L("Editor Only"))!,
            NSImage(systemSymbolName: "rectangle.split.2x1", accessibilityDescription: L("Editor and Preview"))!,
            NSImage(systemSymbolName: "eye", accessibilityDescription: L("Preview Only"))!,
        ], trackingMode: .selectOne, target: self, action: #selector(modeChanged(_:)))
        control.setToolTip(L("Editor Only"), forSegment: 0)
        control.setToolTip(L("Editor and Preview"), forSegment: 1)
        control.setToolTip(L("Preview Only"), forSegment: 2)
        control.controlSize = .small
        control.segmentStyle = .rounded
        modeControl = control

        let root = NSView()
        for sub in [split, control] {
            sub.translatesAutoresizingMaskIntoConstraints = false
            root.addSubview(sub)
        }
        NSLayoutConstraint.activate([
            split.topAnchor.constraint(equalTo: root.topAnchor),
            split.bottomAnchor.constraint(equalTo: root.bottomAnchor),
            split.leftAnchor.constraint(equalTo: root.leftAnchor),
            split.rightAnchor.constraint(equalTo: root.rightAnchor),
            control.topAnchor.constraint(equalTo: root.topAnchor, constant: 6),
            control.rightAnchor.constraint(equalTo: root.rightAnchor, constant: -18),
        ])
        preview.onOpenFile = { [weak self] url in self?.onOpenFile?(url) }
        setPreviewMode(PreviewMode(rawValue: Preferences.previewMode) ?? .split)
        return root
    }

    /// Opens a file linked from the preview.
    var onOpenFile: ((URL) -> Void)?

    @objc private func modeChanged(_ sender: NSSegmentedControl) {
        guard let mode = PreviewMode(rawValue: sender.selectedSegment) else { return }
        Preferences.previewMode = mode.rawValue
        setPreviewMode(mode)
    }

    /// Switches between the text and the preview, keeping the last split when both come back.
    func togglePreview() {
        guard hasPreview else { return }
        let mode: PreviewMode = previewMode == .editor ? .split : .editor
        Preferences.previewMode = mode.rawValue
        setPreviewMode(mode)
    }

    private func setPreviewMode(_ mode: PreviewMode) {
        guard let splitView, splitView.subviews.count == 2 else { return }
        // Called from loadView before `view` is set; reading `view` there would load it again.
        let window = isViewLoaded ? view.window : nil
        let hadFocus = window?.firstResponder === textView
        previewMode = mode
        modeControl?.selectedSegment = mode.rawValue
        splitView.subviews[0].isHidden = mode == .preview
        splitView.subviews[1].isHidden = mode == .editor
        splitView.resizeSubviews(withOldSize: splitView.bounds.size)
        if mode != .editor, previewIsStale { renderPreview() }
        if window != nil, hadFocus || mode == .preview { focus() }
    }

    // MARK: NSSplitViewDelegate

    /// Lays the panes out from the kept share instead of NSSplitView's proportional resize, which
    /// collapses one pane when the split view first gets its size.
    func splitView(_ splitView: NSSplitView, resizeSubviewsWithOldSize oldSize: NSSize) {
        guard splitView.subviews.count == 2 else { return }
        let (editor, preview) = (splitView.subviews[0], splitView.subviews[1])
        let bounds = splitView.bounds
        // A hidden pane shrinks to zero width at its own edge, or the split view keeps drawing the divider at its old place.
        if editor.isHidden {
            editor.frame = NSRect(x: 0, y: 0, width: 0, height: bounds.height)
            preview.frame = bounds
            return
        }
        if preview.isHidden {
            editor.frame = bounds
            preview.frame = NSRect(x: bounds.width, y: 0, width: 0, height: bounds.height)
            return
        }
        let available = bounds.width - splitView.dividerThickness
        let left = (available * editorFraction).rounded()
        editor.frame = NSRect(x: 0, y: 0, width: left, height: bounds.height)
        preview.frame = NSRect(x: left + splitView.dividerThickness, y: 0, width: available - left, height: bounds.height)
    }

    /// Keeps the share the divider was dragged to.
    func splitViewDidResizeSubviews(_ notification: Notification) {
        guard let splitView, splitView.subviews.count == 2,
              !splitView.subviews[0].isHidden, !splitView.subviews[1].isHidden else { return }
        let available = splitView.bounds.width - splitView.dividerThickness
        guard available > 100 else { return }
        editorFraction = min(max(splitView.subviews[0].frame.width / available, 0.1), 0.9)
    }

    private func schedulePreview() {
        guard let preview else { return }
        previewIsStale = true
        guard previewMode != .editor else { return }
        previewTask?.cancel()
        // HTML reloads the whole page, so it waits a little longer for typing to pause.
        let delay: Duration = preview.kind == .html ? .milliseconds(300) : .milliseconds(120)
        previewTask = Task { [weak self] in
            try? await Task.sleep(for: delay)
            guard !Task.isCancelled else { return }
            self?.renderPreview()
        }
    }

    private func renderPreview() {
        guard let preview else { return }
        previewIsStale = false
        preview.render(document.textStorage.string)
    }

    /// The text view is created before the scroll view has a size; keep it at least as large as the
    /// visible area so text is drawn and clicks below the last line still land in the text view.
    private func fitTextViewToViewport() {
        let size = scrollView.contentSize
        guard size.width > 0, size.height > 0 else { return }
        textView.minSize = size
        if !textView.isHorizontallyResizable {
            textView.setFrameSize(NSSize(width: size.width, height: max(textView.frame.height, size.height)))
        }
        textView.sizeToFit()
    }

    func applyFontSize() {
        let attributes = Theme.textAttributes()
        let storage = document.textStorage
        storage.beginEditing()
        storage.setAttributes(attributes, range: NSRange(location: 0, length: storage.length))
        storage.endEditing()
        textView.typingAttributes = attributes
        refreshAnalysis()
    }

    func refreshAnalysis() {
        let buffer = document.utf16Buffer()
        gutter?.update(buffer: buffer)
        highlighter.update(buffer: buffer)
    }

    func languageChanged() {
        textView.language = document.language
        textView.indentWidth = document.language?.indentWidth ?? 4
        highlighter.setLanguage(document.language, buffer: document.utf16Buffer())
    }

    func applyLocalization() {
        guard let control = modeControl else { return }
        let labels = [L("Editor Only"), L("Editor and Preview"), L("Preview Only")]
        let symbols = ["text.alignleft", "rectangle.split.2x1", "eye"]
        for index in labels.indices {
            control.setToolTip(labels[index], forSegment: index)
            control.setImage(NSImage(systemSymbolName: symbols[index], accessibilityDescription: labels[index]), forSegment: index)
        }
    }

    func reloadFromDisk() {
        let selection = textView.selectedRange()
        do {
            try document.reloadFromDisk()
        } catch {
            return
        }
        let length = document.textStorage.length
        textView.setSelectedRange(NSRange(location: min(selection.location, length), length: 0))
        refreshAnalysis()
        schedulePreview()
        onStateChange?(true)
    }

    func focus() {
        if previewMode == .preview, let preview {
            view.window?.makeFirstResponder(preview.view)
        } else {
            view.window?.makeFirstResponder(textView)
        }
    }

    /// Moves the caret to a 1-based line and column and scrolls it to the middle of the view.
    func go(toLine line: Int, column: Int) {
        guard let gutter, !gutter.lineStarts.isEmpty else { return }
        let index = min(max(line - 1, 0), gutter.lineStarts.count - 1)
        let start = gutter.lineStarts[index]
        let end = index + 1 < gutter.lineStarts.count ? gutter.lineStarts[index + 1] - 1 : (textView.string as NSString).length
        let location = min(start + max(column - 1, 0), max(start, end))
        textView.setSelectedRange(NSRange(location: location, length: 0))
        textView.centerSelectionInVisibleArea(nil)
    }

    /// 1-based line and column of the caret.
    var caretPosition: (line: Int, column: Int) {
        let location = textView.selectedRange().location
        guard let gutter else { return (1, 1) }
        let line = gutter.lineIndex(of: location)
        return (line + 1, location - gutter.lineStarts[line] + 1)
    }

    // MARK: NSTextViewDelegate

    func textDidChange(_ notification: Notification) {
        let becameDirty = !document.isDirty
        document.isDirty = true
        refreshAnalysis()
        schedulePreview()
        scheduleAutosave()
        onStateChange?(becameDirty)
    }

    /// Wait for a pause in typing and for the input method to commit its composition.
    private func scheduleAutosave() {
        autosaveTask?.cancel()
        guard !autosaveFailed else { return }
        autosaveTask = Task { [weak self] in
            try? await Task.sleep(for: .milliseconds(500))
            guard !Task.isCancelled, let self else { return }
            if self.textView.hasMarkedText() {
                self.scheduleAutosave()
                return
            }
            self.savePendingChanges()
        }
    }

    @discardableResult
    func savePendingChanges() -> Bool {
        autosaveTask?.cancel()
        // Closing commits the input method's current text before writing it.
        if textView.hasMarkedText() { textView.unmarkText() }
        do {
            try document.save()
            autosaveFailed = false
            onStateChange?(true)
            return true
        } catch {
            // Keep the tab and its undo history. Retry explicitly instead of showing
            // a new error sheet on every keystroke after a persistent disk failure.
            autosaveFailed = true
            onSaveError?(error)
            return false
        }
    }

    func cancelAutosave() { autosaveTask?.cancel() }

    func textViewDidChangeSelection(_ notification: Notification) {
        gutter?.needsDisplay = true
        textView.setNeedsDisplay(textView.visibleRect)
        onStateChange?(false)
    }

    func undoManager(for view: NSTextView) -> UndoManager? {
        document.undoManager
    }

    @objc private func didScroll(_ notification: Notification) {
        highlighter.applyVisible()
        gutter?.needsDisplay = true
    }
}
