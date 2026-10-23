# Changelog

User-visible changes are recorded here. Nightly builds are produced from `main`; a nightly build is not a stable release.

## 0.1.0 — Unreleased

Initial release candidate in preparation. This entry describes the candidate's current scope and does not announce a published stable release.

### Added

- A lightweight AppKit text editor for macOS, with a project file tree, tabbed editor and integrated terminal.
- Terminal/project panel swapping and terminal maximization.
- Clickable file paths in terminal output, including line and column references.
- Automatic saving after a 500 ms typing pause and before closing. Save conflicts and failures retain edits in the tab and offer saving a copy.
- Confirmation before closing terminal sessions with running commands, including background jobs and application quit. Hiding a terminal panel leaves its sessions running.
- Metal terminal rendering by default, a GPU rendering switch, output search, and new terminal tabs that inherit the working directory.
- Multiline prompt input with Shift+Enter and pasting of text, files and images. Pasted images are temporary PNG files inserted as quoted paths.
- Live Markdown and HTML previews beside the source text. Markdown uses cmark-gfm with tables, task lists, strikethrough and autolinks.
- Project-wide fuzzy file search by pressing Shift twice.
- Source-file recognition using 915 language and file-format names. All 297 Prism components (291 standalone grammars and 6 helpers) are bundled and loaded on demand; formats without a grammar use basic text highlighting.
- 108 UI language options, immediate language switching and a complete README for each UI locale. Switching keeps files, unsaved edits and terminal sessions open. Right-to-left interfaces retain left-to-right code, previews and terminal output.
- System light and dark appearance, keyboard shortcuts, and universal application builds for Apple silicon and Intel Macs.

### Requirements and distribution

- Requires macOS 14 or later. Building requires Xcode 26 or later with Swift 6.2.
- Stable publication is pending a signed and notarized artifact. Current nightly builds are not signed with an Apple Developer ID; macOS blocks their first launch until the user explicitly allows it. See the [download instructions](README.md#download).
- Sumi is licensed under MIT. Bundled dependency licenses and notices are listed in [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
