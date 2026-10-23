# Sumi

專為與 AI 程式設計代理協作而打造的輕量 macOS 文字編輯器。開放原始碼（MIT）。

在內建終端機中執行代理，點選代理修改的檔案即可開啟，並以排版完成的頁面閱讀代理撰寫的 Markdown。

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

- 終端機中的檔案路徑會變成連結。程式設計代理輸出 `⎿ M src/app.ts` 或 `src/app.ts:42:7` 時，路徑會顯示為藍色，點選即可開啟檔案並前往對應行。
- 左側是專案樹狀列表，中央是編輯器，下方是終端機。
- 交換終端機與專案的位置（⌃⌘T），即可在左側配置佔滿整個高度的終端機。使用 ⇧⌘↩ 將終端機最大化。
- 停止輸入 500 ms 後，以及關閉檔案前，會自動儲存。遇到外部變更或儲存失敗時，編輯內容仍保留於分頁中，並可儲存副本。
- 關閉仍有指令執行中的終端機時會要求確認，背景工作和結束應用程式時也包含在內。隱藏面板會讓工作階段繼續執行。
- 終端機預設使用 Metal，可透過「顯示」選單的「GPU 繪製」切換。使用 ⌘F 搜尋輸出；新分頁會沿用目前的工作目錄。
- Shift+Enter 支援在提示輸入中換行。可貼上多行文字、檔案及圖片；圖片會保留為暫存 PNG，並插入加上引號的檔案路徑。
- Markdown 和 HTML 預覽會顯示在文字旁，隨輸入即時更新（⇧⌘V 或分頁右上角的按鈕）。
  Markdown 使用 GitHub 採用的 cmark-gfm 繪製，支援表格、工作清單、刪除線和自動連結。
- 全域搜尋：按兩次 Shift，即可透過檔名模糊比對尋找專案中的任何檔案。
- 使用含 915 個語言及檔案格式名稱的目錄，依檔名、複合副檔名及指令稿直譯器辨識原始碼檔案。隨附 Prism 全部 297 個元件（291 個獨立語法定義和 6 個輔助元件），並在需要時載入。沒有語法定義的格式使用基本文字著色。
- 介面提供 108 種語言選項。透過「語言」選單即可立即切換，也可跟隨系統語言。選擇會被記住；已開啟的檔案、尚未儲存的編輯內容和終端機工作階段都會保留。阿拉伯文、希伯來文等由右至左書寫的介面中，程式碼、預覽及終端機輸出仍由左至右顯示。
  翻譯依據英文原文及其在編輯器、終端機中的用途直接撰寫。系統提供的面板會遵循 macOS 語言設定。此目錄並未涵蓋所有自然語言與程式語言。請參閱 [翻譯 Sumi](CONTRIBUTING.md#translating-sumi)。
- 淺色與深色外觀會跟隨系統設定。

## 下載

- [最新正式版](../../releases/latest)
- [Nightly 組建](../../releases/tag/nightly)：每次 `main` 變更時重新建置。

下載 `Sumi.zip`，解壓縮後將 Sumi 移至「應用程式」。同一組建可在 Apple 晶片與 Intel Mac 上執行。

Sumi 未使用 Apple Developer ID 簽署，因此 macOS 會阻止首次啟動。開啟「系統設定 › 隱私權與安全性」，點選「強制打開」，或執行：

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## 系統需求

macOS 14 或以上版本。建置需要 Xcode 26 或以上版本（Swift 6.2）。

## 從原始碼建置

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

透過「檔案 › 開啟⋯」（⌘O）將檔案夾作為專案開啟，或使用命令列：

```sh
open -a Sumi path/to/project
```

## 鍵盤快速鍵

| 操作 | 快速鍵 |
|---|---|
| 全域搜尋 | ⇧⇧ 或 ⇧⌘O |
| 專案檢視 | ⌘1 |
| 終端機 | ⌥F12 |
| 新增終端機分頁 | ⌘T |
| 交換終端機與專案的位置 | ⌃⌘T |
| 將終端機最大化 | ⇧⌘↩ |
| Markdown / HTML 預覽 | ⇧⌘V |
| 在專案樹狀列表中選取 | ⌥⌘1 |
| 下一個 / 上一個分頁 | ⇧⌘] / ⇧⌘[ |
| 儲存 / 全部儲存 | ⌘S / ⌥⌘S |

## 參與貢獻

歡迎提供問題回報、修正與翻譯。請閱讀 [CONTRIBUTING.md](CONTRIBUTING.md)。

## 授權條款

MIT。Sumi 包含 SwiftTerm（MIT）、cmark-gfm（BSD-2-Clause）、Prism（MIT）及 GitHub Linguist 語言目錄（MIT）；請參閱 [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)。
