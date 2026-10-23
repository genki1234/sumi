# 翻訳

Sumi は英語原文と 107 ロケールの訳文を収録しています。
各ロケールはメニュー、検索、ファイル操作、エディタ、ターミナルの全 96 文言を含みます。
世界のすべての自然言語を網羅しているわけではありません。

## 作成方法

2026-10-23 の初期版には Google Translate の出力を使用していました。
その出力を採用し続けず、英語原文と画面上の用途から、全 107 非英語ロケールの訳文を言語ごとに直接書き直しました。
今回の訳文の作成には、翻訳 API や外部翻訳サービスを使用していません。
母語話者による校閲済みという意味ではありません。

短いメニュー名は操作として訳し、説明文は省略せずに訳しています。
特に次の意味をそろえています。

- `Soft-Wrap`: 改行文字を追加せず、表示幅で行を折り返す操作。
- `Matches`: ファイル検索で一致した結果の件数。
- `Spaces`: インデントに使うスペースの数。
- `Local`: ローカルで動くターミナルセッションの名前。
- `Zoom`: ウインドウの大きさを切り替える操作。
- `Save a Copy`: 元のファイルを置き換えず、別のファイルとして保存する操作。

Sumi、Finder、GPU などの固有名や略語は、各言語でもそのまま使う場合があります。

## 収録ロケール

```
af am ar as az be bg bn bs ca ceb co cs cy da de el en
eo es et eu fa fi fr fy ga gd gl gu ha haw he hi hr ht
hu hy id ig is it ja jv ka kk km kn ko ku ky lb lo lt
lv mg mi mk ml mn mr ms mt my nb ne nl ny or pa pl ps
pt-BR pt-PT ro ru rw sd si sk sm sn so sq sr st su sv sw ta
te tg th tk tl tr tt ug uk ur uz vi xh yi yo zh-Hans zh-Hant zu
```

## 編集と検査

各翻訳の右辺だけを編集し、`%@`、`%ld`、`%1$ld`、`%2$ld` などの型と番号を維持してください。
キーボード記号の `⇧` や、操作の続きを示す `…` も維持してください。
新しい UI 文言は Swift の `L("…")` に追加してから、次のコマンドで全言語へ反映します。

```sh
swift scripts/l10n.swift sync
swift scripts/l10n.swift check
```

`check` はキーと書式の整合性を調べます。
翻訳の意味や自然さは、英語原文と実際の操作に照らして確認します。
