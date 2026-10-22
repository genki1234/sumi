// JavaScript string lengths use UTF-16, matching NSTextStorage character ranges.
// Flatten nested Prism tokens into sorted, non-overlapping leaf spans.
function sumiTokenize(source, language) {
    sumiLoadGrammar(language);
    var grammar = Prism.languages[language];
    if (!grammar) return null;
    var kinds = {
        "keyword": 0, "boolean": 0, "atrule": 0, "tag": 0,
        "string": 1, "char": 1, "regex": 1, "attr-value": 1, "template-string": 1,
        "number": 2,
        "comment": 3, "prolog": 3, "doctype": 3, "cdata": 3,
        "annotation": 4, "decorator": 4, "attr-name": 4, "property": 4,
        "function": 5, "function-variable": 5,
        "variable": 6, "namespace": 6, "symbol": 6,
        "builtin": 7, "class-name": 7, "constant": 7
    };
    var spans = [];
    var offset = 0;
    function visit(token, inherited) {
        if (typeof token === "string") {
            if (inherited !== undefined && token.length) {
                var last = spans[spans.length - 1];
                if (last && last[0] + last[1] === offset && last[2] === inherited) last[1] += token.length;
                else spans.push([offset, token.length, inherited]);
            }
            offset += token.length;
        } else if (Array.isArray(token)) {
            token.forEach(function (child) { visit(child, inherited); });
        } else {
            var kind = kinds[token.type];
            visit(token.content, kind === undefined ? inherited : kind);
        }
    }
    visit(Prism.tokenize(source, grammar), undefined);
    return spans;
}
