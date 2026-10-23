# Sumi

Een lichte teksteditor voor macOS, gemaakt om samen met AI-programmeeragenten te werken. Open source (MIT).

Voer je agent uit in de ingebouwde terminal, klik op de bestanden die hij wijzigt om ze te openen en lees de Markdown die hij schrijft als opgemaakte pagina’s.

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

## Functies

- Bestandspaden in de terminal zijn links. Wanneer een programmeeragent `⎿ M src/app.ts` of `src/app.ts:42:7` afdrukt, wordt het pad blauw en opent een klik het bestand op die regel.
- De projectweergave staat links, de editor in het midden en de terminal onderaan.
- Verwissel de terminal en de projectweergave (⌃⌘T) om links een terminal over de volledige hoogte te krijgen. Maximaliseer de terminal met ⇧⌘↩.
- Bestanden worden automatisch bewaard na een typepauze van 500 ms en vóór het sluiten. Bij externe wijzigingen of fouten tijdens het bewaren blijven je bewerkingen in de tab staan en kun je een kopie bewaren.
- Voor het sluiten van een terminal met actieve opdrachten wordt om bevestiging gevraagd, ook bij achtergrondtaken en het afsluiten van de app. Het verbergen van het paneel laat sessies doorlopen.
- Terminals gebruiken standaard Metal, met een optie GPU-weergave in het menu Weergave. Doorzoek de uitvoer met ⌘F; nieuwe tabs nemen de huidige werkmap over.
- Shift+Enter maakt invoer van meerdere regels in de prompt mogelijk. Plakken ondersteunt tekst met meerdere regels, bestanden en afbeeldingen; afbeeldingen worden als tijdelijke PNG-bestanden bewaard en hun paden worden tussen aanhalingstekens ingevoegd.
- Voorvertoningen van Markdown en HTML verschijnen naast de tekst en worden tijdens het typen bijgewerkt (⇧⌘V of de knoppen rechtsboven in de tab).
  Markdown wordt weergegeven met cmark-gfm, de renderer die GitHub gebruikt, met tabellen, takenlijsten, doorhalingen en automatische links.
- Zoek overal: druk tweemaal op Shift om elk bestand in het project te vinden met een benaderende zoekopdracht op naam.
- Herkent bronbestanden met een catalogus van 915 namen van talen en bestandsformaten, op basis van bestandsnamen, samengestelde extensies en scriptinterpreters. Alle 297 Prism-componenten (291 zelfstandige grammatica’s en zes hulpcomponenten) zijn meegeleverd en worden geladen wanneer nodig. Formaten zonder grammatica gebruiken eenvoudige tekstkleuring.
- De interface biedt 108 talen. Gebruik het menu Taal om direct te wisselen of de systeemtaal te volgen. De keuze wordt onthouden; geopende bestanden, niet-bewaarde bewerkingen en terminalsessies blijven open. In Arabische, Hebreeuwse en andere interfaces van rechts naar links blijven code, voorvertoningen en terminaluitvoer van links naar rechts lopen.
  Vertalingen worden rechtstreeks geschreven vanuit de Engelse teksten en hun context in de editor en terminal. Systeempanelen volgen de taalinstellingen van macOS. Deze catalogus omvat niet alle natuurlijke talen en programmeertalen. Zie [Sumi vertalen](CONTRIBUTING.md#translating-sumi).
- De lichte en donkere weergave volgen het systeem.

## Downloaden

- [Uitgaven](../../releases)
- [Nightly-build](../../releases/tag/nightly): opnieuw gebouwd bij elke wijziging in `main`.

Download `Sumi.zip`, pak het uit en verplaats Sumi naar Apps. Dezelfde versie werkt op Macs met Apple silicon en Intel.

Sumi is niet ondertekend met een Apple Developer ID, dus macOS blokkeert de eerste start. Open Systeeminstellingen › Privacy en beveiliging en klik op Open toch, of voer uit:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Vereisten

macOS 14 of nieuwer. Voor bouwen is Xcode 26 of nieuwer nodig (Swift 6.2).

## Bouwen vanuit de broncode

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Open een map als project via Archief › Open… (⌘O) of via de opdrachtregel:

```sh
open -a Sumi path/to/project
```

## Toetscombinaties

| Actie | Toetscombinatie |
|---|---|
| Zoek overal | ⇧⇧ of ⇧⌘O |
| Projectweergave | ⌘1 |
| Terminal | ⌥F12 |
| Nieuwe terminaltab | ⌘T |
| Verwissel terminal en project | ⌃⌘T |
| Maximaliseer terminal | ⇧⌘↩ |
| Markdown- / HTML-voorvertoning | ⇧⌘V |
| Selecteer in projectweergave | ⌥⌘1 |
| Volgende / vorige tab | ⇧⌘] / ⇧⌘[ |
| Bewaar / Bewaar alles | ⌘S / ⌥⌘S |

## Bijdragen

Foutmeldingen, verbeteringen en vertalingen zijn welkom. Lees [CONTRIBUTING.md](CONTRIBUTING.md).

## Licentie

MIT. Sumi bevat SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) en de talencatalogus van GitHub Linguist (MIT); zie [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
