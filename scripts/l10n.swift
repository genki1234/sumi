#!/usr/bin/env swift
// Localization tool for Sumi. Run from the repository root:
//
//   swift scripts/l10n.swift check        Verify every language (used by CI on each pull request)
//   swift scripts/l10n.swift sync         Regenerate en from the source code; add new keys / drop removed keys in every language
//   swift scripts/l10n.swift add <code>   Start a new language, e.g. `add pt-BR` (copies English as the starting point)
//
// Source of truth: the keys passed to L("…") in Sources/. English text is the key.
// Translation files: Localization/<code>.lproj/Localizable.strings

import Foundation

let root = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
let sourcesDir = root.appendingPathComponent("Sources")
let localizationDir = root.appendingPathComponent("Localization")
let fileName = "Localizable.strings"

struct Key {
    let text: String
    let file: String
}

// MARK: Extract keys from the Swift sources (in order of appearance, grouped by file)

func swiftFiles() -> [URL] {
    let enumerator = FileManager.default.enumerator(at: sourcesDir, includingPropertiesForKeys: nil)
    var files: [URL] = []
    while let url = enumerator?.nextObject() as? URL {
        if url.pathExtension == "swift" { files.append(url) }
    }
    return files.sorted { $0.path < $1.path }
}

func unescapeSwift(_ s: String) -> String {
    var out = ""
    var iterator = s.makeIterator()
    while let c = iterator.next() {
        guard c == "\\" else { out.append(c); continue }
        switch iterator.next() {
        case "n": out.append("\n")
        case "t": out.append("\t")
        case "\"": out.append("\"")
        case "\\": out.append("\\")
        case "'": out.append("'")
        case let other?: out.append("\\"); out.append(other)
        case nil: out.append("\\")
        }
    }
    return out
}

func extractKeys() -> (keys: [Key], problems: [String]) {
    let pattern = try! NSRegularExpression(pattern: #"\bL\("((?:[^"\\]|\\.)*)""#)
    var keys: [Key] = []
    var seen = Set<String>()
    var problems: [String] = []
    for file in swiftFiles() {
        guard let source = try? String(contentsOf: file, encoding: .utf8) else { continue }
        let relative = String(file.path.dropFirst(root.path.count + 1))
        let ns = source as NSString
        for match in pattern.matches(in: source, range: NSRange(location: 0, length: ns.length)) {
            let literal = ns.substring(with: match.range(at: 1))
            if literal.contains("\\(") {
                problems.append("\(relative): L(\"\(literal)\") uses string interpolation; use a %@ / %ld placeholder instead")
                continue
            }
            let text = unescapeSwift(literal)
            if seen.insert(text).inserted { keys.append(Key(text: text, file: relative)) }
        }
    }
    return (keys, problems)
}

// MARK: .strings files

func languages() -> [String] {
    let items = (try? FileManager.default.contentsOfDirectory(atPath: localizationDir.path)) ?? []
    return items.filter { $0.hasSuffix(".lproj") }.map { String($0.dropLast(6)) }.sorted()
}

func stringsURL(_ language: String) -> URL {
    localizationDir.appendingPathComponent("\(language).lproj").appendingPathComponent(fileName)
}

func readStrings(_ language: String) throws -> [String: String] {
    let url = stringsURL(language)
    guard FileManager.default.fileExists(atPath: url.path) else { return [:] }
    let data = try Data(contentsOf: url)
    guard let dict = try PropertyListSerialization.propertyList(from: data, format: nil) as? [String: String] else {
        throw NSError(domain: "l10n", code: 1, userInfo: [NSLocalizedDescriptionKey: "not a strings file"])
    }
    return dict
}

func escapeStrings(_ s: String) -> String {
    s.replacingOccurrences(of: "\\", with: "\\\\")
        .replacingOccurrences(of: "\"", with: "\\\"")
        .replacingOccurrences(of: "\n", with: "\\n")
        .replacingOccurrences(of: "\t", with: "\\t")
}

func writeStrings(_ language: String, keys: [Key], values: [String: String]) throws {
    var out = """
    /*
      Sumi — \(language) translation.
      Translate only the text on the right of "=". Keep %@, %ld, %1$@ … placeholders.
      Run `swift scripts/l10n.swift check` before opening a pull request.
      This file is rewritten by `swift scripts/l10n.swift sync`; comments added by hand are not kept.
    */

    """
    var currentFile = ""
    for key in keys {
        if key.file != currentFile {
            currentFile = key.file
            out += "\n/* \(currentFile) */\n"
        }
        let value = values[key.text] ?? key.text
        out += "\"\(escapeStrings(key.text))\" = \"\(escapeStrings(value))\";\n"
    }
    let url = stringsURL(language)
    try FileManager.default.createDirectory(at: url.deletingLastPathComponent(), withIntermediateDirectories: true)
    try out.write(to: url, atomically: true, encoding: .utf8)
}

// MARK: Placeholders

func placeholders(_ s: String) -> [String] {
    let pattern = try! NSRegularExpression(pattern: #"%(?:(\d+)\$)?[-+ #0]*\d*(?:\.\d+)?(hh|h|ll|l|q|z|t|j)?([@dDuUxXoOfeEgGcCsSaAp%])"#)
    let ns = s as NSString
    var sequential: [String] = []
    var positional: [(Int, String)] = []
    for match in pattern.matches(in: s, range: NSRange(location: 0, length: ns.length)) {
        let conversion = ns.substring(with: match.range(at: 3))
        if conversion == "%" { continue }
        let length = match.range(at: 2).location == NSNotFound ? "" : ns.substring(with: match.range(at: 2))
        let type = length + conversion
        if match.range(at: 1).location != NSNotFound {
            positional.append((Int(ns.substring(with: match.range(at: 1))) ?? 0, type))
        } else {
            sequential.append(type)
        }
    }
    return positional.isEmpty ? sequential : positional.sorted { $0.0 < $1.0 }.map(\.1)
}

// MARK: Commands

func runCheck() -> Bool {
    let (keys, problems) = extractKeys()
    var ok = problems.isEmpty
    problems.forEach { print("error: \($0)") }
    let keySet = Set(keys.map(\.text))
    let langs = languages()
    guard langs.contains("en") else {
        print("error: Localization/en.lproj is missing. Run: swift scripts/l10n.swift sync")
        return false
    }
    print("Language   Translated   Missing   Extra   Placeholder errors")
    for language in langs {
        let values: [String: String]
        do {
            values = try readStrings(language)
        } catch {
            print("error: \(language): cannot read \(fileName): \(error.localizedDescription)")
            ok = false
            continue
        }
        let missing = keys.filter { values[$0.text] == nil }
        let extra = values.keys.filter { !keySet.contains($0) }.sorted()
        var placeholderErrors: [String] = []
        for key in keys {
            guard let value = values[key.text] else { continue }
            if placeholders(key.text) != placeholders(value) { placeholderErrors.append(key.text) }
        }
        let translated = keys.filter { values[$0.text] != nil && values[$0.text] != $0.text }.count
        let name = language.padding(toLength: 10, withPad: " ", startingAt: 0)
        print("\(name) \(String(translated).leftPad(10))   \(String(missing.count).leftPad(7))   \(String(extra.count).leftPad(5))   \(String(placeholderErrors.count).leftPad(18))")
        for key in missing { print("  error: \(language): missing \"\(key.text)\"") }
        for key in extra { print("  error: \(language): unused \"\(key)\"") }
        for key in placeholderErrors { print("  error: \(language): placeholders differ from English in \"\(key)\"") }
        if !missing.isEmpty || !extra.isEmpty || !placeholderErrors.isEmpty { ok = false }
    }
    print(ok ? "OK: \(keys.count) strings, \(langs.count) languages." : "Fix the errors above (most can be fixed with: swift scripts/l10n.swift sync).")
    return ok
}

func runSync() throws {
    let (keys, problems) = extractKeys()
    problems.forEach { print("error: \($0)") }
    try writeStrings("en", keys: keys, values: [:])
    for language in languages() where language != "en" {
        try writeStrings(language, keys: keys, values: try readStrings(language))
    }
    print("Synced \(keys.count) strings into \(languages().count) languages.")
}

func runAdd(_ language: String) throws {
    guard language.range(of: #"^[a-z]{2,3}(-[A-Za-z0-9]{2,8})*$"#, options: .regularExpression) != nil else {
        print("error: use a language code such as fr, pt-BR or zh-Hans")
        exit(1)
    }
    guard !languages().contains(language) else {
        print("\(language) already exists: \(stringsURL(language).path)")
        return
    }
    try writeStrings(language, keys: extractKeys().keys, values: [:])
    print("Created \(stringsURL(language).path). Translate the right-hand side of each line, then run: swift scripts/l10n.swift check")
}

extension String {
    func leftPad(_ width: Int) -> String {
        count >= width ? self : String(repeating: " ", count: width - count) + self
    }
}

let arguments = Array(CommandLine.arguments.dropFirst())
do {
    switch arguments.first {
    case "check": exit(runCheck() ? 0 : 1)
    case "sync": try runSync()
    case "add" where arguments.count == 2: try runAdd(arguments[1])
    default:
        print("usage: swift scripts/l10n.swift check | sync | add <language-code>")
        exit(2)
    }
} catch {
    print("error: \(error.localizedDescription)")
    exit(1)
}
