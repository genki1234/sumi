# Sumi

Léttur textaritill fyrir macOS, hannaður til að vinna með forritunarfulltrúum sem nota gervigreind. Opinn hugbúnaður (MIT).

Keyrðu fulltrúann í innbyggða skjáherminum, smelltu á skrárnar sem hann breytir til að opna þær og lestu Markdown sem hann skrifar sem uppsettar síður.

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

## Eiginleikar

- Skráarslóðir í skjáherminum eru tenglar. Þegar forritunarfulltrúi prentar `⎿ M src/app.ts` eða `src/app.ts:42:7` verður slóðin blá og smellur opnar skrána á þeirri línu.
- Verkefnistré vinstra megin, ritill í miðjunni og skjáhermir neðst.
- Víxlaðu skjáhermi og verkefnistré (⌃⌘T) til að hafa skjáhermi í fullri hæð vinstra megin. Hámarkaðu hann með ⇧⌘↩.
- Skrár vistast sjálfkrafa eftir 500 ms hlé á innslætti og áður en þeim er lokað. Við ytri breytingar eða vistunarvillu haldast breytingarnar þínar í flipanum og þú getur vistað afrit.
- Staðfestingar er krafist þegar skjáhermi með keyrandi skipunum er lokað, þar á meðal vegna bakgrunnsverka og þegar hætt er í forritinu. Lotur halda áfram þegar spjaldið er falið.
- Skjáhermar nota sjálfgefið Metal, með rofanum GPU-teikning í valmyndinni Skoða. Leitaðu í úttaki með ⌘F; nýir flipar erfa núverandi vinnumöppu.
- Shift+Enter varðveitir margra lína innslátt fyrirmæla. Líming styður margra lína texta, skrár og myndir; myndir geymast sem tímabundnar PNG-skrár og eru settar inn sem slóðir innan gæsalappa.
- Forskoðun Markdown og HTML við hlið textans uppfærist meðan þú skrifar (⇧⌘V eða hnapparnir efst til hægri í flipanum). Markdown er birt með cmark-gfm, sama birtingarvél og GitHub notar: töflur, verkefnalistar, yfirstrikun og sjálfvirkir tenglar.
- Leita alls staðar: ýttu tvisvar á Shift til að finna hvaða skrá sem er í verkefninu með ónákvæmri nafnaleit.
- Þekkir frumkóðaskrár með skrá yfir 915 heiti tungumála og skráarsniða, þar á meðal skráarheiti, samsettar endingar og skriftutúlka. Allar 297 Prism-einingarnar (291 sjálfstæð málfræði og 6 hjálpareiningar) fylgja með og hlaðast eftir þörfum. Snið án málfræði nota einfalda textalitun.
- Viðmótið býður 108 tungumál. Skiptu strax í valmyndinni Tungumál eða fylgdu tungumáli kerfisins. Valið er munað; opnar skrár, óvistaðar breytingar og skjáhermislotur haldast opnar. Í arabísku, hebresku og öðrum viðmótum frá hægri til vinstri haldast kóði, forskoðun og úttak skjáhermis frá vinstri til hægri. Þýðingar eru skrifaðar beint úr ensku textunum með samhengi ritils og skjáhermis. Kerfisspjöld fylgja tungumálastillingum macOS. Skráin nær ekki yfir öll náttúruleg mál eða forritunarmál. Sjá [Þýðingar á Sumi](CONTRIBUTING.md#translating-sumi).
- Ljóst og dökkt útlit fylgja kerfinu.

## Niðurhal

- [Nýjasta útgáfa](../../releases/latest)
- [Næturútgáfa](../../releases/tag/nightly): byggð að nýju við hverja breytingu á `main`.

Sæktu `Sumi.zip`, afþjappaðu og færðu Sumi í Applications. Sama útgáfan keyrir á bæði Apple silicon og Intel Mac-tölvum.

Sumi er ekki undirritað með Apple Developer ID og því hindrar macOS fyrstu ræsingu. Opnaðu Kerfisstillingar › Persónuvernd og öryggi og veldu að opna samt, eða keyrðu:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Kröfur

macOS 14 eða nýrra. Smíði krefst Xcode 26 eða nýrra (Swift 6.2).

## Byggja úr frumkóða

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Opnaðu möppu sem verkefni með Skrá › Opna… (⌘O) eða úr skipanalínu:

```sh
open -a Sumi path/to/project
```

## Flýtilyklar

| Aðgerð | Flýtilykill |
|---|---|
| Leita alls staðar | ⇧⇧ eða ⇧⌘O |
| Verkefnistré | ⌘1 |
| Skjáhermir | ⌥F12 |
| Nýr flipi í skjáhermi | ⌘T |
| Víxla skjáhermi og verkefni | ⌃⌘T |
| Hámarka skjáhermi | ⇧⌘↩ |
| Forskoðun Markdown / HTML | ⇧⌘V |
| Velja í verkefnistré | ⌥⌘1 |
| Næsti flipi / Fyrri flipi | ⇧⌘] / ⇧⌘[ |
| Vista / Vista allt | ⌘S / ⌥⌘S |

## Framlög

Villutilkynningar, lagfæringar og þýðingar eru velkomnar. Lestu [CONTRIBUTING.md](CONTRIBUTING.md).

## Leyfi

MIT. Sumi inniheldur SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) og tungumálaskrá GitHub Linguist (MIT); sjá [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
