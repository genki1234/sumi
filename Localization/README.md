# 翻訳

Sumi は 108 ロケールの UI 翻訳を収録しています。
世界のすべての自然言語を網羅しているわけではありません。
言語の追加・同期・検査は `scripts/l10n.swift` で行います。

2026-10-23 に追加した以下の 74 言語の初期訳と、既存言語に追加した UI 文言の訳には Google Translate を使用しました。
プログラミング用語とファイル操作の文脈を補い、英語のまま返された項目の再翻訳、書式プレースホルダーの一致、全キーの存在を検査しています。
自動保存・ターミナル終了確認・GPU 描画に追加した文言も、英語と日本語を除いて同じ翻訳手順で反映しています。
母語話者による校閲済みの翻訳ではありません。
英語と同じ綴りの借用語（Terminal、Zoom など）と OK は、そのまま使う場合があります。

```
af am as az be bg bn bs ceb co cy eo et eu fa fy ga gd gl gu ha haw ht hy ig is
jv ka kk km kn ku ky lb lo lt lv mg mi mk ml mn mr mt my ne ny or pa ps rw sd
si sm sn so sq sr st su sw ta te tg tk tl tt ug ur uz xh yi yo zu
```

各翻訳の右辺だけを編集し、`%@`、`%ld`、`%1$ld`、`%2$ld` などの型と番号を維持してください。
新しい UI 文言は Swift の `L("…")` に追加してから、次のコマンドで全言語へ反映します。

```sh
swift scripts/l10n.swift sync
swift scripts/l10n.swift check
```

`check` はキーと書式の整合性を調べます。
翻訳の自然さや意味の正確さを保証する検査ではありません。
