# Sumi

'n Liggewig macOS-teksredigeerder wat saam met KI-koderingsagente werk. Oopbron (MIT).

Laat jou agent in die ingeboude terminaal loop, klik op die lêers waarmee dit werk om hulle oop te maak, en lees die Markdown wat dit skryf as geformateerde bladsye.

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

## Kenmerke

- Lêerpaaie in die terminaal is skakels. Wanneer 'n koderingsagent `⎿ M src/app.ts` of `src/app.ts:42:7` druk, word die pad blou. Klik daarop om die lêer by daardie reël oop te maak.
- Die projekaansig is links, die redigeerder in die middel en die terminaal onder.
- Ruil die terminaal en projekaansig om (⌃⌘T) om 'n terminaal oor die volle hoogte links te plaas. Maksimeer die terminaal met ⇧⌘↩.
- Lêers word outomaties gestoor ná 'n tikpouse van 500 ms en voordat hulle toegemaak word. Eksterne veranderinge en stoorfoute laat jou wysigings in die oortjie behoue bly, met 'n opsie om 'n kopie te stoor.
- Wanneer jy 'n terminaal met lopende opdragte sluit, word bevestiging gevra. Dit sluit agtergrondtake en die afsluit van die toepassing in. As jy die paneel versteek, bly die sessies loop.
- Terminale gebruik standaard Metal. Die skakelaar Teken met GPU is in Aansig. Soek in uitvoer met ⌘F; nuwe oortjies neem die huidige werksgids oor.
- Shift+Enter behou meerreëlige invoer vir jou opdrag. Jy kan meerreëlige teks, lêers en beelde plak. Beelde word as tydelike PNG-lêers gehou en as paaie tussen aanhalingstekens ingevoeg.
- Voorskoue van Markdown en HTML verskyn langs die teks en werk by terwyl jy tik (⇧⌘V, of die knoppies regs bo in die oortjie).
  Markdown word met cmark-gfm vertoon, die weergawe-enjin wat GitHub gebruik: tabelle, taaklyste, deurgehaalde teks en outomatiese skakels.
- Soek oral: druk Shift twee keer om enige lêer in die projek met 'n benaderde naamsoektog te vind.
- Herken bronlêers met 'n katalogus van 915 taal- en lêerformaatname, insluitend lêername, saamgestelde uitbreidings en skriptolkers. Al 297 Prism-komponente (291 selfstandige grammatikas en 6 helpers) word ingesluit en op aanvraag gelaai. Formate sonder 'n grammatika gebruik basiese teksverligting.
- Die gebruikerskoppelvlak het 108 taalkeuses. Gebruik die Taal-kieslys om dadelik oor te skakel, of volg die stelseltaal. Jou keuse word onthou; oop lêers, ongestoorde wysigings en terminaalsessies bly oop. Arabiese, Hebreeuse en ander koppelvlakke wat van regs na links lees, hou kode, voorskoue en terminaaluitvoer van links na regs.
  Vertalings word direk uit die Engelse tekste geskryf, met die konteks van die redigeerder en terminaal in gedagte. Stelselpanele volg macOS se taalinstellings. Die katalogus dek nie elke menslike taal of programmeertaal nie. Sien [Vertaal Sumi](CONTRIBUTING.md#translating-sumi).
- Die ligte en donker voorkoms volg die stelsel.

## Aflaai

- [Vrystellings](../../releases)
- [Nagbou](../../releases/tag/nightly): word by elke verandering aan `main` herbou.

Laai `Sumi.zip` af, pak dit uit en skuif Sumi na Applications. Een bouweergawe werk op beide Apple silicon- en Intel-Macs.

Sumi is nie met 'n Apple Developer ID onderteken nie; macOS blokkeer dus die eerste begin. Maak Stelselinstellings › Privaatheid en Sekuriteit oop en klik Maak tog oop, of voer die volgende uit:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Vereistes

macOS 14 of later. Om te bou, benodig jy Xcode 26 of later (Swift 6.2).

## Bou uit bronkode

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Maak 'n vouer as projek oop via Lêer › Maak oop… (⌘O), of vanaf die opdragreël:

```sh
open -a Sumi path/to/project
```

## Sleutelbordkortpaaie

| Aksie | Kortpad |
|---|---|
| Soek oral | ⇧⇧ of ⇧⌘O |
| Projekaansig | ⌘1 |
| Terminaal | ⌥F12 |
| Nuwe terminaaloortjie | ⌘T |
| Ruil terminaal en projekaansig om | ⌃⌘T |
| Maksimeer terminaal | ⇧⌘↩ |
| Markdown / HTML-voorskou | ⇧⌘V |
| Kies in projekaansig | ⌥⌘1 |
| Volgende / vorige oortjie | ⇧⌘] / ⇧⌘[ |
| Stoor / Stoor alles | ⌘S / ⌥⌘S |

## Bydraes

Foutverslae, regstellings en vertalings is welkom. Lees [CONTRIBUTING.md](CONTRIBUTING.md).

## Lisensie

MIT. Sumi sluit SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) en die GitHub Linguist-taalkatalogus (MIT) in; sien [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
