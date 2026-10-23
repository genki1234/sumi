# Sumi

Një redaktor teksti i lehtë për macOS, i ndërtuar për punë me agjentë AI të programimit. Me burim të hapur (MIT).

Ekzekutoni agjentin në terminalin e integruar, klikoni skedarët që ai ndryshon për t'i hapur dhe lexoni Markdown-in që shkruan si faqe të formatuara.

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

## Veçori

- Shtigjet e skedarëve në terminal janë lidhje. Kur agjenti shfaq `⎿ M src/app.ts` ose `src/app.ts:42:7`, shtegu bëhet blu; një klik hap skedarin në atë rresht.
- Pamja e projektit majtas, redaktori në qendër, terminali poshtë.
- Ndërroni vendet e terminalit dhe pamjes së projektit (⌃⌘T) për një terminal majtas në gjithë lartësinë. Maksimizojeni me ⇧⌘↩.
- Skedarët ruhen automatikisht pas një pushimi shtypjeje prej 500 ms dhe para mbylljes. Ndryshimet e jashtme dhe dështimet e ruajtjes i mbajnë redaktimet në skedë, me mundësi për të ruajtur një kopje.
- Mbyllja e një terminali me komanda aktive kërkon konfirmim, përfshirë punët në sfond dhe daljen nga aplikacioni. Fshehja e panelit i lë seancat aktive.
- Terminalet përdorin Metal si parazgjedhje; çelësi Renderim me GPU është te Pamje. Kërkoni në dalje me ⌘F; skedat e reja trashëgojnë dosjen aktuale të punës.
- Shift+Enter ruan futjen e kërkesave me shumë rreshta. Ngjitja mbështet tekst me shumë rreshta, skedarë dhe figura; figurat ruhen si PNG të përkohshme dhe shtigjet e tyre futen në thonjëza.
- Parapamja Markdown dhe HTML shfaqet pranë tekstit dhe përditësohet gjatë shtypjes (⇧⌘V ose butonat lart djathtas në skedë). Markdown paraqitet me cmark-gfm që përdor GitHub: tabela, lista detyrash, tekst i vijëzuar dhe lidhje automatike.
- Kërko kudo: shtypni Shift dy herë për të gjetur çdo skedar në projekt me përputhje të përafërt të emrit.
- Njeh skedarë burimorë me një katalog prej 915 emrash gjuhësh dhe formatesh, përfshirë emra skedarësh, prapashtesa të përbëra dhe interpretues skriptesh. Të gjithë 297 përbërësit Prism (291 gramatika të pavarura dhe 6 ndihmës) përfshihen dhe ngarkohen sipas nevojës. Formatet pa gramatikë përdorin theksim bazë të tekstit.
- Ndërfaqja ka 108 zgjedhje gjuhësh. Menyja Gjuha e ndryshon menjëherë ose ndjek gjuhën e sistemit. Zgjedhja mbahet mend; skedarët e hapur, redaktimet e paruajtura dhe seancat e terminalit mbeten hapur. Në arabisht, hebraisht dhe ndërfaqe të tjera nga e djathta në të majtë, kodi, parapamjet dhe dalja e terminalit mbeten nga e majta në të djathtë. Përkthimet shkruhen drejtpërdrejt nga tekstet anglisht duke marrë parasysh redaktorin dhe terminalin. Panelet e sistemit ndjekin gjuhën e macOS. Katalogu nuk mbulon çdo gjuhë natyrore ose programimi. Shihni [Përkthimi i Sumi](CONTRIBUTING.md#translating-sumi).
- Pamja e çelët dhe e errët ndjekin sistemin.

## Shkarkimi

- [Versionet](../../releases)
- [Ndërtimi i natës](../../releases/tag/nightly): rindërtohet pas çdo ndryshimi në `main`.

Shkarkoni `Sumi.zip`, çpaketojeni dhe zhvendosni Sumi te Applications. I njëjti ndërtim punon në Mac me Apple silicon dhe Intel.

Sumi nuk është nënshkruar me Apple Developer ID, ndaj macOS bllokon hapjen e parë. Hapni Cilësimet e sistemit › Privatësia dhe siguria dhe klikoni Hap gjithsesi, ose ekzekutoni:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Kërkesat

macOS 14 ose më i ri. Ndërtimi kërkon Xcode 26 ose më të ri (Swift 6.2).

## Ndërtimi nga burimi

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Hapni një dosje si projekt nga Skedar › Hap… (⌘O), ose nga rreshti i komandave:

```sh
open -a Sumi path/to/project
```

## Shkurtoret e tastierës

| Veprimi | Shkurtorja |
|---|---|
| Kërko kudo | ⇧⇧ / ⇧⌘O |
| Pamja e projektit | ⌘1 |
| Terminali | ⌥F12 |
| Skedë e re terminali | ⌘T |
| Ndërro vendet e terminalit dhe projektit | ⌃⌘T |
| Maksimizo terminalin | ⇧⌘↩ |
| Markdown / HTML — Shfaq ose fshih parapamjen | ⇧⌘V |
| Përzgjidh në pamjen e projektit | ⌥⌘1 |
| Skeda tjetër / Skeda e mëparshme | ⇧⌘] / ⇧⌘[ |
| Ruaj / Ruaj të gjitha | ⌘S / ⌥⌘S |

## Kontributet

Mirëpriten raportet e gabimeve, rregullimet dhe përkthimet. Lexoni [CONTRIBUTING.md](CONTRIBUTING.md).

## Licenca

MIT. Sumi përfshin SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) dhe katalogun e gjuhëve GitHub Linguist (MIT); shihni [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
