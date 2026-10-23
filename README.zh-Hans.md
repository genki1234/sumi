# Sumi

专为与 AI 编程代理协作而设计的轻量级 macOS 文本编辑器。开源软件（MIT）。

在内置终端中运行代理，点击代理修改过的文件即可打开，并以渲染后的页面阅读代理编写的 Markdown。

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

## 功能

- 终端中的文件路径会变成链接。编程代理输出 `⎿ M src/app.ts` 或 `src/app.ts:42:7` 时，路径会显示为蓝色，点击即可打开文件并跳转到对应行。
- 项目树位于左侧，编辑器位于中央，终端位于底部。
- 交换终端与项目的位置（⌃⌘T），可在左侧显示占满整个高度的终端。使用 ⇧⌘↩ 最大化终端。
- 停止输入 500 ms 后以及关闭文件前会自动保存。遇到外部修改或保存失败时，编辑内容仍保留在标签页中，并可保存副本。
- 关闭仍有命令在运行的终端时会要求确认，后台任务和退出应用时也会检查。隐藏面板不会中断会话。
- 终端默认使用 Metal，可通过“显示”菜单中的“GPU 渲染”切换。使用 ⌘F 搜索输出，新标签页会沿用当前工作目录。
- Shift+Enter 支持在提示输入中换行。支持粘贴多行文本、文件和图片；图片会保留为临时 PNG 文件，并插入带引号的文件路径。
- Markdown 和 HTML 预览显示在文本旁边，随输入实时更新（⇧⌘V 或标签页右上角的按钮）。
  Markdown 使用 GitHub 采用的 cmark-gfm 渲染，支持表格、任务列表、删除线和自动链接。
- 全局搜索：按两次 Shift，即可通过文件名模糊匹配查找项目中的任意文件。
- 使用包含 915 个语言和文件格式名称的目录，根据文件名、复合扩展名和脚本解释器识别源文件。内置 Prism 的全部 297 个组件（291 个独立语法定义和 6 个辅助组件），按需加载。没有语法定义的格式使用基础文本着色。
- 界面提供 108 种语言选项。通过“语言”菜单即时切换，也可跟随系统语言。选择会被记住，已打开的文件、未保存的编辑内容和终端会话都会保留。阿拉伯语、希伯来语等从右向左书写的界面中，代码、预览和终端输出仍从左向右显示。
  翻译根据英文原文及其在编辑器、终端中的用途直接编写。系统提供的面板遵循 macOS 的语言设置。此目录并未涵盖全部自然语言和编程语言。参见 [翻译 Sumi](CONTRIBUTING.md#translating-sumi)。
- 浅色和深色外观跟随系统设置。

## 下载

- [最新正式版](../../releases/latest)
- [Nightly 构建](../../releases/tag/nightly)：每次 `main` 发生变更时重新构建。

下载 `Sumi.zip`，解压后将 Sumi 移到“应用程序”。同一个构建可在 Apple 芯片和 Intel Mac 上运行。

Sumi 未使用 Apple Developer ID 签名，因此 macOS 会阻止首次启动。打开“系统设置 › 隐私与安全性”，点击“仍要打开”，或运行：

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## 系统要求

macOS 14 或更高版本。构建需要 Xcode 26 或更高版本（Swift 6.2）。

## 从源代码构建

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

通过“文件 › 打开…”（⌘O）将文件夹作为项目打开，也可使用命令行：

```sh
open -a Sumi path/to/project
```

## 键盘快捷键

| 操作 | 快捷键 |
|---|---|
| 全局搜索 | ⇧⇧ 或 ⇧⌘O |
| 项目视图 | ⌘1 |
| 终端 | ⌥F12 |
| 新建终端标签页 | ⌘T |
| 交换终端与项目的位置 | ⌃⌘T |
| 最大化终端 | ⇧⌘↩ |
| Markdown / HTML 预览 | ⇧⌘V |
| 在项目树中选中 | ⌥⌘1 |
| 下一个 / 上一个标签页 | ⇧⌘] / ⇧⌘[ |
| 保存 / 全部保存 | ⌘S / ⌥⌘S |

## 参与贡献

欢迎提交问题报告、修复和翻译。请阅读 [CONTRIBUTING.md](CONTRIBUTING.md)。

## 许可证

MIT。Sumi 包含 SwiftTerm（MIT）、cmark-gfm（BSD-2-Clause）、Prism（MIT）及 GitHub Linguist 语言目录（MIT）；参见 [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)。
