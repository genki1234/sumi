import Foundation

extension Notification.Name {
    static let sumiLanguageDidChange = Notification.Name("sumiLanguageDidChange")
}

/// The bundled language folders are the source of truth for the language menu.
/// Resolve a bundle explicitly so a saved choice takes effect without relaunching.
enum AppLocalization {
    static let supportedLanguageCodes = Array(Set(Bundle.main.localizations.filter { $0 != "Base" })).sorted()
    private static let bundles: [String: Bundle] = Dictionary(uniqueKeysWithValues: supportedLanguageCodes.compactMap { code in
        guard let path = Bundle.main.path(forResource: code, ofType: "lproj"), let bundle = Bundle(path: path) else { return nil }
        return (code, bundle)
    })
    private static let systemLanguage = Bundle.preferredLocalizations(
        from: supportedLanguageCodes, forPreferences: Locale.preferredLanguages
    ).first ?? "en"

    static var languageCode: String {
        let selected = UserDefaults.standard.string(forKey: "interfaceLanguage")
        return selected.flatMap { bundles[$0] == nil ? nil : $0 } ?? systemLanguage
    }

    static var locale: Locale { Locale(identifier: languageCode) }
    static var isRightToLeft: Bool {
        Locale.Language(identifier: languageCode).characterDirection == .rightToLeft
    }

    static func nativeName(for code: String) -> String {
        Locale(identifier: code).localizedString(forIdentifier: code) ?? code
    }

    static func string(_ key: String) -> String {
        (bundles[languageCode] ?? Bundle.main).localizedString(forKey: key, value: key, table: nil)
    }
}

/// Every user-visible string goes through `L`.
///
/// Translations live in `Localization/<language>.lproj/Localizable.strings` at the repository root
/// and are copied into the app bundle by `scripts/build-app.sh`. Keys are the English text,
/// so a string that is not translated yet falls back to English instead of showing a key.
/// `scripts/l10n.swift check` verifies that every key used here exists in every language.
func L(_ key: String) -> String {
    AppLocalization.string(key)
}

/// Formatted variant. Translations may reorder arguments with positional specifiers (`%1$@`, `%2$ld`).
func L(_ key: String, _ arguments: CVarArg...) -> String {
    String(format: L(key), locale: AppLocalization.locale, arguments: arguments)
}
