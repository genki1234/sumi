# Sumi

ЖИ кодтау агенттерімен бірге жұмыс істеуге арналған жеңіл macOS мәтін өңдегіші. Ашық бастапқы кодты (MIT).

Агентіңізді кірістірілген терминалда іске қосыңыз, ол өзгерткен файлдарды басып ашыңыз және жазған Markdown мәтінін пішімделген беттер түрінде оқыңыз.

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

## Мүмкіндіктер

- Терминалдағы файл жолдары сілтемелерге айналады. Кодтау агенті `⎿ M src/app.ts` немесе `src/app.ts:42:7` шығарғанда, жол көк түске боялады; оны басу файлды сол жолда ашады.
- Жоба ағашы сол жақта, өңдегіш ортада, терминал төменде.
- Сол жақта толық биіктіктегі терминал болу үшін терминал мен жоба ағашының орнын ауыстырыңыз (⌃⌘T). Терминалды ⇧⌘↩ арқылы барынша үлкейтіңіз.
- Файлдар теру 500 ms тоқтағаннан кейін және жабу алдында автоматты сақталады. Сыртқы өзгерістер не сақтау қатесі болса, түзетулеріңіз қойындыда қалады, көшірме сақтау мүмкіндігі беріледі.
- Пәрмендер орындалып жатқан терминалды жабу растауды сұрайды; бұған фондық тапсырмалар мен қолданбадан шығу да кіреді. Тақтаны жасыру сеанстардың жұмысын тоқтатпайды.
- Терминалдар әдепкіде Metal пайдаланады; Көрініс мәзірінде GPU арқылы бейнелеу ауыстырғышы бар. Шығарылған мәтінді ⌘F арқылы іздеңіз; жаңа қойындылар ағымдағы жұмыс қалтасын алады.
- Shift+Enter көпжолды сұрау енгізуді сақтайды. Көпжолды мәтінді, файлдар мен суреттерді қоюға болады; суреттер уақытша PNG ретінде сақталып, тырнақшаға алынған жолдар түрінде енгізіледі.
- Мәтін жанындағы Markdown және HTML алдын ала қарауы терген кезде жаңарады (⇧⌘V не қойындының жоғарғы оң жақ түймелері). Markdown GitHub пайдаланатын cmark-gfm арқылы көрсетіледі: кестелер, тапсырма тізімдері, сызылған мәтін және автоматты сілтемелер.
- Барлық жерден іздеу: жоба ішіндегі кез келген файлды атауы бойынша жуық сәйкестікпен табу үшін Shift пернесін екі рет басыңыз.
- Бастапқы код файлдарын 915 тіл және файл пішімі атауының каталогы арқылы таниды, соның ішінде файл атаулары, құрама кеңейтімдер мен скрипт интерпретаторлары бар. Барлық 297 Prism компоненті (291 дербес грамматика және 6 көмекші) бірге жеткізіліп, қажет кезде жүктеледі. Грамматикасы жоқ пішімдерде қарапайым мәтін бояуы қолданылады.
- Интерфейсте 108 тіл таңдауы бар. Тіл мәзірінен бірден ауыстырыңыз не жүйе тіліне ілесіңіз. Таңдау есте қалады; ашық файлдар, сақталмаған түзетулер және терминал сеанстары ашық қалады. Араб, иврит және басқа оңнан солға интерфейстерде код, алдын ала қарау мен терминал шығысы солдан оңға көрсетіледі. Аудармалар өңдегіш пен терминал мәнмәтінін ескеріп, ағылшын мәтіндерінен тікелей жазылған. Жүйелік тақталар macOS тіл баптауларын қолданады. Каталог барлық табиғи не бағдарламалау тілдерін қамтымайды. [Sumi аудару](CONTRIBUTING.md#translating-sumi) бөлімін қараңыз.
- Ашық және күңгірт көрініс жүйеге ілеседі.

## Жүктеп алу

- [Шығарылымдар](../../releases)
- [Түнгі құрастыру](../../releases/tag/nightly): `main` ішіндегі әр өзгерісте қайта құрастырылады.

`Sumi.zip` жүктеп алып, мұрағаттан шығарыңыз да, Sumi қолданбасын Applications қалтасына жылжытыңыз. Бір құрастыру Apple silicon және Intel Mac компьютерлерінде жұмыс істейді.

Sumi Apple Developer ID арқылы қолтаңбаланбағандықтан, macOS бірінші іске қосуды бұғаттайды. Жүйе баптаулары › Құпиялылық және қауіпсіздік бөліміне өтіп, бәрібір ашу түймесін басыңыз не мынаны орындаңыз:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Талаптар

macOS 14 немесе жаңарақ. Құрастыру үшін Xcode 26 немесе жаңарақ керек (Swift 6.2).

## Бастапқы кодтан құрастыру

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Қалтаны жоба ретінде Файл › Ашу… (⌘O) арқылы не пәрмен жолынан ашыңыз:

```sh
open -a Sumi path/to/project
```

## Пернетақта тіркесімдері

| Әрекет | Тіркесім |
|---|---|
| Барлық жерден іздеу | ⇧⇧ немесе ⇧⌘O |
| Жоба ағашы | ⌘1 |
| Терминал | ⌥F12 |
| Жаңа терминал қойындысы | ⌘T |
| Терминал мен жобаның орнын ауыстыру | ⌃⌘T |
| Терминалды барынша үлкейту | ⇧⌘↩ |
| Markdown / HTML алдын ала қарау | ⇧⌘V |
| Жоба ағашында таңдау | ⌥⌘1 |
| Келесі қойынды / Алдыңғы қойынды | ⇧⌘] / ⇧⌘[ |
| Сақтау / Барлығын сақтау | ⌘S / ⌥⌘S |

## Үлес қосу

Қате хабарлары, түзетулер және аудармалар қабылданады. [CONTRIBUTING.md](CONTRIBUTING.md) файлын оқыңыз.

## Лицензия

MIT. Sumi құрамына SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) және GitHub Linguist тіл каталогы (MIT) кіреді; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) қараңыз.
