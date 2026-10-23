# Sumi

Editur tat-test ħafif għal macOS, mibni biex jaħdem flimkien ma' aġenti tal-programmazzjoni bl-IA. Sors miftuħ (MIT).

Ħaddem l-aġent tiegħek fit-terminal integrat, ikklikkja l-fajls li jbiddel biex tiftaħhom, u aqra l-Markdown li jikteb bħala paġni fformattjati.

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

## Karatteristiċi

- Il-mogħdijiet tal-fajls fit-terminal huma links. Meta aġent tal-programmazzjoni jistampa `⎿ M src/app.ts` jew `src/app.ts:42:7`, il-mogħdija ssir blu u klikk tiftaħ il-fajl f'dik il-linja.
- Siġra tal-proġett fuq ix-xellug, editur fin-nofs, terminal fil-qiegħ.
- Ibdel il-pożizzjonijiet tat-terminal u tas-siġra tal-proġett (⌃⌘T) biex ikollok terminal fl-għoli kollu fuq ix-xellug. Kabbru għall-massimu b'⇧⌘↩.
- Il-fajls jiġu ssejvjati awtomatikament wara pawża ta' 500 ms fit-tajpjar u qabel jingħalqu. Bidliet esterni u fallimenti fis-sejvjar iħallu l-bidliet tiegħek fit-tab, bl-għażla li tissejvja kopja.
- L-għeluq ta' terminal bi kmandi għaddejjin jitlob konferma, inklużi xogħlijiet fl-isfond u meta toħroġ mill-applikazzjoni. Meta taħbi l-panew, is-sessjonijiet jibqgħu għaddejjin.
- It-terminals jużaw Metal b'mod predefinit, bis-swiċċ Tpinġija bil-GPU fil-menu Dehra. Fittex fl-output b'⌘F; tabs ġodda jirtu d-direttorju tax-xogħol attwali.
- Shift+Enter iżomm l-input ta' struzzjonijiet fuq diversi linji. Tista' twaħħal test b'diversi linji, fajls u stampi; l-istampi jinżammu bħala PNG temporanji u jiddaħħlu bħala mogħdijiet bejn il-virgoletti.
- Il-previżjoni ta' Markdown u HTML ħdejn it-test tiġġedded waqt it-tajpjar (⇧⌘V jew il-buttuni fuq il-lemin nett tat-tab). Markdown jintwera b'cmark-gfm, l-istess magna li juża GitHub: tabelli, listi ta' kompiti, test maqtugħ u links awtomatiċi.
- Fittex Kullimkien: agħfas Shift darbtejn biex issib kwalunkwe fajl fil-proġett permezz ta' tqabbil approssimattiv tal-isem.
- Jagħraf fajls tas-sors b'katalgu ta' 915 isem ta' lingwi u formati ta' fajls, inklużi ismijiet ta' fajls, estensjonijiet komposti u interpreti tal-iskripts. Il-297 komponent kollha ta' Prism (291 grammatika awtonoma u 6 awżiljarji) huma inklużi u jitgħabbew meta jkunu meħtieġa. Formati mingħajr grammatika jużaw enfasi bażika tat-test.
- L-interfaċċa għandha 108 għażliet ta' lingwa. Uża l-menu Lingwa biex taqleb minnufih jew issegwi l-lingwa tas-sistema. L-għażla tinżamm; fajls miftuħa, bidliet mhux issejvjati u sessjonijiet tat-terminal jibqgħu miftuħa. F'interfaċċi Għarab, Ebrajċi u oħrajn mil-lemin għax-xellug, il-kodiċi, il-previżjonijiet u l-output tat-terminal jibqgħu mix-xellug għal-lemin. It-traduzzjonijiet jinkitbu direttament mit-testi Ingliżi fil-kuntest tal-editur u tat-terminal. Il-panewijiet tas-sistema jsegwu s-settings tal-lingwa ta' macOS. Il-katalgu ma jkoprix kull lingwa naturali jew tal-programmazzjoni. Ara [It-traduzzjoni ta' Sumi](CONTRIBUTING.md#translating-sumi).
- Id-dehra ċara u skura ssegwi s-sistema.

## Niżżel

- [L-aħħar verżjoni](../../releases/latest)
- [Verżjoni ta' billejl](../../releases/tag/nightly): tinbena mill-ġdid ma' kull bidla f'`main`.

Niżżel `Sumi.zip`, oħorġu mill-arkivju u mexxi Sumi għal Applications. L-istess verżjoni taħdem fuq Macs Apple silicon u Intel.

Sumi mhuwiex iffirmat b'Apple Developer ID, għalhekk macOS jimblokka l-ewwel tnedija. Iftaħ Settings tas-Sistema › Privatezza u Sigurtà u agħżel Iftaħ Xorta Waħda, jew ħaddem:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Rekwiżiti

macOS 14 jew aktar ġdid. Biex tibni hemm bżonn Xcode 26 jew aktar ġdid (Swift 6.2).

## Ibni mis-sors

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Iftaħ folder bħala proġett minn Fajl › Iftaħ… (⌘O), jew mil-linja tal-kmand:

```sh
open -a Sumi path/to/project
```

## Taqsiriet tat-tastiera

| Azzjoni | Taqsira |
|---|---|
| Fittex Kullimkien | ⇧⇧ jew ⇧⌘O |
| Siġra tal-Proġett | ⌘1 |
| Terminal | ⌥F12 |
| Tab Ġdida tat-Terminal | ⌘T |
| Ibdel il-Pożizzjoni tat-Terminal u tal-Proġett | ⌃⌘T |
| Kabbar it-Terminal għall-Massimu | ⇧⌘↩ |
| Previżjoni Markdown / HTML | ⇧⌘V |
| Agħżel fis-Siġra tal-Proġett | ⌥⌘1 |
| Tab li Jmiss / Tab ta' Qabel | ⇧⌘] / ⇧⌘[ |
| Issejvja / Issejvja Kollox | ⌘S / ⌥⌘S |

## Kontribuzzjonijiet

Rapporti ta' żbalji, tiswijiet u traduzzjonijiet huma milqugħa. Aqra [CONTRIBUTING.md](CONTRIBUTING.md).

## Liċenzja

MIT. Sumi jinkludi SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) u l-katalgu tal-lingwi GitHub Linguist (MIT); ara [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
