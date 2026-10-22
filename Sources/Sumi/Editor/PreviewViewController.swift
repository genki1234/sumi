import AppKit
import UniformTypeIdentifiers
import WebKit
import cmark_gfm
import cmark_gfm_extensions

/// Files that get a rendered preview next to the text.
enum PreviewKind {
    case markdown, html

    init?(url: URL) {
        switch url.pathExtension.lowercased() {
        case "md", "markdown", "mdown", "mkd", "mkdn": self = .markdown
        case "html", "htm", "xhtml": self = .html
        default: return nil
        }
    }
}

/// What a Markdown or HTML tab shows.
enum PreviewMode: Int {
    case editor, split, preview
}

/// Renders the live text of a Markdown or HTML tab, including unsaved edits.
/// Relative images, stylesheets and scripts load from disk next to the file.
final class PreviewViewController: NSViewController, WKNavigationDelegate {
    let kind: PreviewKind
    private let documentURL: URL
    private var webView: WKWebView!
    /// Markdown: the page template has finished loading, so the body can be swapped in place (keeps the scroll position).
    private var pageReady = false
    private var pendingBody: String?
    /// HTML: the scroll position to restore after a reload.
    private var restoreScroll: [Double]?
    /// Called for links to other local files, which open as editor tabs.
    var onOpenFile: ((URL) -> Void)?

    init(kind: PreviewKind, documentURL: URL) {
        self.kind = kind
        self.documentURL = documentURL
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }

    override func loadView() {
        let configuration = WKWebViewConfiguration()
        configuration.setURLSchemeHandler(PreviewSchemeHandler(), forURLScheme: PreviewSchemeHandler.scheme)
        // Scripts in a Markdown file do not run; an HTML page runs its own scripts like a browser would.
        configuration.defaultWebpagePreferences.allowsContentJavaScript = kind == .html
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.navigationDelegate = self
        webView.userInterfaceLayoutDirection = .leftToRight
        self.webView = webView
        view = webView
    }

    /// The page's own address: relative links and images resolve against it and are served from disk.
    private var baseURL: URL {
        var components = URLComponents()
        components.scheme = PreviewSchemeHandler.scheme
        components.host = PreviewSchemeHandler.host
        components.path = documentURL.path
        return components.url!
    }

    func render(_ text: String) {
        switch kind {
        case .markdown:
            let body = MarkdownRenderer.html(from: text)
            if pageReady {
                replaceBody(body)
            } else if pendingBody == nil {
                pendingBody = body
                webView.loadHTMLString(MarkdownRenderer.page(body: ""), baseURL: baseURL)
            } else {
                pendingBody = body
            }
        case .html:
            guard webView.url != nil else {
                webView.loadHTMLString(text, baseURL: baseURL)
                return
            }
            webView.evaluateJavaScript("[window.scrollX, window.scrollY]") { [weak self] value, _ in
                guard let self else { return }
                restoreScroll = value as? [Double]
                webView.loadHTMLString(text, baseURL: baseURL)
            }
        }
    }

    private func replaceBody(_ body: String) {
        webView.callAsyncJavaScript(
            "document.getElementById('content').innerHTML = body",
            arguments: ["body": body], in: nil, in: .defaultClient, completionHandler: nil
        )
    }

    // MARK: WKNavigationDelegate

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        switch kind {
        case .markdown:
            pageReady = true
            if let body = pendingBody {
                pendingBody = nil
                replaceBody(body)
            }
        case .html:
            if let scroll = restoreScroll, scroll.count == 2 {
                webView.evaluateJavaScript("window.scrollTo(\(scroll[0]), \(scroll[1]))")
            }
            restoreScroll = nil
        }
    }

    func webView(_ webView: WKWebView, decidePolicyFor action: WKNavigationAction, decisionHandler: @escaping @MainActor (WKNavigationActionPolicy) -> Void) {
        guard action.navigationType == .linkActivated, let url = action.request.url else {
            decisionHandler(.allow)
            return
        }
        if url.scheme == PreviewSchemeHandler.scheme {
            // `#section` links scroll within the page; links to other files open them in the editor.
            if url.path == documentURL.path {
                decisionHandler(.allow)
            } else {
                decisionHandler(.cancel)
                onOpenFile?(URL(fileURLWithPath: url.path))
            }
            return
        }
        decisionHandler(.cancel)
        NSWorkspace.shared.open(url)
    }
}

/// Serves files from disk under `sumi-preview://local/<absolute path>`, so a preview loaded from an
/// in-memory string can still use the images and stylesheets that sit next to the file.
final class PreviewSchemeHandler: NSObject, WKURLSchemeHandler {
    static let scheme = "sumi-preview"
    static let host = "local"

    func webView(_ webView: WKWebView, start task: any WKURLSchemeTask) {
        guard let url = task.request.url else { return }
        let fileURL = URL(fileURLWithPath: url.path)
        do {
            let data = try Data(contentsOf: fileURL)
            let mimeType = UTType(filenameExtension: fileURL.pathExtension)?.preferredMIMEType ?? "application/octet-stream"
            task.didReceive(URLResponse(url: url, mimeType: mimeType, expectedContentLength: data.count, textEncodingName: nil))
            task.didReceive(data)
            task.didFinish()
        } catch {
            task.didFailWithError(error)
        }
    }

    func webView(_ webView: WKWebView, stop task: any WKURLSchemeTask) {}
}

/// GitHub Flavored Markdown to HTML with cmark-gfm, the renderer GitHub itself uses.
enum MarkdownRenderer {
    private static let extensions = ["table", "strikethrough", "autolink", "tasklist"]

    static func html(from markdown: String) -> String {
        cmark_gfm_core_extensions_ensure_registered()
        // Raw HTML in Markdown (badges, <details>, <img width>) renders as on GitHub; scripts are off in the preview.
        let options = CMARK_OPT_UNSAFE | CMARK_OPT_FOOTNOTES | CMARK_OPT_GITHUB_PRE_LANG
        guard let parser = cmark_parser_new(options) else { return "" }
        defer { cmark_parser_free(parser) }
        for name in extensions {
            if let ext = cmark_find_syntax_extension(name) {
                cmark_parser_attach_syntax_extension(parser, ext)
            }
        }
        cmark_parser_feed(parser, markdown, markdown.utf8.count)
        guard let document = cmark_parser_finish(parser) else { return "" }
        defer { cmark_node_free(document) }
        guard let html = cmark_render_html(document, options, cmark_parser_get_syntax_extensions(parser)) else { return "" }
        defer { free(html) }
        return String(cString: html)
    }

    /// The page the rendered Markdown is placed into: GitHub-like typography in light and dark.
    static func page(body: String) -> String {
        """
        <!doctype html>
        <html><head><meta charset="utf-8">
        <meta name="color-scheme" content="light dark">
        <style>
        :root { --fg: #1f2328; --muted: #59636e; --border: #d1d9e0; --code: #818b981f; --pre: #f6f8fa; --link: #0969da; --bg: #ffffff; }
        @media (prefers-color-scheme: dark) {
          :root { --fg: #d1d7e0; --muted: #9198a1; --border: #3d444d; --code: #656c7633; --pre: #151b23; --link: #4493f8; --bg: #1e1f22; }
        }
        html { background: var(--bg); }
        body { margin: 0; padding: 24px 32px 48px; color: var(--fg); font: 15px/1.6 -apple-system, BlinkMacSystemFont, "Hiragino Sans", sans-serif; word-wrap: break-word; }
        #content { max-width: 880px; }
        h1, h2, h3, h4, h5, h6 { margin: 24px 0 16px; font-weight: 600; line-height: 1.25; }
        h1 { font-size: 2em; padding-bottom: .3em; border-bottom: 1px solid var(--border); }
        h2 { font-size: 1.5em; padding-bottom: .3em; border-bottom: 1px solid var(--border); }
        h3 { font-size: 1.25em; } h4 { font-size: 1em; } h5 { font-size: .875em; } h6 { font-size: .85em; color: var(--muted); }
        #content > :first-child { margin-top: 0; }
        p, ul, ol, blockquote, pre, table { margin: 0 0 16px; }
        a { color: var(--link); text-decoration: none; } a:hover { text-decoration: underline; }
        code, pre { font: 13px/1.45 ui-monospace, SFMono-Regular, Menlo, monospace; }
        code { padding: .2em .4em; border-radius: 6px; background: var(--code); }
        pre { padding: 16px; overflow: auto; border-radius: 6px; background: var(--pre); }
        pre code { padding: 0; background: none; }
        blockquote { padding: 0 1em; color: var(--muted); border-left: .25em solid var(--border); }
        ul, ol { padding-left: 2em; }
        li + li { margin-top: .25em; }
        li > input[type=checkbox] { margin: 0 .3em .25em -1.4em; vertical-align: middle; }
        ul:has(> li > input[type=checkbox]) { list-style: none; }
        table { border-collapse: collapse; display: block; overflow: auto; }
        th, td { padding: 6px 13px; border: 1px solid var(--border); }
        th { font-weight: 600; }
        tr:nth-child(2n) { background: var(--pre); }
        img { max-width: 100%; }
        hr { height: .25em; margin: 24px 0; border: 0; background: var(--border); }
        </style></head>
        <body><article id="content">\(body)</article></body></html>
        """
    }
}
