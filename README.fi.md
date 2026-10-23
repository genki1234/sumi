# Sumi

Kevyt macOS-tekstieditori, joka on suunniteltu tekoälypohjaisten ohjelmointiagenttien rinnalle. Avointa lähdekoodia (MIT).

Käytä agenttiasi sisäänrakennetussa päätteessä, avaa sen muokkaamat tiedostot napsauttamalla ja lue sen kirjoittama Markdown muotoiltuina sivuina.

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

## Ominaisuudet

- Päätteessä näkyvät tiedostopolut ovat linkkejä. Kun ohjelmointiagentti tulostaa `⎿ M src/app.ts` tai `src/app.ts:42:7`, polku muuttuu siniseksi ja napsautus avaa tiedoston kyseiseltä riviltä.
- Projektinäkymä on vasemmalla, editori keskellä ja pääte alhaalla.
- Vaihda päätteen ja projektinäkymän paikkoja (⌃⌘T), jolloin pääte täyttää vasemman reunan koko korkeudelta. Suurenna pääte painamalla ⇧⌘↩.
- Tiedostot tallennetaan automaattisesti, kun kirjoittamisessa on 500 ms:n tauko, sekä ennen sulkemista. Ulkoisten muutosten tai tallennusvirheiden yhteydessä muokkaukset säilyvät välilehdessä, ja voit tallentaa niistä kopion.
- Käynnissä olevia komentoja sisältävän päätteen sulkeminen pyytää vahvistuksen. Tämä koskee myös taustatöitä ja sovelluksen lopettamista. Paneelin kätkeminen jättää istunnot käyntiin.
- Päätteet käyttävät oletusarvoisesti Metalia. Näytä-valikon GPU-piirto-asetuksella voit vaihtaa piirtotapaa. Hae tulosteesta painamalla ⌘F; uudet välilehdet perivät nykyisen työhakemiston.
- Shift+Enter säilyttää monirivisen kehotteen syötön. Voit liittää monirivistä tekstiä, tiedostoja ja kuvia; kuvat säilytetään väliaikaisina PNG-tiedostoina ja niiden polut lisätään lainausmerkeissä.
- Markdownin ja HTML:n esikatselu näkyy tekstin vieressä ja päivittyy kirjoitettaessa (⇧⌘V tai välilehden oikean yläkulman painikkeet).
  Markdown esitetään GitHubinkin käyttämällä cmark-gfm:llä, joka tukee taulukoita, tehtäväluetteloita, yliviivausta ja automaattisia linkkejä.
- Etsi kaikkialta: paina Shiftiä kahdesti löytääksesi projektin tiedoston nimen likimääräisellä haulla.
- Lähdetiedostot tunnistetaan 915 kielen ja tiedostomuodon luettelon avulla tiedostonimistä, yhdistelmäpäätteistä ja skriptien tulkeista. Kaikki 297 Prism-komponenttia (291 itsenäistä kielioppia ja kuusi apukomponenttia) sisältyvät sovellukseen ja ladataan tarvittaessa. Ilman kielioppia olevat muodot käyttävät yksinkertaista tekstin väritystä.
- Käyttöliittymässä on 108 kielivaihtoehtoa. Vaihda kieli heti Käyttöliittymän kieli -valikosta tai seuraa järjestelmän kieltä. Valinta muistetaan; avoimet tiedostot, tallentamattomat muokkaukset ja pääteistunnot säilyvät. Arabian, heprean ja muiden oikealta vasemmalle kirjoitettavien käyttöliittymien koodi, esikatselut ja päätteen tuloste pysyvät vasemmalta oikealle.
  Käännökset kirjoitetaan suoraan englanninkielisten tekstien sekä editori- ja päätekontekstin pohjalta. Järjestelmän tarjoamat paneelit noudattavat macOS:n kieliasetuksia. Luettelo ei kata kaikkia luonnollisia kieliä tai ohjelmointikieliä. Katso [Sumin kääntäminen](CONTRIBUTING.md#translating-sumi).
- Vaalea ja tumma ulkoasu seuraavat järjestelmää.

## Lataaminen

- [Julkaisut](../../releases)
- [Nightly-koonti](../../releases/tag/nightly): rakennetaan jokaisen `main`-haaran muutoksen yhteydessä.

Lataa `Sumi.zip`, pura se ja siirrä Sumi Ohjelmat-kansioon. Sama sovellus toimii sekä Applen sirulla että Intel-suorittimella varustetuissa Maceissa.

Sumi ei ole allekirjoitettu Apple Developer ID:llä, joten macOS estää ensimmäisen käynnistyksen. Avaa Järjestelmäasetukset › Tietosuoja ja suojaus ja valitse Avaa silti, tai suorita:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Vaatimukset

macOS 14 tai uudempi. Rakentamiseen tarvitaan Xcode 26 tai uudempi (Swift 6.2).

## Rakentaminen lähdekoodista

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Avaa kansio projektina valitsemalla Tiedosto › Avaa… (⌘O) tai komentoriviltä:

```sh
open -a Sumi path/to/project
```

## Näppäinoikotiet

| Toiminto | Oikotie |
|---|---|
| Etsi kaikkialta | ⇧⇧ tai ⇧⌘O |
| Projektinäkymä | ⌘1 |
| Pääte | ⌥F12 |
| Uusi päätevälilehti | ⌘T |
| Vaihda päätteen ja projektin paikkoja | ⌃⌘T |
| Suurenna pääte | ⇧⌘↩ |
| Markdownin / HTML:n esikatselu | ⇧⌘V |
| Valitse projektinäkymässä | ⌥⌘1 |
| Seuraava / edellinen välilehti | ⇧⌘] / ⇧⌘[ |
| Tallenna / Tallenna kaikki | ⌘S / ⌥⌘S |

## Osallistuminen

Virheilmoitukset, korjaukset ja käännökset ovat tervetulleita. Lue [CONTRIBUTING.md](CONTRIBUTING.md).

## Lisenssi

MIT. Sumi sisältää SwiftTermin (MIT), cmark-gfm:n (BSD-2-Clause), Prismin (MIT) ja GitHub Linguistin kieliluettelon (MIT); katso [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
