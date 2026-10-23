# Sumi

Лёгкі тэкставы рэдактар для macOS, створаны для працы разам з агентамі праграмавання на аснове ШІ. Адкрыты зыходны код (MIT).

Запускайце агента ва ўбудаваным тэрмінале, націскайце на файлы, з якімі ён працуе, каб адкрыць іх, і чытайце напісаны ім Markdown як аформленыя старонкі.

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

## Магчымасці

- Шляхі да файлаў у тэрмінале — гэта спасылкі. Калі агент выводзіць `⎿ M src/app.ts` або `src/app.ts:42:7`, шлях становіцца сінім. Націск адкрывае файл на гэтым радку.
- Выгляд праекта злева, рэдактар пасярэдзіне, тэрмінал унізе.
- Памяняйце месцамі тэрмінал і выгляд праекта (⌃⌘T), каб размясціць тэрмінал злева на ўсю вышыню. Разгарніце тэрмінал спалучэннем ⇧⌘↩.
- Файлы аўтаматычна захоўваюцца пасля паўзы ў наборы на 500 ms і перад закрыццём. Пры знешніх зменах або памылках захавання вашы праўкі застаюцца ва ўкладцы з магчымасцю захаваць копію.
- Закрыццё тэрмінала з актыўнымі камандамі патрабуе пацвярджэння. Гэта датычыцца і фонавых заданняў, і выхаду з праграмы. Пры хаванні панэлі сеансы працягваюць працаваць.
- Тэрміналы па змаўчанні выкарыстоўваюць Metal. У меню «Выгляд» ёсць пераключальнік «Маляванне праз GPU». Шукайце ў вывадзе праз ⌘F; новыя ўкладкі атрымліваюць бягучы працоўны каталог.
- Shift+Enter дазваляе ўводзіць шматрадковыя запыты. Можна ўстаўляць шматрадковы тэкст, файлы і выявы. Выявы захоўваюцца як часовыя PNG, а іх шляхі ўстаўляюцца ў двукоссі.
- Перадпрагляд Markdown і HTML паказваецца побач з тэкстам і абнаўляецца падчас набору (⇧⌘V або кнопкі справа ўверсе ўкладкі).
  Markdown апрацоўваецца праз cmark-gfm, які выкарыстоўвае GitHub: табліцы, спісы заданняў, закрэслены тэкст і аўтаматычныя спасылкі.
- Шукаць усюды: двойчы націсніце Shift, каб знайсці любы файл праекта праз недакладнае супадзенне назвы.
- Распазнае зыходныя файлы паводле каталога з 915 назвамі моў і фарматаў, у тым ліку назвамі файлаў, складовымі пашырэннямі і інтэрпрэтатарамі скрыптоў. Уключаны ўсе 297 кампанентаў Prism (291 самастойная граматыка і 6 дапаможных кампанентаў); яны загружаюцца пры патрэбе. Фарматы без граматыкі выкарыстоўваюць базавую падсветку тэксту.
- Інтэрфейс мае 108 моўных варыянтаў. Пераключайце мову адразу праз меню «Мова» або выкарыстоўвайце сістэмную. Выбар запамінаецца; адкрытыя файлы, незахаваныя праўкі і сеансы тэрмінала застаюцца адкрытымі. У арабскім, іўрыцкім і іншых інтэрфейсах справа налева код, перадпрагляд і вывад тэрмінала застаюцца злева направа.
  Пераклады пішуцца непасрэдна з англійскіх радкоў з улікам іх сэнсу ў рэдактары і тэрмінале. Сістэмныя панэлі адпавядаюць моўным наладам macOS. Гэты каталог не ахоплівае ўсе натуральныя мовы і мовы праграмавання. Глядзіце [Пераклад Sumi](CONTRIBUTING.md#translating-sumi).
- Светлае і цёмнае афармленне адпавядае сістэме.

## Спампаваць

- [Выпускі](../../releases)
- [Начная зборка](../../releases/tag/nightly): перазбіраецца пасля кожнай змены ў `main`.

Спампуйце `Sumi.zip`, распакуйце і перамясціце Sumi ў Applications. Адна зборка працуе на Mac як з Apple silicon, так і з Intel.

Sumi не падпісаны з дапамогай Apple Developer ID, таму macOS блакуе першы запуск. Адкрыйце Сістэмныя налады › Прыватнасць і бяспека і націсніце «Усё адно адкрыць» або выканайце:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Патрабаванні

macOS 14 або навейшая. Для зборкі патрэбны Xcode 26 або навейшы (Swift 6.2).

## Зборка з зыходнага кода

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Адкрыйце папку як праект праз «Файл › Адкрыць…» (⌘O) або з каманднага радка:

```sh
open -a Sumi path/to/project
```

## Спалучэнні клавіш

| Дзеянне | Спалучэнне |
|---|---|
| Шукаць усюды | ⇧⇧ або ⇧⌘O |
| Выгляд праекта | ⌘1 |
| Тэрмінал | ⌥F12 |
| Новая ўкладка тэрмінала | ⌘T |
| Памяняць месцамі тэрмінал і выгляд праекта | ⌃⌘T |
| Разгарнуць тэрмінал | ⇧⌘↩ |
| Перадпрагляд Markdown / HTML | ⇧⌘V |
| Выбраць у выглядзе праекта | ⌥⌘1 |
| Наступная / папярэдняя ўкладка | ⇧⌘] / ⇧⌘[ |
| Захаваць / Захаваць усё | ⌘S / ⌥⌘S |

## Удзел у распрацоўцы

Вітаюцца паведамленні пра памылкі, выпраўленні і пераклады. Прачытайце [CONTRIBUTING.md](CONTRIBUTING.md).

## Ліцэнзія

MIT. Sumi ўключае SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) і каталог моў GitHub Linguist (MIT); глядзіце [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
