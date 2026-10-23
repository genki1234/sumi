# Sumi

En let teksteditor til macOS, bygget til at arbejde sammen med AI-kodningsagenter. Open source (MIT).

Kør din agent i den indbyggede terminal, klik på de filer, den arbejder med, for at åbne dem, og læs dens Markdown som formaterede sider.

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

## Funktioner

- Filstier i terminalen er links. Når en kodningsagent udskriver `⎿ M src/app.ts` eller `src/app.ts:42:7`, bliver stien blå, og et klik åbner filen på den pågældende linje.
- Projektoversigt til venstre, editor i midten og terminal nederst.
- Byt terminalen og projektoversigten (⌃⌘T) for at placere en terminal i fuld højde til venstre. Maksimer terminalen med ⇧⌘↩.
- Filer gemmes automatisk efter en skrivepause på 500 ms og inden lukning. Eksterne ændringer og fejl under lagring lader dine rettelser blive i fanen med mulighed for at gemme en kopi.
- Lukning af en terminal med aktive kommandoer kræver bekræftelse, også for baggrundsjob og ved afslutning af appen. Skjuler du panelet, fortsætter sessionerne.
- Terminaler bruger som standard Metal med en kontakt til GPU-gengivelse i Oversigt. Søg i output med ⌘F; nye faner overtager den aktuelle arbejdsmappe.
- Shift+Enter giver mulighed for at indtaste prompter over flere linjer. Du kan indsætte tekst med flere linjer, filer og billeder; billeder gemmes som midlertidige PNG-filer og indsættes som stier i anførselstegn.
- Eksempelvisning af Markdown og HTML ved siden af teksten, opdateret mens du skriver (⇧⌘V eller knapperne øverst til højre i fanen).
  Markdown gengives med cmark-gfm, som GitHub også bruger: tabeller, opgavelister, gennemstreget tekst og automatiske links.
- Søg overalt: tryk to gange på Shift for at finde enhver fil i projektet via omtrentlig navnesøgning.
- Genkender kildefiler med et katalog over 915 navne på sprog og filformater, herunder filnavne, sammensatte filendelser og scriptfortolkere. Alle 297 Prism-komponenter (291 selvstændige grammatikker og 6 hjælpekomponenter) medfølger og indlæses efter behov. Formater uden grammatik bruger grundlæggende tekstfremhævning.
- Brugerfladen har 108 sprogvalg. Skift straks i menuen Sprog, eller følg systemsproget. Valget huskes; åbne filer, ugemte rettelser og terminalsessioner forbliver åbne. Arabiske, hebraiske og andre brugerflader fra højre mod venstre viser fortsat kode, eksempler og terminaloutput fra venstre mod højre.
  Oversættelserne skrives direkte fra de engelske tekster med deres editor- og terminalkontekst. Systempaneler følger sprogindstillingerne i macOS. Kataloget omfatter ikke alle naturlige sprog eller programmeringssprog. Se [Oversættelse af Sumi](CONTRIBUTING.md#translating-sumi).
- Lyst og mørkt udseende følger systemet.

## Hent

- [Seneste udgivelse](../../releases/latest)
- [Natlig version](../../releases/tag/nightly): bygges igen ved hver ændring i `main`.

Hent `Sumi.zip`, pak den ud, og flyt Sumi til Programmer. Én version kører på både Apple silicon- og Intel-Macs.

Sumi er ikke signeret med et Apple Developer ID, så macOS blokerer den første start. Åbn Systemindstillinger › Anonymitet & sikkerhed, og klik på Åbn alligevel, eller kør:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Krav

macOS 14 eller nyere. Bygning kræver Xcode 26 eller nyere (Swift 6.2).

## Byg fra kildekoden

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Åbn en mappe som projekt fra Arkiv › Åbn… (⌘O) eller fra kommandolinjen:

```sh
open -a Sumi path/to/project
```

## Tastaturgenveje

| Handling | Genvej |
|---|---|
| Søg overalt | ⇧⇧ eller ⇧⌘O |
| Projektoversigt | ⌘1 |
| Terminal | ⌥F12 |
| Ny terminalfane | ⌘T |
| Byt terminal og projektoversigt | ⌃⌘T |
| Maksimer terminal | ⇧⌘↩ |
| Markdown / HTML-eksempel | ⇧⌘V |
| Vælg i projektoversigt | ⌥⌘1 |
| Næste / forrige fane | ⇧⌘] / ⇧⌘[ |
| Gem / Gem alle | ⌘S / ⌥⌘S |

## Bidrag

Fejlrapporter, rettelser og oversættelser er velkomne. Læs [CONTRIBUTING.md](CONTRIBUTING.md).

## Licens

MIT. Sumi indeholder SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) og sprogkataloget GitHub Linguist (MIT); se [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
