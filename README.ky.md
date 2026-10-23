# Sumi

ЖИ код жазуу агенттери менен иштөө үчүн жасалган жеңил macOS текст редактору. Ачык баштапкы код (MIT).

Агентти камтылган терминалда иштетиңиз, ал өзгөрткөн файлдарды басып ачыңыз жана жазган Markdown текстин калыпталган беттер түрүндө окуңуз.

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

## Мүмкүнчүлүктөр

- Терминалдагы файл жолдору шилтеме болот. Код жазуу агенти `⎿ M src/app.ts` же `src/app.ts:42:7` чыгарганда, жол көк болуп, аны басуу файлды ошол сапта ачат.
- Долбоор дарагы солдо, редактор ортодо, терминал төмөндө.
- Сол жакта толук бийиктиктеги терминал үчүн терминал менен долбоор дарагынын ордун алмаштырыңыз (⌃⌘T). Терминалды ⇧⌘↩ менен толук чоңойтуңуз.
- Терүүдө 500 ms тыныгуудан кийин жана жабардын алдында файлдар автоматтык сакталат. Тышкы өзгөрүүлөрдө же сактоо ишке ашпаса, түзөтүүлөрүңүз өтмөктө калат, көчүрмө сактоо мүмкүнчүлүгү берилет.
- Буйруктар иштеп жаткан терминалды жабууда ырастоо суралат; буга фондо иштеген тапшырмалар жана колдонмодон чыгуу да кирет. Панелди жашырганда сеанстар иштей берет.
- Терминалдар демейкиде Metal колдонот; Көрүнүш менюсунда GPU менен чийүү которгучу бар. Чыгарылган текстти ⌘F менен издеңиз; жаңы өтмөктөр учурдагы жумуш папкасын алат.
- Shift+Enter көп саптуу сурам киргизүүнү сактайт. Коюу көп саптуу текстти, файлдарды жана сүрөттөрдү колдойт; сүрөттөр убактылуу PNG болуп сакталып, тырмакчага алынган жолдор катары киргизилет.
- Тексттин жанындагы Markdown жана HTML алдын ала көрүүсү тергенде жаңыланат (⇧⌘V же өтмөктүн жогорку оң бурчундагы баскычтар). Markdown GitHub колдонгон cmark-gfm менен көрсөтүлөт: жадыбалдар, тапшырма тизмелери, чийилген текст жана автоматтык шилтемелер.
- Бардык жерден издөө: долбоордогу каалаган файлды атынын болжолдуу дал келүүсү менен табыш үчүн Shift баскычын эки жолу басыңыз.
- Баштапкы код файлдарын 915 тил жана файл форматтарынын аталыштары камтылган каталог аркылуу тааныйт; файл аттары, курама кеңейтүүлөр жана скрипт чечмелегичтери да кирет. Prism'дин бардык 297 компоненти (291 өз алдынча грамматика жана 6 жардамчы) камтылып, зарыл учурда жүктөлөт. Грамматикасы жок форматтар жөнөкөй текст боёосун колдонот.
- Интерфейсте 108 тил тандоосу бар. Тил менюсу менен дароо которуңуз же тутумдун тилин колдонуңуз. Тандоо эсте калат; ачык файлдар, сактала элек түзөтүүлөр жана терминал сеанстары ачык калат. Араб, иврит жана оңдон солго жазылган башка интерфейстерде код, алдын ала көрүү жана терминалдын чыгышы солдон оңго бойдон калат. Котормолор редактор менен терминалдын контекстин эске алып, англисче тексттерден түз жазылган. Тутум панелдери macOS тил жөндөөлөрүн колдонот. Каталог бардык табигый же программалоо тилдерин камтыбайт. [Sumi которуу](CONTRIBUTING.md#translating-sumi) бөлүмүн караңыз.
- Жарык жана караңгы көрүнүш тутумга ылайык өзгөрөт.

## Жүктөп алуу

- [Чыгарылыштар](../../releases)
- [Түнкү курулуш](../../releases/tag/nightly): `main` ичиндеги ар бир өзгөрүүдө кайра курулат.

`Sumi.zip` жүктөп, архивден чыгарыңыз да, Sumi'ни Applications ичине жылдырыңыз. Бир курулуш Apple silicon жана Intel Mac түзмөктөрүндө иштейт.

Sumi Apple Developer ID менен кол коюлбагандыктан, macOS алгачкы иштетүүнү бөгөттөйт. Тутум жөндөөлөрү › Купуялык жана коопсуздук бөлүмүнөн баары бир ачуу баскычын басыңыз же муну аткарыңыз:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Талаптар

macOS 14 же жаңыраак. Куруу үчүн Xcode 26 же жаңыраак керек (Swift 6.2).

## Баштапкы коддон куруу

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Папканы долбоор катары Файл › Ачуу… (⌘O) менюсунан же буйрук сабынан ачыңыз:

```sh
open -a Sumi path/to/project
```

## Баскыч айкалыштары

| Аракет | Айкалыш |
|---|---|
| Бардык жерден издөө | ⇧⇧ же ⇧⌘O |
| Долбоор дарагы | ⌘1 |
| Терминал | ⌥F12 |
| Жаңы терминал өтмөгү | ⌘T |
| Терминал менен долбоордун ордун алмаштыруу | ⌃⌘T |
| Терминалды толук чоңойтуу | ⇧⌘↩ |
| Markdown / HTML алдын ала көрүү | ⇧⌘V |
| Долбоор дарагынан тандоо | ⌥⌘1 |
| Кийинки өтмөк / Мурунку өтмөк | ⇧⌘] / ⇧⌘[ |
| Сактоо / Баарын сактоо | ⌘S / ⌥⌘S |

## Салым кошуу

Ката билдирүүлөрү, оңдоолор жана котормолор кабыл алынат. [CONTRIBUTING.md](CONTRIBUTING.md) файлын окуңуз.

## Лицензия

MIT. Sumi курамына SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) жана GitHub Linguist тил каталогу (MIT) кирет; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) караңыз.
