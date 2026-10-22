# Sumi

A lightweight macOS text editor built to work alongside AI coding agents. Open source (MIT).

Run your agent in the built-in terminal, click the files it touches to open them, and read the Markdown it writes as rendered pages.

[日本語](README.ja.md)

## Features

- File paths in the terminal are links. When a coding agent prints `⎿ M src/app.ts` or `src/app.ts:42:7`, the path turns blue and a click opens the file at that line.
- Project view on the left, editor in the center, terminal at the bottom.
- Swap the terminal and the Project view (⌃⌘T) to put a full-height terminal on the left. Maximize the terminal with ⇧⌘↩.
- Files autosave after a 500 ms typing pause and before closing. External changes and save failures keep your edits in the tab, with an option to save a copy.
- Closing a terminal with running commands asks for confirmation, including background jobs and application quit. Hiding the panel keeps sessions running.
- Terminals use Metal by default, with a GPU Rendering switch in View. Search output with ⌘F; new tabs inherit the current working directory.
- Shift+Enter preserves multiline prompt input. Paste supports multiline text, files, and images; images are kept as temporary PNGs and inserted as quoted paths.
- Markdown and HTML preview next to the text, updated as you type (⇧⌘V, or the buttons at the top right of the tab).
  Markdown is rendered with cmark-gfm, the renderer GitHub uses: tables, task lists, strikethrough and autolinks.
- Search Everywhere: press Shift twice to find any file in the project by fuzzy name.
- Recognizes source files using a catalog of 915 language and file-format names, including filenames, compound extensions and script interpreters. All 297 Prism components (291 standalone grammars and six helpers) are bundled and loaded on demand. Formats without a grammar use basic text highlighting.
- The UI has 108 language options. Use the Language menu to switch immediately, or follow the system language. The choice is remembered; open files, unsaved edits and terminal sessions stay open. Arabic, Hebrew and other right-to-left interfaces keep code, previews and terminal output left to right.
  Newly added translations use machine translation and need review by native speakers. System-provided panels follow macOS language settings. This catalog does not cover every natural or programming language. See [Translating Sumi](CONTRIBUTING.md#translating-sumi).
- Light and dark appearance follow the system.

## Download

- [Latest release](../../releases/latest)
- [Nightly build](../../releases/tag/nightly): rebuilt on every change to `main`.

Download `Sumi.zip`, unzip it and move Sumi to Applications. One build runs on both Apple silicon and Intel Macs.

Sumi is not signed with an Apple Developer ID, so macOS blocks the first launch. Open System Settings › Privacy & Security and click Open Anyway, or run:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Requirements

macOS 14 or later. Building needs Xcode 26 or later (Swift 6.2).

## Build from source

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Open a folder as a project from File › Open… (⌘O), or from the command line:

```sh
open -a Sumi path/to/project
```

## Keyboard shortcuts

| Action | Shortcut |
|---|---|
| Search Everywhere | ⇧⇧ or ⇧⌘O |
| Project view | ⌘1 |
| Terminal | ⌥F12 |
| New terminal tab | ⌘T |
| Swap terminal and Project view | ⌃⌘T |
| Maximize terminal | ⇧⌘↩ |
| Markdown / HTML preview | ⇧⌘V |
| Select in Project view | ⌥⌘1 |
| Next / previous tab | ⇧⌘] / ⇧⌘[ |
| Save / Save all | ⌘S / ⌥⌘S |

## Contributing

Bug reports, fixes and translations are welcome. Read [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT. Sumi includes SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) and the GitHub Linguist language catalog (MIT); see [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
