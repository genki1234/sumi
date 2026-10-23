# Sumi

Лесен уредувач на текст за macOS, создаден за работа со агенти за програмирање со ВИ. Со отворен код (MIT).

Стартувајте го агентот во вградениот терминал, кликнете на датотеките што ги менува за да ги отворите и читајте го неговиот Markdown како форматирани страници.

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

## Можности

- Патеките до датотеки во терминалот се врски. Кога агентот ќе испечати `⎿ M src/app.ts` или `src/app.ts:42:7`, патеката станува сина и еден клик ја отвора датотеката на тој ред.
- Дрвото на проектот е лево, уредувачот во средина, терминалот долу.
- Разменете ги терминалот и дрвото на проектот (⌃⌘T) за терминал со целосна висина лево. Зголемете го терминалот до максимум со ⇧⌘↩.
- Датотеките автоматски се зачувуваат по пауза од 500 ms во пишувањето и пред затворање. Надворешните промени и неуспешното зачувување ги задржуваат вашите измени во јазичето, со можност за зачувување копија.
- Затворањето терминал со активни команди бара потврда, вклучувајќи задачи во заднина и излегување од апликацијата. Криењето на панелот не ги прекинува сесиите.
- Терминалите стандардно користат Metal, со прекинувач Исцртување со GPU во Приказ. Пребарувајте го излезот со ⌘F; новите јазичиња го наследуваат тековниот работен директориум.
- Shift+Enter го задржува внесувањето повеќередни инструкции. Лепењето поддржува повеќереден текст, датотеки и слики; сликите се чуваат како привремени PNG и се вметнуваат како патеки во наводници.
- Прегледот на Markdown и HTML покрај текстот се обновува додека пишувате (⇧⌘V или копчињата горе десно во јазичето). Markdown се прикажува со cmark-gfm, механизмот што го користи GitHub: табели, списоци со задачи, прецртување и автоматски врски.
- Пребарај насекаде: притиснете Shift двапати за да најдете која било датотека во проектот со приближно совпаѓање на името.
- Ги препознава изворните датотеки со каталог од 915 имиња на јазици и формати, вклучувајќи имиња на датотеки, составени наставки и толкувачи на скрипти. Сите 297 компоненти на Prism (291 самостојна граматика и 6 помошни) се вклучени и се вчитуваат по потреба. Форматите без граматика користат основно истакнување на текстот.
- Интерфејсот има 108 јазични опции. Преку менито Јазик сменете веднаш или следете го системскиот јазик. Изборот се памети; отворените датотеки, незачуваните измени и терминалските сесии остануваат отворени. Во арапски, хебрејски и други интерфејси оддесно налево, кодот, прегледите и терминалскиот излез остануваат одлево надесно. Преводите се пишуваат директно од англиските текстови во контекст на уредувачот и терминалот. Системските панели ги следат јазичните поставки на macOS. Каталогот не го опфаќа секој природен или програмски јазик. Видете [Преведување на Sumi](CONTRIBUTING.md#translating-sumi).
- Светлиот и темниот изглед го следат системот.

## Преземање

- [Изданија](../../releases)
- [Ноќна верзија](../../releases/tag/nightly): се гради повторно при секоја промена на `main`.

Преземете `Sumi.zip`, распакувајте го и преместете го Sumi во Applications. Една верзија работи на Mac со Apple silicon и Intel.

Sumi не е потпишан со Apple Developer ID, па macOS го блокира првото стартување. Отворете Системски поставки › Приватност и безбедност и кликнете на опцијата за сепак да се отвори, или извршете:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Барања

macOS 14 или понов. За градење е потребен Xcode 26 или понов (Swift 6.2).

## Градење од изворен код

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Отворете папка како проект преку Датотека › Отвори… (⌘O) или од командната линија:

```sh
open -a Sumi path/to/project
```

## Кратенки на тастатура

| Дејство | Кратенка |
|---|---|
| Пребарај насекаде | ⇧⇧ или ⇧⌘O |
| Дрво на проектот | ⌘1 |
| Терминал | ⌥F12 |
| Ново јазиче на терминалот | ⌘T |
| Размени ги терминалот и проектот | ⌃⌘T |
| Зголеми го терминалот до максимум | ⇧⌘↩ |
| Преглед на Markdown / HTML | ⇧⌘V |
| Избери во дрвото на проектот | ⌥⌘1 |
| Следно јазиче / Претходно јазиче | ⇧⌘] / ⇧⌘[ |
| Зачувај / Зачувај сè | ⌘S / ⌥⌘S |

## Придонесување

Добредојдени се пријави за грешки, поправки и преводи. Прочитајте [CONTRIBUTING.md](CONTRIBUTING.md).

## Лиценца

MIT. Sumi вклучува SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) и јазичниот каталог GitHub Linguist (MIT); видете [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
