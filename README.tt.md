# Sumi

AI код язу агентлары белән эшләү өчен ясалган җиңел macOS текст мөхәррире. Ачык чыганаклы (MIT).

Агентны эчке терминалда эшләтегез, ул үзгәрткән файлларны басып ачыгыз һәм язган Markdown текстын бизәлгән битләр итеп укыгыз.

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

## Мөмкинлекләр

- Терминалдагы файл юллары — сылтамалар. Агент `⎿ M src/app.ts` яки `src/app.ts:42:7` чыгарса, юл зәңгәрләнә; басу файлны шул юлда ача.
- Проект агачы сулда, мөхәррир уртада, терминал аста.
- Терминал белән проект агачы урыннарын алыштырыгыз (⌃⌘T), терминал сулда тулы биеклектә булыр. Терминалны ⇧⌘↩ белән зурайтыгыз.
- Файллар язуда 500 ms тәнәфестән соң һәм ябылганчы үзләре саклана. Тышкы үзгәреш яки саклау хатасы булганда төзәтүләр салынмада кала, күчермә саклау мөмкинлеге бар.
- Командалар эшләгән терминалны ябу раслау сорый, шул исәптән фонда эшләр булганда һәм кушымтадан чыкканда. Панельне яшерү сеансларны туктатмый.
- Терминаллар килешү буенча Metal куллана; GPU аша сурәтләү күчергече Күренеш менюсында. Чыгышны ⌘F белән эзләгез; яңа салынмалар хәзерге эш папкасын ала.
- Shift+Enter берничә юллы сорау кертүне саклый. Күпюллы текст, файл һәм рәсем өстәп була; рәсемнәр вакытлы PNG итеп тотыла, юллары куштырнак эчендә кертелә.
- Markdown һәм HTML алдан каравы текст янында була, язганда яңара (⇧⌘V яки салынманың уң өске төймәләре). Markdown GitHub кулланган cmark-gfm белән сурәтләнә: таблицалар, эш исемлекләре, сызылган текст һәм автоматик сылтамалар.
- Һәркайда эзләү: Shift төймәсенә ике тапкыр басып проекттагы теләсә нинди файлны якынча исем туры килүе белән табыгыз.
- Чыганак файлларын 915 тел һәм файл форматы исеме каталогы буенча таный; файл исемнәре, кушма киңәйтелмәләр һәм скрипт башкаручылары да керә. Prism-ның барлык 297 өлеше (291 мөстәкыйль грамматика һәм 6 ярдәмче) кертелгән, кирәк булганда йөкләнә. Грамматикасыз форматлар гади текст яктыртуын куллана.
- Интерфейста 108 тел сайлавы бар. Тел менюсында шунда ук алыштырыгыз яки система теленә иярегез. Сайлау истә кала; ачык файллар, сакланмаган төзәтүләр һәм терминал сеанслары ачык кала. Гарәп, иврит һәм башка уңнан сулга интерфейсларда код, алдан карау һәм терминал чыгышы сулдан уңга кала. Тәрҗемәләр мөхәррир һәм терминал мәгънәсен исәпкә алып инглизчә тексттан турыдан-туры язылган. Система панельләре macOS тел көйләвен куллана. Каталог барлык табигый яки программалау телләрен колачламый. [Sumi тәрҗемәсе](CONTRIBUTING.md#translating-sumi) турында укыгыз.
- Ачык һәм караңгы күренеш системага иярә.

## Йөкләп алу

- [Соңгы чыгарылыш](../../releases/latest)
- [Төнге җыелма](../../releases/tag/nightly): `main` үзгәргән саен яңадан җыела.

`Sumi.zip` йөкләп алыгыз, архивын ачыгыз һәм Sumi-ны Applications эченә күчерегез. Бер җыелма Apple silicon һәм Intel Mac-ларда эшли.

Sumi Apple Developer ID белән имзаланмаган, шуңа macOS беренче эшләтүне тыя. Система көйләүләре › Хосусыйлык һәм иминлекне ачып, Барыбер ачуны басыгыз яки эшләтегез:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Таләпләр

macOS 14 яки яңарак. Җыю өчен Xcode 26 яки яңарак кирәк (Swift 6.2).

## Чыганактан җыю

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Файл › Ачу… (⌘O) аша папканы проект итеп яки команда юлыннан ачыгыз:

```sh
open -a Sumi path/to/project
```

## Клавиатура кыска юллары

| Гамәл | Кыска юл |
|---|---|
| Һәркайда эзләү | ⇧⇧ / ⇧⌘O |
| Проект агачы | ⌘1 |
| Терминал | ⌥F12 |
| Яңа терминал салынмасы | ⌘T |
| Терминал белән проект урыннарын алыштыру | ⌃⌘T |
| Терминалны зурайту | ⇧⌘↩ |
| Markdown / HTML — Алдан карауны күрсәтү яки яшерү | ⇧⌘V |
| Проект агачында сайлау | ⌥⌘1 |
| Киләсе салынма / Алдагы салынма | ⇧⌘] / ⇧⌘[ |
| Саклау / Барысын саклау | ⌘S / ⌥⌘S |

## Өлеш кертү

Хата хәбәрләре, төзәтүләр һәм тәрҗемәләр кабул ителә. [CONTRIBUTING.md](CONTRIBUTING.md) укыгыз.

## Лицензия

MIT. Sumi эчендә SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) һәм GitHub Linguist тел каталогы (MIT) бар; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) карагыз.
