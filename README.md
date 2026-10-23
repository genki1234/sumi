# Sumi

A lightweight macOS text editor built to work alongside AI coding agents. Open source (MIT).

Run your agent in the built-in terminal, click the files it touches to open them, and read the Markdown it writes as rendered pages.

<!-- sumi:languages:start -->
[English](README.md) · [日本語](README.ja.md) · [Afrikaans](README.af.md) · [አማርኛ](README.am.md) · [العربية](README.ar.md) · [অসমীয়া](README.as.md) ·
[azərbaycan](README.az.md) · [беларуская](README.be.md) · [български](README.bg.md) · [বাংলা](README.bn.md) · [bosanski](README.bs.md) · [català](README.ca.md) ·
[Cebuano](README.ceb.md) · [corsu](README.co.md) · [čeština](README.cs.md) · [Cymraeg](README.cy.md) · [dansk](README.da.md) · [Deutsch](README.de.md) ·
[Ελληνικά](README.el.md) · [Esperanto](README.eo.md) · [español](README.es.md) · [eesti](README.et.md) · [euskara](README.eu.md) · [فارسی](README.fa.md) ·
[suomi](README.fi.md) · [français](README.fr.md) · [Frysk](README.fy.md) · [Gaeilge](README.ga.md) · [Gàidhlig](README.gd.md) · [galego](README.gl.md) ·
[ગુજરાતી](README.gu.md) · [Hausa](README.ha.md) · [ʻŌlelo Hawaiʻi](README.haw.md) · [עברית](README.he.md) · [हिन्दी](README.hi.md) · [hrvatski](README.hr.md) ·
[Kreyòl Ayisyen](README.ht.md) · [magyar](README.hu.md) · [հայերեն](README.hy.md) · [Bahasa Indonesia](README.id.md) · [Igbo](README.ig.md) · [íslenska](README.is.md) ·
[italiano](README.it.md) · [Jawa](README.jv.md) · [ქართული](README.ka.md) · [қазақ тілі](README.kk.md) · [ខ្មែរ](README.km.md) · [ಕನ್ನಡ](README.kn.md) ·
[한국어](README.ko.md) · [kurdî (kurmancî)](README.ku.md) · [кыргызча](README.ky.md) · [Lëtzebuergesch](README.lb.md) · [ລາວ](README.lo.md) · [lietuvių](README.lt.md) ·
[latviešu](README.lv.md) · [Malagasy](README.mg.md) · [Māori](README.mi.md) · [македонски](README.mk.md) · [മലയാളം](README.ml.md) · [монгол](README.mn.md) ·
[मराठी](README.mr.md) · [Bahasa Melayu](README.ms.md) · [Malti](README.mt.md) · [မြန်မာ](README.my.md) · [norsk bokmål](README.nb.md) · [नेपाली](README.ne.md) ·
[Nederlands](README.nl.md) · [Nyanja](README.ny.md) · [ଓଡ଼ିଆ](README.or.md) · [ਪੰਜਾਬੀ](README.pa.md) · [polski](README.pl.md) · [پښتو](README.ps.md) ·
[português (Brasil)](README.pt-BR.md) · [português (Portugal)](README.pt-PT.md) · [română](README.ro.md) · [русский](README.ru.md) · [Ikinyarwanda](README.rw.md) · [سنڌي](README.sd.md) ·
[සිංහල](README.si.md) · [slovenčina](README.sk.md) · [Gagana faʻa Sāmoa](README.sm.md) · [chiShona](README.sn.md) · [Soomaali](README.so.md) · [shqip](README.sq.md) ·
[српски](README.sr.md) · [Sesotho](README.st.md) · [Basa Sunda](README.su.md) · [svenska](README.sv.md) · [Kiswahili](README.sw.md) · [தமிழ்](README.ta.md) ·
[తెలుగు](README.te.md) · [тоҷикӣ](README.tg.md) · [ไทย](README.th.md) · [türkmen dili](README.tk.md) · [Tagalog](README.tl.md) · [Türkçe](README.tr.md) ·
[татар](README.tt.md) · [ئۇيغۇرچە](README.ug.md) · [українська](README.uk.md) · [اردو](README.ur.md) · [o‘zbek](README.uz.md) · [Tiếng Việt](README.vi.md) ·
[IsiXhosa](README.xh.md) · [ייִדיש](README.yi.md) · [Èdè Yorùbá](README.yo.md) · [简体中文](README.zh-Hans.md) · [繁體中文](README.zh-Hant.md) · [isiZulu](README.zu.md)
<!-- sumi:languages:end -->

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
  Translations are written directly from the English strings with their editor and terminal context. System-provided panels follow macOS language settings. This catalog does not cover every natural or programming language. See [Translating Sumi](CONTRIBUTING.md#translating-sumi).
- Light and dark appearance follow the system.

## Download

- [Releases](../../releases)
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
