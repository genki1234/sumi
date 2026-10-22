import Foundation
import JavaScriptCore

/// A single main-actor context keeps the bundled grammars compiled between edits.
/// Only source text enters the tokenizer; it is never evaluated as JavaScript.
@MainActor
enum GrammarHighlighter {
    private static let context: JSContext? = {
        guard let context = JSContext() else { return nil }
        for name in ["Prism", "HighlightBridge"] {
            guard let url = HighlightResources.bundle.url(forResource: name, withExtension: "js", subdirectory: "Resources"),
                  let script = try? String(contentsOf: url, encoding: .utf8) else { return nil }
            context.evaluateScript(script, withSourceURL: url)
            guard context.exception == nil else { return nil }
        }
        return context
    }()

    static func tokenize(_ buffer: [UInt16], grammar: String) -> [Token]? {
        guard let context,
              let function = context.objectForKeyedSubscript("sumiTokenize") else { return nil }
        context.exception = nil
        let source = String(decoding: buffer, as: UTF16.self)
        guard let result = function.call(withArguments: [source, grammar]),
              context.exception == nil,
              let spans = result.toArray() as? [[Int]] else { return nil }
        return spans.compactMap { span in
            guard span.count == 3, let kind = TokenKind(rawValue: UInt8(span[2])) else { return nil }
            return Token(location: span[0], length: span[1], kind: kind)
        }
    }
}
