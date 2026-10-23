# Sumi

Муҳаррири сабуки матн барои macOS, ки барои кор бо агентҳои AI-и барноманависӣ сохта шудааст. Рамзи кушода (MIT).

Агенти худро дар терминали дарунсохт иҷро кунед, файлҳои тағйирдодаашро бо клик кушоед ва Markdown-и навиштаашро ҳамчун саҳифаҳои ороишёфта хонед.

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

## Имкониятҳо

- Роҳҳои файл дар терминал пайванданд. Вақте агент `⎿ M src/app.ts` ё `src/app.ts:42:7` мебарорад, роҳ кабуд мешавад; клик файлро дар ҳамон сатр мекушояд.
- Дарахти лоиҳа дар чап, муҳаррир дар миёна, терминал дар поён.
- Ҷойи терминал ва дарахти лоиҳаро иваз кунед (⌃⌘T), то терминал дар чап бо тамоми баландӣ бошад. Бо ⇧⌘↩ терминалро калон кунед.
- Файлҳо пас аз таваққуфи навиштан ба муддати 500 ms ва пеш аз бастан худкор сабт мешаванд. Ҳангоми тағйироти берунӣ ё нокомии сабт, таҳрирҳо дар варақа мемонанд ва имкони сабти нусха ҳаст.
- Бастани терминали дорои фармонҳои фаъол тасдиқ мепурсад, аз ҷумла барои корҳои заминавӣ ва баромадан аз барнома. Пинҳон кардани панел сеансҳоро қатъ намекунад.
- Терминалҳо пешфарз Metal истифода мебаранд; калиди Расмкашӣ бо GPU дар Намоиш аст. Баромадро бо ⌘F ҷустуҷӯ кунед; варақаҳои нав ҷузвдони кории ҷориро мегиранд.
- Shift+Enter воридкунии дархости бисёрсатриро нигоҳ медорад. Матни бисёрсатрӣ, файлҳо ва тасвирҳоро гузоштан мумкин аст; тасвирҳо ҳамчун PNG-и муваққатӣ мемонанд ва роҳҳояшон дар нохунакҳо гузошта мешаванд.
- Пешнамоиши Markdown ва HTML дар паҳлуи матн ҳангоми навиштан нав мешавад (⇧⌘V ё тугмаҳои рости болои варақа). Markdown бо cmark-gfm-и истифодашавандаи GitHub намоиш меёбад: ҷадвалҳо, рӯйхати корҳо, хатзании матн ва пайвандҳои худкор.
- Ҷустуҷӯ дар ҳама ҷо: Shift-ро ду бор пахш кунед, то ҳар файли лоиҳаро бо мувофиқати тақрибии ном ёбед.
- Файлҳои сарчашмаро бо феҳристи 915 номи забон ва формати файл мешиносад, аз ҷумла номҳои файл, пасвандҳои таркибӣ ва тафсиргарони скрипт. Ҳамаи 297 ҷузъи Prism (291 грамматикаи мустақил ва 6 ёрирасон) дохиланд ва ҳангоми зарурат бор мешаванд. Форматҳои бе грамматика равшансозии одии матн мегиранд.
- Интерфейс 108 интихоби забон дорад. Дар менюи Забон фавран иваз кунед ё забони системаро пайравӣ намоед. Интихоб дар хотир мемонад; файлҳои кушода, таҳрирҳои сабтнашуда ва сеансҳои терминал кушода мемонанд. Дар арабӣ, ибрӣ ва дигар интерфейсҳои рост-ба-чап, рамз, пешнамоиш ва баромади терминал чап-ба-рост мемонанд. Тарҷумаҳо бевосита аз матнҳои англисӣ бо назардошти муҳаррир ва терминал навишта шудаанд. Панелҳои система танзими забони macOS-ро пайравӣ мекунанд. Феҳрист ҳамаи забонҳои табиӣ ё барноманависиро фаро намегирад. Нигаред ба [Тарҷумаи Sumi](CONTRIBUTING.md#translating-sumi).
- Намуди равшан ва торик системаро пайравӣ мекунад.

## Боргирӣ

- [Нашри охирин](../../releases/latest)
- [Сохти шабона](../../releases/tag/nightly): бо ҳар тағйири `main` аз нав сохта мешавад.

`Sumi.zip`-ро боргирӣ ва боз кунед, сипас Sumi-ро ба Applications гузаронед. Як сохт ҳам дар Mac-и Apple silicon ва ҳам Intel кор мекунад.

Sumi бо Apple Developer ID имзо нашудааст, бинобар ин macOS оғози аввалро манъ мекунад. Танзимоти система › Махфият ва амниятро кушода, Ба ҳар ҳол кушоданро зер кунед ё иҷро намоед:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Талабот

macOS 14 ё навтар. Сохтан Xcode 26 ё навтарро талаб мекунад (Swift 6.2).

## Сохтан аз сарчашма

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Ҷузвдонро ҳамчун лоиҳа аз Файл › Кушодан… (⌘O) ё аз сатри фармон кушоед:

```sh
open -a Sumi path/to/project
```

## Миёнабурҳои клавиатура

| Амал | Миёнабур |
|---|---|
| Ҷустуҷӯ дар ҳама ҷо | ⇧⇧ / ⇧⌘O |
| Дарахти лоиҳа | ⌘1 |
| Терминал | ⌥F12 |
| Варақаи нави терминал | ⌘T |
| Иваз кардани ҷойи терминал ва лоиҳа | ⌃⌘T |
| Калон кардани терминал | ⇧⌘↩ |
| Markdown / HTML — Намоиш ё пинҳон кардани пешнамоиш | ⇧⌘V |
| Интихоб дар дарахти лоиҳа | ⌥⌘1 |
| Варақаи баъдӣ / Варақаи пешина | ⇧⌘] / ⇧⌘[ |
| Сабт кардан / Сабти ҳама | ⌘S / ⌥⌘S |

## Саҳмгузорӣ

Гузоришҳои хато, ислоҳ ва тарҷумаҳо пазируфта мешаванд. [CONTRIBUTING.md](CONTRIBUTING.md)-ро хонед.

## Иҷозатнома

MIT. Sumi дорои SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) ва феҳристи забонҳои GitHub Linguist (MIT) аст; нигаред ба [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
