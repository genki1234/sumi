# Sumi

Лаган уређивач текста за macOS, намењен раду са AI агентима за програмирање. Отвореног кода (MIT).

Покрените агента у уграђеном терминалу, кликом отворите датотеке које мења и читајте Markdown који пише као обликоване странице.

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

## Могућности

- Путање датотека у терминалу су везе. Када агент испише `⎿ M src/app.ts` или `src/app.ts:42:7`, путања постаје плава; клик отвара датотеку на том реду.
- Стабло пројекта лево, уређивач у средини, терминал доле.
- Замените места терминала и стабла пројекта (⌃⌘T) да терминал буде лево целом висином. Увећајте терминал помоћу ⇧⌘↩.
- Датотеке се аутоматски чувају после паузе у куцању од 500 ms и пре затварања. При спољним изменама или неуспелом чувању, измене остају на картици, уз могућност чувања копије.
- Затварање терминала са активним командама тражи потврду, укључујући послове у позадини и излазак из апликације. Скривање табле оставља сесије активним.
- Терминали подразумевано користе Metal; прекидач Исцртавање помоћу GPU је у менију Приказ. Претражите излаз помоћу ⌘F; нове картице наслеђују тренутну радну фасциклу.
- Shift+Enter задржава унос упита у више редова. Могу се налепити вишередни текст, датотеке и слике; слике остају привремени PNG фајлови, а њихове путање се убацују под наводницима.
- Преглед Markdown и HTML је поред текста и ажурира се током куцања (⇧⌘V или дугмад горе десно на картици). Markdown исцртава cmark-gfm који користи GitHub: табеле, спискове задатака, прецртан текст и аутоматске везе.
- Претражи свуда: притисните Shift двапут да нађете било коју датотеку пројекта приближним подударањем назива.
- Препознаје изворне датотеке каталогом 915 назива језика и формата, укључујући називе датотека, сложене наставке и тумаче скрипти. Свих 297 компоненти Prism (291 самостална граматика и 6 помоћних компоненти) је укључено и учитавају се по потреби. Формати без граматике користе основно истицање текста.
- Интерфејс нуди 108 језика. Мени Језик одмах мења језик или прати системски. Избор се памти; отворене датотеке, несачуване измене и сесије терминала остају отворени. У арапском, хебрејском и другим интерфејсима здесна налево, код, прегледи и излаз терминала остају слева надесно. Преводи су написани непосредно из енглеских текстова у контексту уређивача и терминала. Системске табле прате језичка подешавања macOS. Каталог не обухвата све природне и програмске језике. Видите [Превођење Sumi](CONTRIBUTING.md#translating-sumi).
- Светли и тамни изглед прате систем.

## Преузимање

- [Најновије издање](../../releases/latest)
- [Ноћна верзија](../../releases/tag/nightly): поново се гради при свакој измени `main`.

Преузмите `Sumi.zip`, распакујте и преместите Sumi у Applications. Једна верзија ради на Mac рачунарима са Apple silicon и Intel процесорима.

Sumi није потписан Apple Developer ID-јем, па macOS блокира прво покретање. Отворите Подешавања система › Приватност и безбедност и кликните Отвори ипак, или покрените:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Захтеви

macOS 14 или новији. За изградњу је потребан Xcode 26 или новији (Swift 6.2).

## Изградња из изворног кода

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Отворите фасциклу као пројекат из Датотека › Отвори… (⌘O), или из командне линије:

```sh
open -a Sumi path/to/project
```

## Пречице на тастатури

| Радња | Пречица |
|---|---|
| Претражи свуда | ⇧⇧ / ⇧⌘O |
| Стабло пројекта | ⌘1 |
| Терминал | ⌥F12 |
| Нова картица терминала | ⌘T |
| Замени места терминала и пројекта | ⌃⌘T |
| Увећај терминал | ⇧⌘↩ |
| Markdown / HTML — Укључи или искључи преглед | ⇧⌘V |
| Изабери у стаблу пројекта | ⌥⌘1 |
| Следећа картица / Претходна картица | ⇧⌘] / ⇧⌘[ |
| Сачувај / Сачувај све | ⌘S / ⌥⌘S |

## Доприноси

Пријаве грешака, исправке и преводи су добродошли. Прочитајте [CONTRIBUTING.md](CONTRIBUTING.md).

## Лиценца

MIT. Sumi укључује SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) и каталог језика GitHub Linguist (MIT); видите [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
