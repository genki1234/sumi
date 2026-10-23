# Sumi

Golygydd testun ysgafn ar gyfer macOS, wedi'i greu i weithio gydag asiantau codio AI. Cod agored (MIT).

Rhedwch eich asiant yn y derfynell fewnol, cliciwch y ffeiliau y mae'n gweithio arnynt i'w hagor, a darllenwch y Markdown y mae'n ei ysgrifennu fel tudalennau wedi'u fformatio.

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

## Nodweddion

- Dolenni yw llwybrau ffeiliau yn y derfynell. Pan fydd asiant codio yn argraffu `⎿ M src/app.ts` neu `src/app.ts:42:7`, mae'r llwybr yn troi'n las a bydd clic yn agor y ffeil ar y llinell honno.
- Golwg y prosiect ar y chwith, y golygydd yn y canol a'r derfynell ar y gwaelod.
- Cyfnewidiwch y derfynell a golwg y prosiect (⌃⌘T) i roi terfynell uchder llawn ar y chwith. Ehangwch y derfynell gyda ⇧⌘↩.
- Caiff ffeiliau eu cadw'n awtomatig ar ôl saib teipio o 500 ms a chyn eu cau. Mae newidiadau allanol a methiannau cadw yn gadael eich golygiadau yn y tab, gydag opsiwn i gadw copi.
- Mae cau terfynell sydd â gorchmynion yn rhedeg yn gofyn am gadarnhad, gan gynnwys tasgau cefndir a gadael y rhaglen. Mae cuddio'r panel yn gadael y sesiynau'n rhedeg.
- Mae terfynellau'n defnyddio Metal yn ddiofyn, gyda switsh «Rendro â GPU» yn Golwg. Chwiliwch yr allbwn gyda ⌘F; mae tabiau newydd yn etifeddu'r cyfeiriadur gwaith presennol.
- Mae Shift+Enter yn caniatáu mewnbwn anogiad aml-linell. Gellir gludo testun aml-linell, ffeiliau a delweddau; cedwir delweddau fel PNG dros dro a mewnosodir eu llwybrau mewn dyfynodau.
- Rhagolwg Markdown a HTML wrth ochr y testun, yn diweddaru wrth i chi deipio (⇧⌘V, neu'r botymau ar frig ochr dde'r tab).
  Mae Markdown yn cael ei rendro gyda cmark-gfm, y peiriant y mae GitHub yn ei ddefnyddio: tablau, rhestrau tasgau, testun wedi'i groesi allan a dolenni awtomatig.
- Chwilio ym mhobman: pwyswch Shift ddwywaith i ddod o hyd i unrhyw ffeil yn y prosiect drwy baru bras ar yr enw.
- Mae'n adnabod ffeiliau ffynhonnell gan ddefnyddio catalog o 915 o enwau ieithoedd a fformatau, gan gynnwys enwau ffeiliau, estyniadau cyfansawdd a dehonglwyr sgriptiau. Mae holl 297 o gydrannau Prism (291 o ramadegau annibynnol a 6 o gydrannau ategol) wedi'u cynnwys ac yn llwytho yn ôl yr angen. Mae fformatau heb ramadeg yn defnyddio amlygu testun sylfaenol.
- Mae 108 o ddewisiadau iaith i'r rhyngwyneb. Defnyddiwch y ddewislen Iaith i newid ar unwaith, neu ddilyn iaith y system. Cofir y dewis; mae ffeiliau agored, golygiadau heb eu cadw a sesiynau terfynell yn aros ar agor. Mewn Arabeg, Hebraeg a rhyngwynebau eraill o'r dde i'r chwith, mae cod, rhagolygon ac allbwn y derfynell yn aros o'r chwith i'r dde.
  Ysgrifennir cyfieithiadau'n uniongyrchol o'r testunau Saesneg, gan ystyried cyd-destun y golygydd a'r derfynell. Mae paneli'r system yn dilyn gosodiadau iaith macOS. Nid yw'r catalog hwn yn cynnwys pob iaith naturiol neu iaith raglennu. Gweler [Cyfieithu Sumi](CONTRIBUTING.md#translating-sumi).
- Mae'r wedd olau a thywyll yn dilyn y system.

## Lawrlwytho

- [Y fersiwn ddiweddaraf](../../releases/latest)
- [Adeilad nosweithiol](../../releases/tag/nightly): yn cael ei ailadeiladu ar bob newid i `main`.

Lawrlwythwch `Sumi.zip`, dadsipiwch ef a symudwch Sumi i Applications. Mae un adeilad yn rhedeg ar gyfrifiaduron Mac Apple silicon ac Intel.

Nid yw Sumi wedi'i lofnodi ag Apple Developer ID, felly mae macOS yn rhwystro'r lansiad cyntaf. Agorwch Gosodiadau'r System › Preifatrwydd a Diogelwch a chliciwch «Agor Beth Bynnag», neu rhedwch:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Gofynion

macOS 14 neu ddiweddarach. Mae adeiladu angen Xcode 26 neu ddiweddarach (Swift 6.2).

## Adeiladu o'r cod ffynhonnell

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Agorwch ffolder fel prosiect drwy Ffeil › Agor… (⌘O), neu o'r llinell orchymyn:

```sh
open -a Sumi path/to/project
```

## Llwybrau byr bysellfwrdd

| Gweithred | Llwybr byr |
|---|---|
| Chwilio ym mhobman | ⇧⇧ neu ⇧⌘O |
| Golwg y prosiect | ⌘1 |
| Terfynell | ⌥F12 |
| Tab terfynell newydd | ⌘T |
| Cyfnewid y derfynell a golwg y prosiect | ⌃⌘T |
| Ehangu'r derfynell | ⇧⌘↩ |
| Rhagolwg Markdown / HTML | ⇧⌘V |
| Dewis yng ngolwg y prosiect | ⌥⌘1 |
| Tab nesaf / blaenorol | ⇧⌘] / ⇧⌘[ |
| Cadw / Cadw popeth | ⌘S / ⌥⌘S |

## Cyfrannu

Mae croeso i adroddiadau bygiau, atebion a chyfieithiadau. Darllenwch [CONTRIBUTING.md](CONTRIBUTING.md).

## Trwydded

MIT. Mae Sumi yn cynnwys SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) a chatalog ieithoedd GitHub Linguist (MIT); gweler [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
