import AppKit

extension NSColor {
    convenience init(hex: UInt32) {
        self.init(
            srgbRed: CGFloat((hex >> 16) & 0xFF) / 255,
            green: CGFloat((hex >> 8) & 0xFF) / 255,
            blue: CGFloat(hex & 0xFF) / 255,
            alpha: 1
        )
    }
}

/// Light and dark colors, switched with the system appearance.
@MainActor
enum Theme {
    static func dynamic(light: UInt32, dark: UInt32) -> NSColor {
        NSColor(name: nil) { appearance in
            appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua ? NSColor(hex: dark) : NSColor(hex: light)
        }
    }

    // Editor
    static let editorBackground = dynamic(light: 0xFFFFFF, dark: 0x1E1F22)
    static let text = dynamic(light: 0x080808, dark: 0xBCBEC4)
    static let caret = dynamic(light: 0x000000, dark: 0xCED0D6)
    static let selection = dynamic(light: 0xA6D2FF, dark: 0x214283)
    static let currentLine = dynamic(light: 0xF5F8FE, dark: 0x26282E)
    static let lineNumber = dynamic(light: 0xAEB3C2, dark: 0x4B5059)
    static let currentLineNumber = dynamic(light: 0x767A8A, dark: 0xA1A3AB)

    // Chrome (tab bar, status bar)
    static let chrome = dynamic(light: 0xF7F8FA, dark: 0x2B2D30)
    static let chromeBorder = dynamic(light: 0xEBECF0, dark: 0x1E1F22)
    static let tabHover = dynamic(light: 0xEBECF0, dark: 0x393B40)
    static let accent = dynamic(light: 0x3574F0, dark: 0x3574F0)
    static let folder = dynamic(light: 0x7A8599, dark: 0x9AA7B8)
    /// File paths in the terminal.
    static let link = dynamic(light: 0x2A62D2, dark: 0x548AF7)

    // Syntax
    static let keyword = dynamic(light: 0x0033B3, dark: 0xCF8E6D)
    static let string = dynamic(light: 0x067D17, dark: 0x6AAB73)
    static let number = dynamic(light: 0x1750EB, dark: 0x2AACB8)
    static let comment = dynamic(light: 0x8C8C8C, dark: 0x7A7E85)
    static let annotation = dynamic(light: 0x9E880D, dark: 0xB3AE60)
    static let function = dynamic(light: 0x00627A, dark: 0x56A8F5)
    static let special = dynamic(light: 0x94558D, dark: 0x94558D)
    static let builtin = dynamic(light: 0x000080, dark: 0x8888C6)

    /// Concrete color for views that take a fixed color (the terminal) instead of a dynamic one.
    static func resolved(_ color: NSColor, for appearance: NSAppearance) -> NSColor {
        var result = color
        appearance.performAsCurrentDrawingAppearance {
            result = color.usingColorSpace(.sRGB) ?? color
        }
        return result
    }

    static func color(for kind: TokenKind) -> NSColor {
        switch kind {
        case .keyword: keyword
        case .string: string
        case .number: number
        case .comment: comment
        case .annotation: annotation
        case .function: function
        case .special: special
        case .builtin: builtin
        }
    }

    static func editorFont() -> NSFont {
        NSFont.monospacedSystemFont(ofSize: Preferences.fontSize, weight: .regular)
    }

    static func textAttributes() -> [NSAttributedString.Key: Any] {
        let font = editorFont()
        let paragraph = NSMutableParagraphStyle()
        paragraph.lineSpacing = (font.pointSize * 0.3).rounded()
        return [.font: font, .foregroundColor: text, .paragraphStyle: paragraph]
    }
}

/// Icons for the project tree and tabs (SF Symbols tinted per language).
@MainActor
enum FileIcons {
    private static func symbol(_ name: String) -> NSImage? {
        NSImage(systemSymbolName: name, accessibilityDescription: nil)?
            .withSymbolConfiguration(.init(pointSize: 13, weight: .regular))
    }

    static func icon(for url: URL, isDirectory: Bool, excluded: Bool = false) -> (NSImage?, NSColor) {
        if isDirectory {
            return (symbol("folder.fill"), excluded ? NSColor.systemOrange : Theme.folder)
        }
        switch Language(url: url) {
        case .kotlin: return (symbol("k.square.fill"), NSColor(hex: 0x7F52FF))
        case .javascript: return (symbol("j.square.fill"), NSColor(hex: 0xE5B800))
        case .typescript: return (symbol("t.square.fill"), NSColor(hex: 0x3178C6))
        case .python: return (symbol("p.square.fill"), NSColor(hex: 0x3776AB))
        default: return (symbol("doc.text"), .secondaryLabelColor)
        }
    }
}
