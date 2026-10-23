# Sumi

En lett tekstredigerer for macOS, laget for å brukes sammen med KI-kodingsagenter. Åpen kildekode (MIT).

Kjør agenten i den innebygde terminalen, klikk på filene den endrer for å åpne dem, og les Markdown-tekstene den skriver som formaterte sider.

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

## Funksjoner

- Filbaner i terminalen er lenker. Når en kodingsagent skriver `⎿ M src/app.ts` eller `src/app.ts:42:7`, blir banen blå, og et klikk åpner filen på den aktuelle linjen.
- Prosjektvisningen er til venstre, redigereren i midten og terminalen nederst.
- Bytt plass på terminalen og prosjektvisningen (⌃⌘T) for å få en terminal i full høyde til venstre. Maksimer terminalen med ⇧⌘↩.
- Filer lagres automatisk etter en skrivepause på 500 ms og før de lukkes. Ved eksterne endringer eller lagringsfeil blir redigeringene værende i fanen, med mulighet til å lagre en kopi.
- Lukking av en terminal med kommandoer som kjører, krever bekreftelse. Dette gjelder også bakgrunnsjobber og avslutning av programmet. Å skjule panelet lar øktene fortsette.
- Terminaler bruker Metal som standard, med valget GPU-gjengivelse i Vis-menyen. Søk i utdata med ⌘F; nye faner overtar den gjeldende arbeidsmappen.
- Shift+Enter gjør det mulig å skrive ledetekster over flere linjer. Du kan lime inn tekst med flere linjer, filer og bilder; bilder beholdes som midlertidige PNG-filer og settes inn som baner i anførselstegn.
- Forhåndsvisning av Markdown og HTML vises ved siden av teksten og oppdateres mens du skriver (⇧⌘V eller knappene øverst til høyre i fanen).
  Markdown gjengis med cmark-gfm, som også brukes av GitHub, med støtte for tabeller, oppgavelister, gjennomstreking og automatiske lenker.
- Søk overalt: trykk Shift to ganger for å finne en fil i prosjektet med omtrentlig navnesøk.
- Kildekoder gjenkjennes med en katalog over 915 språk- og filformatnavn, basert på filnavn, sammensatte filendelser og skripttolkere. Alle de 297 Prism-komponentene (291 selvstendige grammatikker og seks hjelpekomponenter) følger med og lastes ved behov. Formater uten grammatikk får grunnleggende tekstfarging.
- Grensesnittet har 108 språkvalg. Bruk Språk-menyen for å bytte med en gang eller følge systemspråket. Valget huskes; åpne filer, ulagrede endringer og terminaløkter beholdes. I arabiske, hebraiske og andre grensesnitt som går fra høyre mot venstre, vises kode, forhåndsvisninger og terminalutdata fortsatt fra venstre mot høyre.
  Oversettelsene skrives direkte fra de engelske tekstene og sammenhengen de brukes i i redigereren og terminalen. Systempaneler følger språkinnstillingene i macOS. Katalogen dekker ikke alle naturlige språk eller programmeringsspråk. Se [Oversette Sumi](CONTRIBUTING.md#translating-sumi).
- Lyst og mørkt utseende følger systemet.

## Last ned

- [Utgivelser](../../releases)
- [Nightly-bygg](../../releases/tag/nightly): bygges på nytt ved hver endring i `main`.

Last ned `Sumi.zip`, pakk den ut og flytt Sumi til Programmer. Samme bygg fungerer på Macer med både Apple silicon og Intel.

Sumi er ikke signert med en Apple Developer ID, så macOS blokkerer første oppstart. Åpne Systeminnstillinger › Personvern og sikkerhet og klikk på Åpne likevel, eller kjør:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Krav

macOS 14 eller nyere. Bygging krever Xcode 26 eller nyere (Swift 6.2).

## Bygg fra kildekoden

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Åpne en mappe som et prosjekt fra Arkiv › Åpne… (⌘O), eller fra kommandolinjen:

```sh
open -a Sumi path/to/project
```

## Tastatursnarveier

| Handling | Snarvei |
|---|---|
| Søk overalt | ⇧⇧ eller ⇧⌘O |
| Prosjektvisning | ⌘1 |
| Terminal | ⌥F12 |
| Ny terminalfane | ⌘T |
| Bytt plass på terminal og prosjekt | ⌃⌘T |
| Maksimer terminal | ⇧⌘↩ |
| Forhåndsvisning av Markdown / HTML | ⇧⌘V |
| Marker i prosjektvisning | ⌥⌘1 |
| Neste / forrige fane | ⇧⌘] / ⇧⌘[ |
| Lagre / Lagre alle | ⌘S / ⌥⌘S |

## Bidra

Feilrapporter, rettelser og oversettelser er velkomne. Les [CONTRIBUTING.md](CONTRIBUTING.md).

## Lisens

MIT. Sumi inkluderer SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) og språkkatalogen fra GitHub Linguist (MIT); se [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
