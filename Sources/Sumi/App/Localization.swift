import Foundation

/// Every user-visible string goes through `L`.
///
/// Translations live in `Localization/<language>.lproj/Localizable.strings` at the repository root
/// and are copied into the app bundle by `scripts/build-app.sh`. Keys are the English text,
/// so a string that is not translated yet falls back to English instead of showing a key.
/// `scripts/l10n.swift check` verifies that every key used here exists in every language.
func L(_ key: String) -> String {
    Bundle.main.localizedString(forKey: key, value: key, table: nil)
}

/// Formatted variant. Translations may reorder arguments with positional specifiers (`%1$@`, `%2$ld`).
func L(_ key: String, _ arguments: CVarArg...) -> String {
    String(format: L(key), locale: Locale.current, arguments: arguments)
}
