# Sumi

軽量で、AI コーディングエージェントと一緒に使いやすい macOS 向けテキストエディタです。オープンソース（MIT）です。

内蔵のターミナルでエージェントを動かし、エージェントが触ったファイルはクリックで開き、エージェントが書いたマークダウンは描画した形で読めます。

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

## 機能

- ターミナルに出たファイルのパスはリンクになります。コーディングエージェントが `⎿ M src/app.ts` や `src/app.ts:42:7` と出力すると青く表示され、クリックするとその行を開きます。
- 左にプロジェクトのファイルツリー、中央にエディタ、下にターミナルを置きます。
- ターミナルとファイルツリーを入れ替えると（⌃⌘T）、ターミナルを左に縦いっぱいで置けます。⇧⌘↩ でターミナルを最大化します。
- ファイルは入力が止まってから 500 ミリ秒後と閉じる直前に自動保存します。外部変更との競合や保存エラーでは編集内容を残し、コピーを保存できます。
- 実行中のコマンドがあるターミナルを閉じる前に確認します。バックグラウンドジョブとアプリ終了も対象です。非表示にしても処理は継続します。
- ターミナルは Metal 描画を既定で使います。表示メニューから GPU 描画を切り替えられます。⌘F で出力を検索し、新規タブは現在の作業フォルダを引き継ぎます。
- Shift+Enter の改行入力、複数行の貼り付け、画像・ファイルの貼り付けに対応します。画像は一時 PNG として保持し、引用符付きパスを渡します。
- マークダウンと HTML は、テキストの横に描画結果を表示し、入力に合わせて更新します（⇧⌘V、またはタブ右上のボタン）。
  マークダウンは GitHub と同じ cmark-gfm で変換し、表・チェックリスト・取り消し線・URL の自動リンクに対応します。
- Shift を 2 回押すと、プロジェクト内のファイルをあいまい検索で開けます。
- 915 種類の言語・ファイル形式名のカタログで、ファイル名・複合拡張子・スクリプトの実行プログラムから言語を識別します。Prism の全 297 コンポーネント（291 構文定義と 6 補助定義）を同梱し、使用時に読み込みます。構文定義のない形式は基本的なテキストの着色を行います。
- 表示言語は 108 種類から選べます。言語メニューで即座に切り替えるか、システムの設定に従えます。選択を保存し、開いているファイル・未保存の編集・ターミナルのセッションを維持します。アラビア語・ヘブライ語などの画面でも、コード・プレビュー・ターミナルは左から右に表示します。
  翻訳は英語原文とエディタ・ターミナルでの用途に合わせて直接作成しています。システム提供のパネルは macOS の言語設定に従います。世界の全自然言語・全プログラミング言語の網羅には至っていません。手順は [翻訳への参加](CONTRIBUTING.md#translating-sumi) にあります。
- ライト・ダークの外観はシステムの設定に合わせて切り替わります。

## ダウンロード

- [最新の正式版](../../releases/latest)
- [最新ビルド（nightly）](../../releases/tag/nightly): `main` が更新されるたびに作り直します。

`Sumi.zip` をダウンロードして展開し、Sumi をアプリケーションフォルダへ移します。Apple シリコンと Intel のどちらの Mac でも動きます。

Sumi は Apple の Developer ID で署名していないため、最初の起動は macOS が止めます。システム設定 › プライバシーとセキュリティで「このまま開く」を押すか、次を実行してください。

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## 動作環境

macOS 14 以降。ビルドには Xcode 26 以降（Swift 6.2）が必要です。

## ソースからビルド

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

フォルダをプロジェクトとして開くには、ファイル › 開く…（⌘O）を使うか、コマンドラインから開きます。

```sh
open -a Sumi path/to/project
```

## キーボードショートカット

| 操作 | ショートカット |
|---|---|
| どこでも検索 | ⇧⇧ または ⇧⌘O |
| プロジェクト | ⌘1 |
| ターミナル | ⌥F12 |
| 新規ターミナルタブ | ⌘T |
| ターミナルとプロジェクトを入れ替える | ⌃⌘T |
| ターミナルを最大化 | ⇧⌘↩ |
| プレビューの切り替え（マークダウン・HTML） | ⇧⌘V |
| プロジェクトビューで選択 | ⌥⌘1 |
| 次のタブ・前のタブ | ⇧⌘] / ⇧⌘[ |
| 保存・すべて保存 | ⌘S / ⌥⌘S |

## 開発への参加

不具合の報告・修正・翻訳を歓迎します。[CONTRIBUTING.md](CONTRIBUTING.md) をお読みください。

## ライセンス

MIT です。SwiftTerm（MIT）、cmark-gfm（BSD-2-Clause）、Prism（MIT）、GitHub Linguist の言語カタログ（MIT）を同梱しています。詳細は [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) にあります。
