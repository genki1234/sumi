# Sumi

Лек текстов редактор за macOS, създаден за работа с агенти за програмиране с ИИ. С отворен код (MIT).

Стартирайте агента във вградения терминал, отваряйте с щракване файловете, с които работи, и четете написания от него Markdown като оформени страници.

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

## Възможности

- Пътищата до файлове в терминала са връзки. Когато агентът изведе `⎿ M src/app.ts` или `src/app.ts:42:7`, пътят става син и щракването отваря файла на съответния ред.
- Изгледът на проекта е вляво, редакторът — в средата, терминалът — отдолу.
- Разменете терминала и изгледа на проекта (⌃⌘T), за да поставите терминал с пълна височина вляво. Разгънете терминала с ⇧⌘↩.
- Файловете се запазват автоматично след пауза в писането от 500 ms и преди затваряне. При външни промени или неуспешно запазване редакциите остават в раздела с възможност да запазите копие.
- Затварянето на терминал с работещи команди изисква потвърждение, включително при фонови задачи и изход от приложението. Скриването на панела оставя сесиите да работят.
- Терминалите използват Metal по подразбиране. В „Изглед“ има превключвател „Изобразяване чрез GPU“. Търсете в изхода с ⌘F; новите раздели наследяват текущата работна директория.
- Shift+Enter позволява въвеждане на многоредови подкани. Можете да поставяте многоредов текст, файлове и изображения; изображенията се пазят като временни PNG и се вмъкват като пътища в кавички.
- Прегледът на Markdown и HTML е до текста и се обновява, докато пишете (⇧⌘V или бутоните горе вдясно в раздела).
  Markdown се изобразява чрез cmark-gfm, който се използва и от GitHub: таблици, списъци със задачи, зачеркнат текст и автоматични връзки.
- Търсене навсякъде: натиснете Shift два пъти, за да намерите всеки файл в проекта по приблизително съвпадение на името.
- Разпознава файлове с изходен код чрез каталог с 915 имена на езици и файлови формати, включително имена на файлове, съставни разширения и интерпретатори на скриптове. Включени са всички 297 компонента на Prism (291 самостоятелни граматики и 6 помощни компонента), които се зареждат при нужда. Форматите без граматика използват основно оцветяване на текста.
- Интерфейсът предлага 108 езика. Използвайте менюто „Език“ за незабавно превключване или следвайте системния език. Изборът се запомня; отворените файлове, незапазените редакции и терминалните сесии остават отворени. При арабски, иврит и други интерфейси отдясно наляво кодът, прегледите и изходът на терминала остават отляво надясно.
  Преводите се пишат директно от английските текстове според контекста им в редактора и терминала. Системните панели следват езиковите настройки на macOS. Каталогът не обхваща всички естествени и програмни езици. Вижте [Превод на Sumi](CONTRIBUTING.md#translating-sumi).
- Светлият и тъмният облик следват системата.

## Изтегляне

- [Версии](../../releases)
- [Нощна компилация](../../releases/tag/nightly): създава се отново при всяка промяна в `main`.

Изтеглете `Sumi.zip`, разархивирайте го и преместете Sumi в Applications. Една компилация работи на Mac с Apple silicon и Intel.

Sumi не е подписан с Apple Developer ID, затова macOS блокира първото стартиране. Отворете Системни настройки › Поверителност и сигурност и щракнете върху „Отваряне въпреки това“ или изпълнете:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Изисквания

macOS 14 или по-нова версия. За компилиране е нужен Xcode 26 или по-нов (Swift 6.2).

## Компилиране от изходния код

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Отворете папка като проект чрез „Файл › Отваряне…“ (⌘O) или от командния ред:

```sh
open -a Sumi path/to/project
```

## Клавишни комбинации

| Действие | Комбинация |
|---|---|
| Търсене навсякъде | ⇧⇧ или ⇧⌘O |
| Изглед на проекта | ⌘1 |
| Терминал | ⌥F12 |
| Нов раздел на терминала | ⌘T |
| Размяна на терминала и изгледа на проекта | ⌃⌘T |
| Разгъване на терминала | ⇧⌘↩ |
| Преглед на Markdown / HTML | ⇧⌘V |
| Избиране в изгледа на проекта | ⌥⌘1 |
| Следващ / предишен раздел | ⇧⌘] / ⇧⌘[ |
| Запазване / Запазване на всичко | ⌘S / ⌥⌘S |

## Принос

Приемаме доклади за грешки, поправки и преводи. Прочетете [CONTRIBUTING.md](CONTRIBUTING.md).

## Лиценз

MIT. Sumi включва SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) и езиковия каталог на GitHub Linguist (MIT); вижте [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
