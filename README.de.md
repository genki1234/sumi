# Sumi

Ein schlanker Texteditor für macOS, entwickelt für die Zusammenarbeit mit KI-Programmieragenten. Open Source (MIT).

Starte deinen Agenten im eingebauten Terminal, öffne die Dateien, mit denen er arbeitet, per Klick und lies sein Markdown als formatierte Seiten.

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

## Funktionen

- Dateipfade im Terminal sind Links. Gibt ein Programmieragent `⎿ M src/app.ts` oder `src/app.ts:42:7` aus, wird der Pfad blau. Ein Klick öffnet die Datei an der betreffenden Zeile.
- Projektansicht links, Editor in der Mitte, Terminal unten.
- Vertausche Terminal und Projektansicht (⌃⌘T), um links ein Terminal über die gesamte Höhe anzuzeigen. Mit ⇧⌘↩ maximierst du das Terminal.
- Dateien werden nach einer Schreibpause von 500 ms und vor dem Schließen automatisch gesichert. Bei externen Änderungen oder fehlgeschlagenem Sichern bleiben deine Bearbeitungen im Tab erhalten; du kannst eine Kopie sichern.
- Das Schließen eines Terminals mit laufenden Befehlen erfordert eine Bestätigung. Das gilt auch für Hintergrundaufträge und das Beenden der App. Beim Ausblenden des Bereichs laufen die Sitzungen weiter.
- Terminals verwenden standardmäßig Metal; unter Darstellung gibt es den Schalter „GPU-Darstellung“. Mit ⌘F durchsuchst du die Ausgabe; neue Tabs übernehmen das aktuelle Arbeitsverzeichnis.
- Shift+Enter ermöglicht mehrzeilige Eingaben für Prompts. Du kannst mehrzeiligen Text, Dateien und Bilder einsetzen. Bilder werden als temporäre PNGs gespeichert und als Pfade in Anführungszeichen eingefügt.
- Markdown- und HTML-Vorschau neben dem Text, beim Schreiben aktualisiert (⇧⌘V oder die Tasten oben rechts im Tab).
  Markdown wird mit cmark-gfm dargestellt, das auch GitHub verwendet: Tabellen, Aufgabenlisten, durchgestrichener Text und automatische Links.
- Überall suchen: Drücke zweimal Shift, um jede Datei im Projekt über eine unscharfe Namenssuche zu finden.
- Erkennt Quelldateien anhand eines Katalogs mit 915 Sprach- und Dateiformatnamen, darunter Dateinamen, zusammengesetzte Erweiterungen und Skriptinterpreter. Alle 297 Prism-Komponenten (291 eigenständige Grammatiken und 6 Hilfskomponenten) sind enthalten und werden bei Bedarf geladen. Formate ohne Grammatik erhalten eine einfache Texthervorhebung.
- Die Oberfläche bietet 108 Sprachoptionen. Wechsle sofort über das Menü Sprache oder verwende die Systemsprache. Die Auswahl wird gespeichert; offene Dateien, ungesicherte Bearbeitungen und Terminalsitzungen bleiben geöffnet. Arabische, hebräische und andere Oberflächen von rechts nach links zeigen Code, Vorschauen und Terminalausgabe weiterhin von links nach rechts an.
  Die Übersetzungen entstehen direkt aus den englischen Texten unter Berücksichtigung ihres Kontexts im Editor und Terminal. Systemdialoge folgen den macOS-Spracheinstellungen. Der Katalog deckt nicht jede natürliche Sprache oder Programmiersprache ab. Siehe [Sumi übersetzen](CONTRIBUTING.md#translating-sumi).
- Helles und dunkles Erscheinungsbild folgen dem System.

## Download

- [Veröffentlichungen](../../releases)
- [Nightly-Version](../../releases/tag/nightly): wird bei jeder Änderung an `main` neu erstellt.

Lade `Sumi.zip` herunter, entpacke es und verschiebe Sumi in „Programme“. Derselbe Build läuft auf Macs mit Apple silicon und Intel.

Sumi ist nicht mit einer Apple Developer ID signiert, daher blockiert macOS den ersten Start. Öffne Systemeinstellungen › Datenschutz & Sicherheit und klicke auf „Dennoch öffnen“, oder führe Folgendes aus:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Voraussetzungen

macOS 14 oder neuer. Zum Bauen wird Xcode 26 oder neuer benötigt (Swift 6.2).

## Aus dem Quellcode bauen

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Öffne einen Ordner als Projekt über Ablage › Öffnen… (⌘O) oder über die Befehlszeile:

```sh
open -a Sumi path/to/project
```

## Tastaturkurzbefehle

| Aktion | Kurzbefehl |
|---|---|
| Überall suchen | ⇧⇧ oder ⇧⌘O |
| Projektansicht | ⌘1 |
| Terminal | ⌥F12 |
| Neuer Terminal-Tab | ⌘T |
| Terminal und Projektansicht vertauschen | ⌃⌘T |
| Terminal maximieren | ⇧⌘↩ |
| Markdown-/HTML-Vorschau | ⇧⌘V |
| In Projektansicht auswählen | ⌥⌘1 |
| Nächster / vorheriger Tab | ⇧⌘] / ⇧⌘[ |
| Sichern / Alle sichern | ⌘S / ⌥⌘S |

## Mitwirken

Fehlermeldungen, Korrekturen und Übersetzungen sind willkommen. Lies [CONTRIBUTING.md](CONTRIBUTING.md).

## Lizenz

MIT. Sumi enthält SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) und den Sprachkatalog von GitHub Linguist (MIT); siehe [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
