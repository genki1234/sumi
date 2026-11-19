import Foundation

/// What "Comment with Line Comment" (⌘/) puts on a line. Languages without a line comment wrap each
/// line in their block comment. Chosen by the Prism grammar id; C-family "//" is the default because
/// most of the bundled grammars use it. nil means the language has no comment syntax (JSON, CSV, logs)
/// or Sumi does not know it, and ⌘/ leaves the text unchanged.
enum CommentSyntax: Equatable {
    case line(String)
    case block(String, String)

    static func of(_ language: Language?) -> CommentSyntax? {
        guard let grammar = language?.grammar else { return nil }
        if let syntax = table[grammar] { return syntax }
        return noComments.contains(grammar) ? nil : .line("//")
    }

    /// What "Comment with Block Comment" (⌥⌘/) wraps the selection in. Only languages known to have a
    /// block comment get one; nil leaves ⌥⌘/ disabled.
    static func block(of language: Language?) -> (open: String, close: String)? {
        guard let grammar = language?.grammar else { return nil }
        if case .block(let open, let close)? = table[grammar] { return (open, close) }
        return blockTable[grammar]
    }

    private static let blockTable: [String: (open: String, close: String)] = {
        var table: [String: (open: String, close: String)] = [:]
        func set(_ open: String, _ close: String, _ grammars: String) {
            for grammar in grammars.split(separator: " ") { table[String(grammar)] = (open, close) }
        }
        set("/*", "*/", """
            actionscript antlr4 apex arduino bicep bison c cfscript chaiscript cilkc cilkcpp clike concurnas cpp \
            csharp d dart firestore-security-rules flow glsl go gradle groovy haxe hlsl java javascript json5 jsonp \
            jsx kotlin less mongodb n1ql n4js objectivec odin opencl oz php plsql processing prolog protobuf qml \
            reason rescript rust sass scala scss solidity sql sqf squirrel stylus swift tsx typescript unrealscript \
            v vala verilog wgsl wren
            """)
        set("{-", "-}", "agda dhall elm haskell idris purescript")
        set("(*", "*)", "applescript fsharp pascal")
        set("#|", "|#", "lisp racket scheme")
        set("--[[", "]]", "lua")
        set("<#", "#>", "powershell")
        set("#=", "=#", "julia")
        set("#[", "]#", "nim")
        set("###", "###", "coffeescript")
        return table
    }()

    private static let noComments: Set<String> = [
        "json", "csv", "diff", "log", "tap", "uri", "regex", "javastacktrace", "jsstacktrace", "hpkp", "hsts",
        "brainfuck", "false", "excel-formula", "icu-message-format", "wiki", "textile", "bbcode", "gedcom", "pcaxis",
    ]

    private static let table: [String: CommentSyntax] = {
        var table: [String: CommentSyntax] = [:]
        func set(_ syntax: CommentSyntax, _ grammars: String) {
            for grammar in grammars.split(separator: " ") { table[String(grammar)] = syntax }
        }
        set(.line("#"), """
            apacheconf awk bash bqn cmake coffeescript crystal docker editorconfig elixir gap gdscript gettext git gn \
            graphql hcl http icon ignore jq julia keepalived livescript makefile neon nginx nim nix perl powershell \
            promql properties puppet python r rego renpy rip roboconf robotframework ruby shell-session smali sparql \
            systemd tcl toml tremor turtle yaml
            """)
        set(.line("--"), "ada agda applescript cooklang dhall eiffel elm haskell idris lua moonscript n1ql plsql purescript sql vhdl")
        set(.line(";"), "abnf armasm arturo asm6502 asmatmel autohotkey autoit clojure dns-zone-file gcode ini lisp llvm nasm racket scheme")
        set(.line("%"), "arff erlang latex lilypond matlab metafont oz prolog")
        set(.line("%%"), "mermaid")
        set(.line("!"), "fortran")
        set(.line("'"), "plant-uml vbnet visual-basic")
        set(.line("REM"), "batch")
        set(.line("BTW"), "lolcode")
        set(.block("<!--", "-->"), "markup markdown aspnet ejs erb")
        set(.block("/*", "*/"), "css linker-script")
        set(.block("(*", "*)"), "ocaml sml coq wolfram")
        set(.block("{#", "#}"), "django twig")
        set(.block("{{!--", "--}}"), "handlebars")
        set(.block("{*", "*}"), "smarty latte")
        return table
    }()
}
