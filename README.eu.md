# Sumi

macOSerako testu-editore arina, AI programazio-agenteekin batera lan egiteko sortua. Kode irekikoa (MIT).

Exekutatu agentea terminal integratuan, ireki lantzen dituen fitxategiak klik eginez eta irakurri idazten duen Markdowna formateatutako orri gisa.

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

## Eginbideak

- Terminaleko fitxategi-bideak estekak dira. Programazio-agente batek `⎿ M src/app.ts` edo `src/app.ts:42:7` erakusten duenean, bidea urdin bihurtzen da eta klik eginez fitxategia lerro horretan irekitzen da.
- Proiektuaren ikuspegia ezkerrean, editorea erdian eta terminala behean.
- Trukatu terminalaren eta proiektuaren ikuspegiaren kokapenak (⌃⌘T), terminala ezkerrean altuera osoan jartzeko. Maximizatu terminala ⇧⌘↩ bidez.
- Fitxategiak automatikoki gordetzen dira idazteari 500 ms utzi ondoren eta itxi aurretik. Kanpoko aldaketak edo gordetze-akatsak gertatuz gero, zure aldaketak fitxan geratzen dira, kopia gordetzeko aukerarekin.
- Komandoak exekutatzen dituen terminala ixteak berrespena eskatzen du, baita atzeko planoko lanekin eta aplikaziotik irtetean ere. Panela ezkutatzean saioek martxan jarraitzen dute.
- Terminalek Metal erabiltzen dute lehenespenez; Ikusi menuan «GPU bidez marraztea» etengailua dago. Bilatu irteeran ⌘F bidez; fitxa berriek uneko lan-direktorioa hartzen dute.
- Shift+Enter bidez lerro anitzeko aginduak sar daitezke. Lerro anitzeko testua, fitxategiak eta irudiak itsats daitezke; irudiak aldi baterako PNG gisa mantentzen dira eta komatxo arteko bide gisa txertatzen dira.
- Markdown eta HTML aurrebista testuaren alboan, idatzi ahala eguneratua (⇧⌘V edo fitxaren goiko eskuineko botoiak).
  Markdowna cmark-gfm bidez bistaratzen da, GitHubek erabiltzen duen motorrarekin: taulak, zeregin-zerrendak, testu marratua eta esteka automatikoak.
- Bilatu edonon: sakatu Shift bi aldiz proiektuko edozein fitxategi izenaren gutxi gorabeherako bat-etortze bidez aurkitzeko.
- Iturburu-fitxategiak 915 hizkuntza- eta fitxategi-formatu izenen katalogoarekin ezagutzen ditu; fitxategi-izenak, luzapen konposatuak eta script-interpreteak barne. Prismen 297 osagaiak (291 gramatika independente eta 6 laguntzaile) sartuta daude eta behar ahala kargatzen dira. Gramatikarik gabeko formatuek oinarrizko testu-nabarmentzea erabiltzen dute.
- Interfazeak 108 hizkuntza-aukera ditu. Aldatu berehala Hizkuntza menuan edo jarraitu sistemaren hizkuntza. Aukera gogoratzen da; irekitako fitxategiak, gorde gabeko aldaketak eta terminal-saioak irekita mantentzen dira. Arabierazko, hebreerazko eta eskuinetik ezkerrera doazen beste interfazeetan, kodea, aurrebistak eta terminaleko irteera ezkerretik eskuinera mantentzen dira.
  Itzulpenak ingelesezko testuetatik zuzenean idazten dira, editoreko eta terminaleko testuingurua kontuan hartuta. Sistemaren panelek macOSen hizkuntza-ezarpenak jarraitzen dituzte. Katalogoak ez ditu hizkuntza natural eta programazio-lengoaia guztiak hartzen. Ikusi [Sumi itzultzea](CONTRIBUTING.md#translating-sumi).
- Itxura argiak eta ilunak sistema jarraitzen dute.

## Deskargatu

- [Azken bertsioa](../../releases/latest)
- [Gaueko konpilazioa](../../releases/tag/nightly): `main` aldatzen den bakoitzean berriro eraikitzen da.

Deskargatu `Sumi.zip`, deskonprimitu eta eraman Sumi Applications karpetara. Konpilazio berak Apple silicon zein Intel Macetan funtzionatzen du.

Sumi ez dago Apple Developer ID batekin sinatuta; horregatik macOSek lehen abiaraztea blokeatzen du. Ireki Sistemaren ezarpenak › Pribatutasuna eta segurtasuna eta egin klik «Ireki hala ere» aukeran, edo exekutatu:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Eskakizunak

macOS 14 edo berriagoa. Eraikitzeko Xcode 26 edo berriagoa behar da (Swift 6.2).

## Iturburutik eraiki

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Ireki karpeta bat proiektu gisa Fitxategia › Ireki… (⌘O) bidez edo komando-lerrotik:

```sh
open -a Sumi path/to/project
```

## Teklatuko lasterbideak

| Ekintza | Lasterbidea |
|---|---|
| Bilatu edonon | ⇧⇧ edo ⇧⌘O |
| Proiektuaren ikuspegia | ⌘1 |
| Terminala | ⌥F12 |
| Terminal-fitxa berria | ⌘T |
| Trukatu terminalaren eta proiektuaren ikuspegiaren kokapenak | ⌃⌘T |
| Maximizatu terminala | ⇧⌘↩ |
| Markdown / HTML aurrebista | ⇧⌘V |
| Hautatu proiektuaren ikuspegian | ⌥⌘1 |
| Hurrengo / aurreko fitxa | ⇧⌘] / ⇧⌘[ |
| Gorde / Gorde dena | ⌘S / ⌥⌘S |

## Lagundu

Ongi etorriak dira akats-txostenak, zuzenketak eta itzulpenak. Irakurri [CONTRIBUTING.md](CONTRIBUTING.md).

## Lizentzia

MIT. Sumik SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) eta GitHub Linguisten hizkuntza-katalogoa (MIT) dakartza; ikusi [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
