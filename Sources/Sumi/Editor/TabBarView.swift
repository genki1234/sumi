import AppKit

struct TabInfo {
    let url: URL
    let isDirty: Bool
}

/// Editor tabs: icon + file name, accent underline on the active tab, close button on hover.
final class TabBarView: NSView {
    var onSelect: ((Int) -> Void)?
    var onClose: ((Int) -> Void)?
    private let scrollView = NSScrollView()
    private let stack = NSStackView()

    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        stack.orientation = .horizontal
        stack.spacing = 0
        stack.alignment = .top
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.drawsBackground = false
        scrollView.hasHorizontalScroller = false
        scrollView.hasVerticalScroller = false
        scrollView.verticalScrollElasticity = .none
        scrollView.documentView = stack
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(scrollView)
        let clip = scrollView.contentView
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -1),
            stack.leadingAnchor.constraint(equalTo: clip.leadingAnchor),
            stack.topAnchor.constraint(equalTo: clip.topAnchor),
            stack.bottomAnchor.constraint(equalTo: clip.bottomAnchor),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    override func draw(_ dirtyRect: NSRect) {
        Theme.chrome.setFill()
        bounds.fill()
        Theme.chromeBorder.setFill()
        NSRect(x: 0, y: 0, width: bounds.width, height: 1).fill()
    }

    func update(tabs: [TabInfo], selected: Int) {
        stack.arrangedSubviews.forEach { $0.removeFromSuperview() }
        for (index, tab) in tabs.enumerated() {
            let item = TabItemView(info: tab, selected: index == selected)
            item.onSelect = { [weak self] in self?.onSelect?(index) }
            item.onClose = { [weak self] in self?.onClose?(index) }
            stack.addArrangedSubview(item)
            item.heightAnchor.constraint(equalTo: stack.heightAnchor).isActive = true
        }
        guard tabs.indices.contains(selected) else { return }
        layoutSubtreeIfNeeded()
        let item = stack.arrangedSubviews[selected]
        item.scrollToVisible(item.bounds)
    }
}

private final class TabItemView: NSView {
    var onSelect: (() -> Void)?
    var onClose: (() -> Void)?
    private let isSelected: Bool
    private let isDirty: Bool
    private let closeButton = NSButton()
    private var hovering = false {
        didSet {
            needsDisplay = true
            updateCloseButton()
        }
    }

    init(info: TabInfo, selected: Bool) {
        isSelected = selected
        isDirty = info.isDirty
        super.init(frame: .zero)
        toolTip = info.url.path

        let (image, tint) = FileIcons.icon(for: info.url, isDirectory: false)
        let icon = NSImageView(image: image ?? NSImage())
        icon.contentTintColor = tint
        let label = NSTextField(labelWithString: info.url.lastPathComponent)
        label.font = .systemFont(ofSize: 12.5)
        label.textColor = selected ? .labelColor : .secondaryLabelColor
        label.lineBreakMode = .byTruncatingMiddle
        label.widthAnchor.constraint(lessThanOrEqualToConstant: 220).isActive = true

        closeButton.isBordered = false
        closeButton.bezelStyle = .regularSquare
        closeButton.imagePosition = .imageOnly
        closeButton.contentTintColor = .secondaryLabelColor
        closeButton.target = self
        closeButton.action = #selector(closeClicked)
        closeButton.toolTip = L("Close Tab") + " (⌘W)"
        closeButton.widthAnchor.constraint(equalToConstant: 16).isActive = true
        closeButton.heightAnchor.constraint(equalToConstant: 16).isActive = true
        updateCloseButton()

        let row = NSStackView(views: [icon, label, closeButton])
        row.orientation = .horizontal
        row.spacing = 6
        row.edgeInsets = NSEdgeInsets(top: 0, left: 12, bottom: 0, right: 8)
        row.translatesAutoresizingMaskIntoConstraints = false
        addSubview(row)
        NSLayoutConstraint.activate([
            row.leadingAnchor.constraint(equalTo: leadingAnchor),
            row.trailingAnchor.constraint(equalTo: trailingAnchor),
            row.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
        addTrackingArea(NSTrackingArea(rect: .zero, options: [.mouseEnteredAndExited, .activeInActiveApp, .inVisibleRect], owner: self))
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    private func updateCloseButton() {
        let showDot = isDirty && !hovering
        let name = showDot ? "circle.fill" : "xmark"
        let config = NSImage.SymbolConfiguration(pointSize: showDot ? 7 : 9, weight: .semibold)
        closeButton.image = NSImage(systemSymbolName: name, accessibilityDescription: L("Close Tab"))?.withSymbolConfiguration(config)
        closeButton.isHidden = !(isSelected || hovering || isDirty)
    }

    override func draw(_ dirtyRect: NSRect) {
        if isSelected {
            Theme.editorBackground.setFill()
            bounds.fill()
            Theme.accent.setFill()
            NSRect(x: 0, y: 0, width: bounds.width, height: 2).fill()
        } else if hovering {
            Theme.tabHover.setFill()
            bounds.fill()
        }
    }

    override func mouseEntered(with event: NSEvent) { hovering = true }
    override func mouseExited(with event: NSEvent) { hovering = false }
    override func mouseDown(with event: NSEvent) { onSelect?() }
    override func otherMouseDown(with event: NSEvent) { onClose?() }
    @objc private func closeClicked() { onClose?() }
}
