# Sumi

Viegls macOS teksta redaktors darbam kopā ar MI programmēšanas aģentiem. Atvērtā pirmkoda programma (MIT).

Palaidiet aģentu iebūvētajā terminālī, klikšķiniet uz tā mainītajiem failiem, lai tos atvērtu, un lasiet tā rakstīto Markdown kā noformētas lapas.

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

## Iespējas

- Failu ceļi terminālī ir saites. Kad programmēšanas aģents izvada `⎿ M src/app.ts` vai `src/app.ts:42:7`, ceļš kļūst zils un klikšķis atver failu norādītajā rindā.
- Projekta koks pa kreisi, redaktors centrā, terminālis apakšā.
- Samainiet termināli un projekta koku (⌃⌘T), lai pa kreisi iegūtu termināli visā augstumā. Maksimizējiet termināli ar ⇧⌘↩.
- Faili tiek automātiski saglabāti pēc 500 ms rakstīšanas pauzes un pirms aizvēršanas. Ārēju izmaiņu vai saglabāšanas kļūmes gadījumā labojumi paliek cilnē, un var saglabāt kopiju.
- Aizverot termināli ar aktīvām komandām, tiek prasīts apstiprinājums, arī fona uzdevumiem un izejot no lietotnes. Paslēpjot paneli, sesijas turpina darboties.
- Termināļi pēc noklusējuma izmanto Metal; izvēlnē Skats ir slēdzis Atveide ar GPU. Meklējiet izvadē ar ⌘F; jaunās cilnes pārņem pašreizējo darba direktoriju.
- Shift+Enter saglabā vairākrindu uzvednes ievadi. Var ielīmēt vairākrindu tekstu, failus un attēlus; attēli tiek glabāti kā pagaidu PNG un ievietoti kā pēdiņās ietverti ceļi.
- Markdown un HTML priekšskatījums blakus tekstam atjauninās rakstīšanas laikā (⇧⌘V vai pogas cilnes augšējā labajā stūrī). Markdown attēlo cmark-gfm, ko izmanto arī GitHub: tabulas, uzdevumu saraksti, pārsvītrojums un automātiskās saites.
- Meklēt visur: divreiz nospiediet Shift, lai atrastu jebkuru projekta failu ar aptuvenu nosaukuma atbilstību.
- Pirmkoda failus atpazīst pēc 915 valodu un failu formātu nosaukumu kataloga, ieskaitot failu nosaukumus, saliktos paplašinājumus un skriptu interpretatorus. Visi 297 Prism komponenti (291 patstāvīga gramatika un 6 palīgkomponenti) ir iekļauti un tiek ielādēti pēc vajadzības. Formātiem bez gramatikas izmanto vienkāršu teksta izcelšanu.
- Saskarnē ir 108 valodu izvēles. Izvēlnē Valoda pārslēdziet uzreiz vai sekojiet sistēmas valodai. Izvēle tiek atcerēta; atvērtie faili, nesaglabātie labojumi un termināļa sesijas paliek atvērtas. Arābu, ivrita un citās saskarnēs no labās uz kreiso kods, priekšskatījumi un termināļa izvade joprojām ir no kreisās uz labo. Tulkojumi rakstīti tieši no angļu tekstiem, ievērojot redaktora un termināļa kontekstu. Sistēmas paneļi izmanto macOS valodas iestatījumus. Katalogs neaptver visas dabiskās vai programmēšanas valodas. Skatiet [Sumi tulkošana](CONTRIBUTING.md#translating-sumi).
- Gaišais un tumšais izskats seko sistēmai.

## Lejupielāde

- [Laidieni](../../releases)
- [Nakts būvējums](../../releases/tag/nightly): tiek veidots no jauna pēc katras izmaiņas `main`.

Lejupielādējiet `Sumi.zip`, atspiediet to un pārvietojiet Sumi uz Applications. Viens būvējums darbojas gan Apple silicon, gan Intel Mac datoros.

Sumi nav parakstīts ar Apple Developer ID, tāpēc macOS bloķē pirmo palaišanu. Atveriet Sistēmas iestatījumi › Privātums un drošība un noklikšķiniet uz Atvērt tik un tā, vai izpildiet:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Prasības

macOS 14 vai jaunāka. Būvēšanai vajadzīgs Xcode 26 vai jaunāks (Swift 6.2).

## Būvēšana no pirmkoda

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Atveriet mapi kā projektu no Fails › Atvērt… (⌘O) vai komandrindā:

```sh
open -a Sumi path/to/project
```

## Tastatūras saīsnes

| Darbība | Saīsne |
|---|---|
| Meklēt visur | ⇧⇧ vai ⇧⌘O |
| Projekta koks | ⌘1 |
| Terminālis | ⌥F12 |
| Jauna termināļa cilne | ⌘T |
| Samainīt termināli un projektu | ⌃⌘T |
| Maksimizēt termināli | ⇧⌘↩ |
| Markdown / HTML priekšskatījums | ⇧⌘V |
| Atlasīt projekta kokā | ⌥⌘1 |
| Nākamā cilne / Iepriekšējā cilne | ⇧⌘] / ⇧⌘[ |
| Saglabāt / Saglabāt visu | ⌘S / ⌥⌘S |

## Līdzdalība

Gaidām kļūdu ziņojumus, labojumus un tulkojumus. Lasiet [CONTRIBUTING.md](CONTRIBUTING.md).

## Licence

MIT. Sumi ietver SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) un GitHub Linguist valodu katalogu (MIT); skatiet [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
