# Sumi

Könnyű macOS-szövegszerkesztő, amelyet MI-alapú kódolóágensekkel való közös munkára terveztünk. Nyílt forráskódú (MIT).

Futtasd az ágenst a beépített terminálban, kattints az általa módosított fájlokra a megnyitásukhoz, és olvasd a létrehozott Markdown-szöveget megjelenített oldalként.

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

## Funkciók

- A terminál fájlútvonalai hivatkozások. Amikor egy kódolóágens például `⎿ M src/app.ts` vagy `src/app.ts:42:7` szöveget ír ki, az útvonal kék lesz; kattintással a megadott sorban nyílik meg a fájl.
- Bal oldalon projektnézet, középen szerkesztő, alul terminál.
- Cseréld fel a terminál és a projektnézet helyét (⌃⌘T), így bal oldalon teljes magasságú terminált kapsz. A ⇧⌘↩ maximalizálja a terminált.
- A fájlok 500 ms gépelési szünet után és bezárás előtt automatikusan mentődnek. Külső változás vagy sikertelen mentés esetén a szerkesztéseid megmaradnak a lapon, és másolatot menthetsz.
- Futó parancsokat tartalmazó terminál bezárásakor megerősítést kér, a háttérfeladatokat és az alkalmazásból való kilépést is beleértve. A panel elrejtése nem állítja le a munkameneteket.
- A terminálok alapértelmezésben Metalt használnak; a Nézet menü GPU-s megjelenítés kapcsolójával válthatsz. A kimenetben ⌘F-fel kereshetsz; az új lapok öröklik az aktuális munkakönyvtárat.
- A Shift+Enter megőrzi a többsoros promptbevitelt. Többsoros szöveg, fájl és kép is beilleszthető; a képek ideiglenes PNG-ként tárolódnak, és idézőjeles útvonalként kerülnek a bevitelbe.
- A szöveg mellett látható Markdown- és HTML-előnézet gépelés közben frissül (⇧⌘V vagy a lap jobb felső gombjai). A Markdown megjelenítését a GitHub által is használt cmark-gfm végzi: táblázatok, feladatlisták, áthúzás és automatikus hivatkozások.
- Keresés mindenhol: nyomd meg kétszer a Shiftet a projekt bármely fájljának közelítő név szerinti kereséséhez.
- A forrásfájlokat 915 nyelv- és fájlformátumnév katalógusával ismeri fel, fájlnevek, összetett kiterjesztések és szkriptértelmezők alapján is. Mind a 297 Prism-összetevőt (291 önálló nyelvtan és 6 segéd) tartalmazza, igény szerinti betöltéssel. A nyelvtan nélküli formátumok egyszerű szövegkiemelést kapnak.
- A felület 108 nyelvet kínál. A Nyelv menüvel azonnal válthatsz, vagy követheted a rendszer nyelvét. A választást megjegyzi; a megnyitott fájlok, mentetlen módosítások és terminálmunkamenetek nyitva maradnak. Arab, héber és más jobbról balra író felületeken a kód, az előnézet és a terminálkimenet továbbra is balról jobbra jelenik meg. A fordítások közvetlenül az angol szövegből készültek, a szerkesztő és a terminál környezetét figyelembe véve. A rendszerpanelok a macOS nyelvi beállításait követik. A katalógus nem fed le minden természetes és programozási nyelvet. Lásd: [A Sumi fordítása](CONTRIBUTING.md#translating-sumi).
- A világos és sötét megjelenés a rendszert követi.

## Letöltés

- [Legújabb kiadás](../../releases/latest)
- [Éjszakai build](../../releases/tag/nightly): a `main` minden módosításakor újra elkészül.

Töltsd le a `Sumi.zip` fájlt, csomagold ki, és helyezd a Sumit az Applications mappába. Egyetlen build fut Apple silicon és Intel Macen is.

A Sumi nincs Apple Developer ID-val aláírva, ezért a macOS blokkolja az első indítást. A Rendszerbeállítások › Adatvédelem és biztonság részén kattints a Megnyitás mindenképpen gombra, vagy futtasd:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Követelmények

macOS 14 vagy újabb. A fordításhoz Xcode 26 vagy újabb kell (Swift 6.2).

## Fordítás forrásból

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Nyiss meg egy mappát projektként a Fájl › Megnyitás… menüből (⌘O), vagy parancssorból:

```sh
open -a Sumi path/to/project
```

## Billentyűparancsok

| Művelet | Billentyűparancs |
|---|---|
| Keresés mindenhol | ⇧⇧ vagy ⇧⌘O |
| Projektnézet | ⌘1 |
| Terminál | ⌥F12 |
| Új terminállap | ⌘T |
| Terminál és projekt helyének felcserélése | ⌃⌘T |
| Terminál maximalizálása | ⇧⌘↩ |
| Markdown / HTML előnézet | ⇧⌘V |
| Kijelölés a projektnézetben | ⌥⌘1 |
| Következő lap / Előző lap | ⇧⌘] / ⇧⌘[ |
| Mentés / Összes mentése | ⌘S / ⌥⌘S |

## Közreműködés

Hibajelentéseket, javításokat és fordításokat is szívesen fogadunk. Olvasd el: [CONTRIBUTING.md](CONTRIBUTING.md).

## Licenc

MIT. A Sumi tartalmazza a SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) összetevőket és a GitHub Linguist nyelvi katalógusát (MIT); lásd: [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
