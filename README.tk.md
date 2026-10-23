# Sumi

AI kod ýazýan agentler bilen işlemek üçin döredilen ýeňil macOS tekst redaktory. Açyk çeşmeli (MIT).

Agentiňizi içerki terminalda işlediň, onuň üýtgedýän faýllaryny basyp açyň we ýazýan Markdown-yny bezelen sahypalar hökmünde okaň.

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

## Mümkinçilikler

- Terminaldaky faýl ýollary baglanyşykdyr. Agent `⎿ M src/app.ts` ýa-da `src/app.ts:42:7` çykarsa, ýol gök bolýar; basmak faýly şol setirde açýar.
- Taslama görnüşi çepde, redaktor ortada, terminal aşakda.
- Terminal bilen taslama görnüşiniň ýerini çalşyň (⌃⌘T), şonda terminal çepde tutuş beýikligi eýelär. Terminaly ⇧⌘↩ bilen ulaldyň.
- Faýllar ýazuwda 500 ms arakesmeden soň we ýapylmazdan öň awtomatik saklanýar. Daşarky üýtgeşmeler ýa-da saklamak şowsuz bolanda düzedişleriňiz goýma içinde galýar, nusga saklamak mümkinçiligi bolýar.
- Buýruklary işleýän terminaly ýapmak tassyklama soraýar, şol sanda yzky işler we programmadan çykmak üçin. Paneli gizlemek sessiýalary işletmäge dowam edýär.
- Terminal adaty ýagdaýda Metal ulanýar; GPU bilen şekillendiriş açary Görnüş menýusynda. Çykyşy ⌘F bilen gözläň; täze goýmalar häzirki iş bukjasyny alýar.
- Shift+Enter köp setirli sorag girizmegi saklaýar. Köp setirli tekst, faýl we surat ýelmemek bolýar; suratlar wagtlaýyn PNG bolup saklanýar we olaryň ýollary dyrnak içinde goýulýar.
- Markdown we HTML öňünden görnüşi tekstiň ýanynda bolup, ýazanyňyzda täzelenýär (⇧⌘V ýa-da goýmanyň sag ýokarky düwmeleri). Markdown GitHub-yň ulanýan cmark-gfm-i bilen görkezilýär: tablisalar, iş sanawlary, üsti çyzylan tekst we awtomatik baglanyşyklar.
- Ähli ýerde gözle: Shift-i iki gezek basyp taslamadaky islendik faýly takmynan gabat gelýän at bilen tapyň.
- Çeşme faýllaryny 915 dil we faýl format adynyň katalogy arkaly tanaýar; faýl atlary, goşma giňeltmeler we skript düşündirijileri hem bar. Prism-iň ähli 297 bölegi (291 özbaşdak grammatika we 6 kömekçi) goşulandyr we zerur bolanda ýüklenýär. Grammatikasyz formatlarda ýönekeý tekst reňklemesi ulanylýar.
- Interfeýsde 108 dil saýlawy bar. Dil menýusyndan derrew üýtgediň ýa-da ulgamyň diline eýeriň. Saýlaw ýatda galýar; açyk faýllar, saklanmadyk düzedişler we terminal sessiýalary açyk galýar. Arap, ýewreý we beýleki sagdan çepe interfeýslerde kod, öňünden görnüş we terminal çykyşy çepden saga galýar. Terjimeler redaktor we terminal ýagdaýy göz öňünde tutulyp iňlisçe tekstlerden göni ýazyldy. Ulgam panelleri macOS dil sazlamalaryna eýerýär. Katalog ähli tebigy ýa-da programma dillerini öz içine almaýar. [Sumi terjimesine](CONTRIBUTING.md#translating-sumi) serediň.
- Açyk we garaňky görnüş ulgama eýerýär.

## Göçürip almak

- [Iň soňky çykarylyş](../../releases/latest)
- [Gijeki gurluş](../../releases/tag/nightly): `main` her üýtgände täzeden gurulýar.

`Sumi.zip` faýlyny alyň, açyň we Sumi-ni Applications içine geçiriň. Bir gurluş Apple silicon we Intel Mac-laryň ikisinde-de işleýär.

Sumi Apple Developer ID bilen gol çekilmedik, şonuň üçin macOS ilkinji açylyşy bloklaýar. Ulgam sazlamalary › Gizlinlik we howpsuzlygy açyp, Şonda-da aç düwmesine basyň ýa-da işlediň:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Talaplar

macOS 14 ýa-da täzesi. Gurmak üçin Xcode 26 ýa-da täzesi gerek (Swift 6.2).

## Çeşmeden gurmak

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Faýl › Aç… (⌘O) arkaly bukjany taslama hökmünde ýa-da buýruk setirinden açyň:

```sh
open -a Sumi path/to/project
```

## Klawiatura gysga ýollary

| Hereket | Gysga ýol |
|---|---|
| Ähli ýerde gözle | ⇧⇧ / ⇧⌘O |
| Taslama görnüşi | ⌘1 |
| Terminal | ⌥F12 |
| Täze terminal goýmasy | ⌘T |
| Terminal bilen taslamanyň ýerini çalyş | ⌃⌘T |
| Terminaly ulalt | ⇧⌘↩ |
| Markdown / HTML — Öňünden görnüşi aç ýa-da gizle | ⇧⌘V |
| Taslama görnüşinde saýla | ⌥⌘1 |
| Indiki goýma / Öňki goýma | ⇧⌘] / ⇧⌘[ |
| Ýatda sakla / Ählisini ýatda sakla | ⌘S / ⌥⌘S |

## Goşant goşmak

Ýalňyşlyk habarlary, düzedişler we terjimeler kabul edilýär. [CONTRIBUTING.md](CONTRIBUTING.md) okaň.

## Ygtyýarnama

MIT. Sumi-de SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) we GitHub Linguist dil katalogy (MIT) bar; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) serediň.
