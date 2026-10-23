# Sumi

Un editor de text ușor pentru macOS, conceput pentru lucrul cu agenți de programare AI. Cu sursă deschisă (MIT).

Rulați agentul în terminalul integrat, faceți clic pe fișierele pe care le modifică pentru a le deschide și citiți documentele Markdown scrise de el ca pagini randate.

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

## Funcții

- Căile de fișiere din terminal sunt linkuri. Când un agent afișează `⎿ M src/app.ts` sau `src/app.ts:42:7`, calea devine albastră; un clic deschide fișierul la linia respectivă.
- Panoul proiectului în stânga, editorul în centru, terminalul în partea de jos.
- Interschimbați terminalul și panoul proiectului (⌃⌘T) pentru un terminal pe toată înălțimea în stânga. Maximizați terminalul cu ⇧⌘↩.
- Fișierele se salvează automat după o pauză de tastare de 500 ms și înainte de închidere. La modificări externe sau erori de salvare, editările rămân în filă, cu opțiunea de a salva o copie.
- Închiderea unui terminal cu comenzi active cere confirmare, inclusiv pentru sarcini în fundal și la ieșirea din aplicație. Ascunderea panoului lasă sesiunile active.
- Terminalele folosesc implicit Metal; comutatorul Randare GPU este în meniul Vizualizare. Căutați în ieșire cu ⌘F; filele noi moștenesc directorul de lucru curent.
- Shift+Enter păstrează introducerea prompturilor pe mai multe linii. Se pot lipi texte pe mai multe linii, fișiere și imagini; imaginile sunt păstrate ca PNG-uri temporare, iar căile lor sunt inserate între ghilimele.
- Previzualizarea Markdown și HTML apare lângă text și se actualizează în timpul tastării (⇧⌘V sau butoanele din dreapta sus a filei). Markdown este randat cu cmark-gfm, motorul folosit de GitHub: tabele, liste de sarcini, text tăiat și linkuri automate.
- Caută peste tot: apăsați Shift de două ori pentru a găsi orice fișier din proiect prin potrivire aproximativă a numelui.
- Recunoaște fișiere sursă cu un catalog de 915 nume de limbaje și formate, inclusiv nume de fișiere, extensii compuse și interpretoare de scripturi. Toate cele 297 de componente Prism (291 de gramatici independente și 6 auxiliare) sunt incluse și încărcate la cerere. Formatele fără gramatică folosesc evidențiere de bază a textului.
- Interfața oferă 108 limbi. Meniul Limbă schimbă imediat limba sau urmează limba sistemului. Alegerea este memorată; fișierele deschise, editările nesalvate și sesiunile de terminal rămân deschise. În arabă, ebraică și alte interfețe de la dreapta la stânga, codul, previzualizările și ieșirea terminalului rămân de la stânga la dreapta. Traducerile sunt scrise direct din textele englezești, ținând cont de editor și terminal. Panourile sistemului urmează limba macOS. Catalogul nu acoperă toate limbile naturale sau de programare. Vedeți [Traducerea Sumi](CONTRIBUTING.md#translating-sumi).
- Aspectul luminos sau întunecat urmează sistemul.

## Descărcare

- [Versiuni](../../releases)
- [Versiune nocturnă](../../releases/tag/nightly): recompilată la fiecare modificare a ramurii `main`.

Descărcați `Sumi.zip`, dezarhivați-l și mutați Sumi în Aplicații. Aceeași versiune rulează pe Mac-uri cu Apple silicon și Intel.

Sumi nu este semnat cu un Apple Developer ID, deci macOS blochează prima pornire. Deschideți Configurări sistem › Confidențialitate și securitate și apăsați Deschide oricum sau rulați:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Cerințe

macOS 14 sau mai nou. Compilarea necesită Xcode 26 sau mai nou (Swift 6.2).

## Compilare din surse

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Deschideți un dosar ca proiect din Fișier › Deschide… (⌘O) sau din linia de comandă:

```sh
open -a Sumi path/to/project
```

## Scurtături de tastatură

| Acțiune | Scurtătură |
|---|---|
| Caută peste tot | ⇧⇧ / ⇧⌘O |
| Panoul proiectului | ⌘1 |
| Terminal | ⌥F12 |
| Filă nouă de terminal | ⌘T |
| Interschimbă terminalul și proiectul | ⌃⌘T |
| Maximizează terminalul | ⇧⌘↩ |
| Markdown / HTML — Comută previzualizarea | ⇧⌘V |
| Selectează în panoul proiectului | ⌥⌘1 |
| Fila următoare / Fila precedentă | ⇧⌘] / ⇧⌘[ |
| Salvează / Salvează tot | ⌘S / ⌥⌘S |

## Contribuții

Sunt binevenite rapoartele de erori, corecțiile și traducerile. Citiți [CONTRIBUTING.md](CONTRIBUTING.md).

## Licență

MIT. Sumi include SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) și catalogul de limbaje GitHub Linguist (MIT); vedeți [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
