# Sumi

E liichten Texteditor fir macOS, fir zesumme mat KI-Programméierungsagenten ze schaffen. Open Source (MIT).

Start Ären Agent am agebauten Terminal, klickt op d'Dateien, déi e verännert, fir se opzemaachen, a liest säi Markdown als formatéiert Säiten.

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

## Funktiounen

- Dateiweeër am Terminal si Linken. Wann e Programméierungsagent `⎿ M src/app.ts` oder `src/app.ts:42:7` ausgëtt, gëtt de Wee blo an e Klick mécht d'Datei op där Zeil op.
- Projetbam lénks, Editor an der Mëtt, Terminal ënnen.
- Tauscht Terminal a Projetbam (⌃⌘T), fir en Terminal iwwer déi ganz Héicht lénks ze hunn. Maximéiert en mat ⇧⌘↩.
- Dateie ginn no enger Tipppaus vu 500 ms a virum Zoumaachen automatesch gespäichert. Bei externen Ännerungen oder Späicherfeeler bleiwen Är Ännerungen am Tab, mat der Méiglechkeet eng Kopie ze späicheren.
- D'Zoumaache vun engem Terminal mat lafende Befeeler freet no Bestätegung, och bei Hannergrondaarbechten a beim Verloosse vun der App. Wann Dir de Panew verstoppt, lafen d'Sessioune weider.
- Terminaler benotze standardméisseg Metal, mam Schalter GPU-Duerstellung ënner Usiicht. Sicht am Output mat ⌘F; nei Tabs iwwerhuelen den aktuelle Schaffdossier.
- Shift+Enter behält d'Agab vu Prompts iwwer méi Zeilen. Apeche ënnerstëtzt méizeilegen Text, Dateien a Biller; Biller ginn als temporär PNG-Dateie gehalen an als Weeër an Zitatzeechen agesat.
- D'Virschau vu Markdown an HTML nieft dem Text gëtt beim Tippen aktualiséiert (⇧⌘V oder d'Knäppercher uewe riets am Tab). Markdown gëtt mat cmark-gfm duergestallt, deem selwechte Renderer wéi bei GitHub: Tabellen, Aufgabelëschten, duerchgestrachenen Text an automatesch Linken.
- Iwwerall sichen: dréckt zweemol op Shift, fir all Datei am Projet mat enger ongeféierer Nummssich ze fannen.
- Quellcode-Dateie gi mat engem Katalog vu 915 Sprooch- a Dateiformatnimm erkannt, mat Dateinimm, zesummegesaten Endungen a Skriptinterpreten. All 297 Prism-Komponenten (291 eegestänneg Grammairen a 6 Hëllefskomponenten) si mat dobäi a ginn no Bedarf gelueden. Formater ouni Grammaire benotzen einfach Textervirhiewung.
- D'Uewerfläch bitt 108 Sproochen. Wiesselt direkt mam Menü Sprooch oder benotzt d'Systemsprooch. D'Wiel gëtt gespäichert; oppen Dateien, net gespäichert Ännerungen an Terminalsessioune bleiwen op. An arabeschen, hebräeschen an anere Uewerfläche vu riets no lénks bleiwen Code, Virschau an Terminaloutput vu lénks no riets. D'Iwwersetzunge ginn direkt aus den engleschen Texter am Kontext vum Editor an Terminal geschriwwen. Systempanewen iwwerhuelen d'Sproochastellunge vu macOS. De Katalog deckt net all natierlech oder Programméierungssprooch of. Kuckt [Sumi iwwersetzen](CONTRIBUTING.md#translating-sumi).
- Hell an donkel Duerstellung riichte sech nom System.

## Eroflueden

- [Verëffentlechungen](../../releases)
- [Nuetsversioun](../../releases/tag/nightly): gëtt bei all Ännerung op `main` nei gebaut.

Luet `Sumi.zip` erof, entpaakt et a réckelt Sumi an Applications. Déi selwecht Versioun leeft op Apple silicon an Intel Macs.

Sumi ass net mat enger Apple Developer ID ënnerschriwwen; dofir blockéiert macOS den éischte Start. Maacht Systemastellungen › Dateschutz a Sécherheet op a klickt op Trotzdeem opmaachen, oder féiert dëst aus:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Viraussetzungen

macOS 14 oder méi nei. Fir ze baue brauch Dir Xcode 26 oder méi nei (Swift 6.2).

## Aus dem Quellcode bauen

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Maacht en Dossier als Projet mat Datei › Opmaachen… (⌘O) op, oder vun der Kommandozeil:

```sh
open -a Sumi path/to/project
```

## Tastaturkierzel

| Aktioun | Kierzel |
|---|---|
| Iwwerall sichen | ⇧⇧ oder ⇧⌘O |
| Projetbam | ⌘1 |
| Terminal | ⌥F12 |
| Neien Terminaltab | ⌘T |
| Terminal a Projet tauschen | ⌃⌘T |
| Terminal maximéieren | ⇧⌘↩ |
| Markdown / HTML-Virschau | ⇧⌘V |
| Am Projetbam auswielen | ⌥⌘1 |
| Nächsten Tab / Viregten Tab | ⇧⌘] / ⇧⌘[ |
| Späicheren / Alles späicheren | ⌘S / ⌥⌘S |

## Matmaachen

Feelermeldungen, Korrekturen an Iwwersetzunge si wëllkomm. Liest [CONTRIBUTING.md](CONTRIBUTING.md).

## Lizenz

MIT. Sumi enthält SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) an de Sproochekatalog vu GitHub Linguist (MIT); kuckt [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
