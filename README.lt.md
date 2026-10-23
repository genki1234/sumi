# Sumi

Lengvas macOS teksto redaktorius, skirtas dirbti kartu su DI programavimo agentais. Atvirasis kodas (MIT).

Paleiskite agentą integruotame terminale, spustelėkite jo keičiamus failus, kad juos atvertumėte, ir skaitykite jo rašomą Markdown kaip suformatuotus puslapius.

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

## Galimybės

- Failų keliai terminale yra nuorodos. Programavimo agentui išvedus `⎿ M src/app.ts` arba `src/app.ts:42:7`, kelias nusidažo mėlynai, o spustelėjus failas atveriamas ties ta eilute.
- Projekto medis kairėje, redaktorius centre, terminalas apačioje.
- Sukeiskite terminalą ir projekto medį (⌃⌘T), kad kairėje būtų viso aukščio terminalas. Išdidinkite jį su ⇧⌘↩.
- Failai automatiškai išsaugomi po 500 ms rašymo pauzės ir prieš užveriant. Esant išoriniams pakeitimams ar išsaugojimo klaidai jūsų pakeitimai lieka kortelėje ir galite išsaugoti kopiją.
- Užveriant terminalą, kuriame vykdomos komandos, prašoma patvirtinti, įskaitant fonines užduotis ir programos užbaigimą. Paslėpus skydelį seansai veikia toliau.
- Terminalai numatytai naudoja Metal; meniu Rodinys yra jungiklis Atvaizdavimas su GPU. Išvestyje ieškokite su ⌘F; naujos kortelės paveldi esamą darbinį aplanką.
- Shift+Enter išlaiko kelių eilučių užklausos įvestį. Galima įklijuoti kelių eilučių tekstą, failus ir paveikslėlius; paveikslėliai laikomi laikinais PNG failais ir įterpiami kaip kabutėmis apgaubti keliai.
- Markdown ir HTML peržiūra šalia teksto atnaujinama rašant (⇧⌘V arba kortelės viršutiniame dešiniajame kampe esančiais mygtukais). Markdown atvaizduoja GitHub naudojamas cmark-gfm: lentelės, užduočių sąrašai, perbraukimas ir automatinės nuorodos.
- Ieškoti visur: dukart paspauskite Shift ir apytiksle pavadinimo paieška raskite bet kurį projekto failą.
- Pirminio kodo failus atpažįsta pagal 915 kalbų ir failų formatų pavadinimų katalogą, įskaitant failų pavadinimus, sudėtinius plėtinius ir scenarijų interpretatorius. Visi 297 Prism komponentai (291 savarankiška gramatika ir 6 pagalbiniai) pateikiami kartu ir įkeliami prireikus. Formatams be gramatikos taikomas paprastas teksto paryškinimas.
- Sąsajoje galima rinktis iš 108 kalbų. Meniu Kalba iškart pakeiskite kalbą arba naudokite sistemos kalbą. Pasirinkimas įsimenamas; atverti failai, neišsaugoti pakeitimai ir terminalo seansai lieka atverti. Arabų, hebrajų ir kitose iš dešinės į kairę sąsajose kodas, peržiūra ir terminalo išvestis išlieka iš kairės į dešinę. Vertimai rašomi tiesiogiai iš angliškų tekstų, atsižvelgiant į redaktoriaus ir terminalo kontekstą. Sistemos skydeliai naudoja macOS kalbos nuostatas. Katalogas neapima visų natūralių ar programavimo kalbų. Žr. [Sumi vertimas](CONTRIBUTING.md#translating-sumi).
- Šviesi ir tamsi išvaizda atitinka sistemą.

## Atsisiuntimas

- [Leidimai](../../releases)
- [Naktinis komponavimas](../../releases/tag/nightly): komponuojamas iš naujo po kiekvieno `main` pakeitimo.

Atsisiųskite `Sumi.zip`, išskleiskite ir perkelkite Sumi į Applications. Tas pats paketas veikia Apple silicon ir Intel Mac kompiuteriuose.

Sumi nepasirašytas Apple Developer ID, todėl macOS blokuoja pirmą paleidimą. Atverkite Sistemos nuostatos › Privatumas ir saugumas ir spustelėkite Vis tiek atverti arba vykdykite:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Reikalavimai

macOS 14 arba naujesnė. Komponavimui reikia Xcode 26 arba naujesnės (Swift 6.2).

## Komponavimas iš pirminio kodo

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Atverkite aplanką kaip projektą per Failas › Atverti… (⌘O) arba komandų eilutėje:

```sh
open -a Sumi path/to/project
```

## Spartieji klavišai

| Veiksmas | Klavišai |
|---|---|
| Ieškoti visur | ⇧⇧ arba ⇧⌘O |
| Projekto medis | ⌘1 |
| Terminalas | ⌥F12 |
| Nauja terminalo kortelė | ⌘T |
| Sukeisti terminalą ir projektą | ⌃⌘T |
| Išdidinti terminalą | ⇧⌘↩ |
| Markdown / HTML peržiūra | ⇧⌘V |
| Pažymėti projekto medyje | ⌥⌘1 |
| Kita kortelė / Ankstesnė kortelė | ⇧⌘] / ⇧⌘[ |
| Išsaugoti / Išsaugoti viską | ⌘S / ⌥⌘S |

## Prisidėjimas

Laukiame pranešimų apie klaidas, pataisų ir vertimų. Skaitykite [CONTRIBUTING.md](CONTRIBUTING.md).

## Licencija

MIT. Sumi apima SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) ir GitHub Linguist kalbų katalogą (MIT); žr. [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
