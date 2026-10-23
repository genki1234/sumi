# Sumi

En lätt textredigerare för macOS, byggd för att användas tillsammans med AI-agenter för programmering. Öppen källkod (MIT).

Kör agenten i den inbyggda terminalen, klicka på filerna den ändrar för att öppna dem och läs dess Markdown som formaterade sidor.

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

- Filsökvägar i terminalen är länkar. När en agent skriver `⎿ M src/app.ts` eller `src/app.ts:42:7` blir sökvägen blå; ett klick öppnar filen på den raden.
- Projektvy till vänster, redigerare i mitten, terminal längst ned.
- Byt plats på terminalen och projektvyn (⌃⌘T) för en terminal med full höjd till vänster. Maximera terminalen med ⇧⌘↩.
- Filer sparas automatiskt efter 500 ms skrivpaus och innan de stängs. Vid externa ändringar eller misslyckad lagring finns dina ändringar kvar i fliken, med möjlighet att spara en kopia.
- Att stänga en terminal med pågående kommandon kräver bekräftelse, även för bakgrundsjobb och när appen avslutas. Att gömma panelen låter sessionerna fortsätta.
- Terminaler använder Metal som förval, med reglaget GPU-rendering i Visa. Sök i utdata med ⌘F; nya flikar ärver den aktuella arbetskatalogen.
- Shift+Enter bevarar inmatning av flerradiga instruktioner. Inklistring stöder flerradig text, filer och bilder; bilder lagras som tillfälliga PNG-filer och deras sökvägar infogas inom citattecken.
- Förhandsvisning av Markdown och HTML bredvid texten uppdateras medan du skriver (⇧⌘V eller knapparna uppe till höger i fliken). Markdown återges med cmark-gfm som GitHub använder: tabeller, uppgiftslistor, genomstrykning och automatiska länkar.
- Sök överallt: tryck på Shift två gånger för att hitta valfri fil i projektet med ungefärlig namnmatchning.
- Känner igen källfiler med en katalog över 915 språk- och formatnamn, inklusive filnamn, sammansatta filändelser och skripttolkar. Alla 297 Prism-komponenter (291 fristående grammatiker och 6 hjälparkomponenter) medföljer och läses in vid behov. Format utan grammatik får grundläggande textmarkering.
- Gränssnittet har 108 språkval. Byt direkt i menyn Språk eller följ systemspråket. Valet sparas; öppna filer, osparade ändringar och terminalsessioner hålls öppna. I arabiska, hebreiska och andra gränssnitt från höger till vänster visas kod, förhandsvisningar och terminalutdata fortfarande från vänster till höger. Översättningarna skrivs direkt från engelska strängar med redigerarens och terminalens sammanhang i åtanke. Systempaneler följer språkinställningarna i macOS. Katalogen täcker inte alla naturliga språk eller programmeringsspråk. Se [Översätta Sumi](CONTRIBUTING.md#translating-sumi).
- Ljust och mörkt utseende följer systemet.

## Hämta

- [Senaste versionen](../../releases/latest)
- [Nattbygge](../../releases/tag/nightly): byggs om vid varje ändring i `main`.

Hämta `Sumi.zip`, packa upp och flytta Sumi till Program. Samma bygge fungerar på Mac med Apple silicon och Intel.

Sumi är inte signerat med ett Apple Developer ID, så macOS blockerar första starten. Öppna Systeminställningar › Integritet och säkerhet och klicka på Öppna ändå, eller kör:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Krav

macOS 14 eller senare. Bygge kräver Xcode 26 eller senare (Swift 6.2).

## Bygg från källkod

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Öppna en mapp som projekt via Arkiv › Öppna… (⌘O) eller på kommandoraden:

```sh
open -a Sumi path/to/project
```

## Kortkommandon

| Åtgärd | Kortkommando |
|---|---|
| Sök överallt | ⇧⇧ / ⇧⌘O |
| Projektvy | ⌘1 |
| Terminal | ⌥F12 |
| Ny terminalflik | ⌘T |
| Byt plats på terminal och projekt | ⌃⌘T |
| Maximera terminal | ⇧⌘↩ |
| Markdown / HTML — Visa eller dölj förhandsvisning | ⇧⌘V |
| Markera i projektvyn | ⌥⌘1 |
| Nästa flik / Föregående flik | ⇧⌘] / ⇧⌘[ |
| Spara / Spara alla | ⌘S / ⌥⌘S |

## Bidra

Felrapporter, rättningar och översättningar välkomnas. Läs [CONTRIBUTING.md](CONTRIBUTING.md).

## Licens

MIT. Sumi innehåller SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) och språkkatalogen GitHub Linguist (MIT); se [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
