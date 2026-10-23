# Sumi

Թեթև տեքստային խմբագրիչ macOS-ի համար՝ ստեղծված ԱԲ ծրագրավորման գործակալների հետ աշխատելու նպատակով։ Բաց կոդով է (MIT)։

Գործարկեք գործակալին ներկառուցված տերմինալում, սեղմեք նրա փոփոխած ֆայլերը՝ բացելու համար, և նրա գրած Markdown-ը կարդացեք ձևավորված էջերի տեսքով։

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

## Հնարավորություններ

- Տերմինալի ֆայլերի ուղիները հղումներ են։ Երբ ծրագրավորման գործակալը արտածում է `⎿ M src/app.ts` կամ `src/app.ts:42:7`, ուղին կապույտ է դառնում, իսկ սեղմումը բացում է ֆայլը նշված տողում։
- Նախագծի ծառը ձախում է, խմբագրիչը՝ կենտրոնում, տերմինալը՝ ներքևում։
- Փոխանակեք տերմինալի և նախագծի ծառի տեղերը (⌃⌘T), որպեսզի ձախում ունենաք ամբողջ բարձրությամբ տերմինալ։ Տերմինալն առավելացրեք ⇧⌘↩-ով։
- Ֆայլերն ինքնաշխատ պահվում են մուտքագրման 500 ms դադարից հետո և փակելուց առաջ։ Արտաքին փոփոխության կամ պահման ձախողման դեպքում ձեր խմբագրումները մնում են ներդիրում, և կարող եք պահել պատճենը։
- Գործող հրամաններով տերմինալը փակելիս հաստատում է պահանջվում՝ ներառյալ ֆոնային առաջադրանքներն ու հավելվածից դուրս գալը։ Վահանակը թաքցնելիս աշխատաշրջանները շարունակում են գործել։
- Տերմինալները լռելյայն օգտագործում են Metal։ Տեսք ընտրացանկում կա Արտապատկերում GPU-ով անջատիչը։ Արտածման մեջ որոնեք ⌘F-ով․ նոր ներդիրները ժառանգում են ընթացիկ աշխատանքային պանակը։
- Shift+Enter-ը պահպանում է բազմատող հարցման մուտքագրումը։ Տեղադրումն աջակցում է բազմատող տեքստին, ֆայլերին և պատկերներին․ պատկերները պահվում են ժամանակավոր PNG-ների տեսքով և տեղադրվում որպես չակերտված ուղիներ։
- Markdown-ի և HTML-ի նախադիտումը տեքստի կողքին թարմացվում է մուտքագրելիս (⇧⌘V կամ ներդիրի վերևի աջ կոճակներով)։ Markdown-ը ձևավորում է GitHub-ի օգտագործած cmark-gfm-ը՝ աղյուսակներով, առաջադրանքների ցանկերով, վրագծմամբ և ինքնաշխատ հղումներով։
- Որոնել ամենուր․ երկու անգամ սեղմեք Shift-ը՝ նախագծի ցանկացած ֆայլ անունի մոտավոր համընկնմամբ գտնելու համար։
- Սկզբնաղբյուրի ֆայլերը ճանաչվում են լեզուների և ֆայլերի ձևաչափերի 915 անունից կազմված ցանկով՝ ներառյալ ֆայլանունները, բաղադրյալ ընդլայնումներն ու սկրիպտների մեկնաբանիչները։ Ներառված են Prism-ի բոլոր 297 բաղադրիչները (291 ինքնուրույն քերականություն և 6 օժանդակ բաղադրիչ), որոնք բեռնվում են ըստ պահանջի։ Քերականություն չունեցող ձևաչափերն օգտագործում են հիմնական տեքստային գունավորում։
- Միջերեսն ունի լեզվի 108 տարբերակ։ Լեզու ընտրացանկով անմիջապես փոխեք լեզուն կամ հետևեք համակարգի լեզվին։ Ընտրությունը հիշվում է․ բաց ֆայլերը, չպահված փոփոխություններն ու տերմինալի աշխատաշրջանները մնում են բաց։ Արաբերեն, եբրայերեն և աջից ձախ այլ միջերեսներում կոդը, նախադիտումն ու տերմինալի արտածումը մնում են ձախից աջ։ Թարգմանությունները գրված են անմիջապես անգլերեն տողերից՝ հաշվի առնելով խմբագրիչի և տերմինալի համատեքստը։ Համակարգային վահանակները հետևում են macOS-ի լեզվի կարգավորումներին։ Ցանկը չի ընդգրկում բոլոր բնական կամ ծրագրավորման լեզուները։ Տես [Sumi-ի թարգմանումը](CONTRIBUTING.md#translating-sumi)։
- Բաց և մուգ տեսքը հետևում է համակարգին։

## Ներբեռնում

- [Վերջին թողարկումը](../../releases/latest)
- [Գիշերային տարբերակ](../../releases/tag/nightly): վերակառուցվում է `main`-ի յուրաքանչյուր փոփոխության ժամանակ։

Ներբեռնեք `Sumi.zip`-ը, ապասեղմեք և Sumi-ն տեղափոխեք Applications։ Նույն տարբերակն աշխատում է Apple silicon և Intel Mac-երում։

Sumi-ն ստորագրված չէ Apple Developer ID-ով, ուստի macOS-ն արգելափակում է առաջին գործարկումը։ Բացեք համակարգի կարգավորումները › գաղտնիություն և անվտանգություն բաժինը և սեղմեք ամեն դեպքում բացելու կոճակը կամ գործարկեք․

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Պահանջներ

macOS 14 կամ ավելի նոր։ Կառուցման համար անհրաժեշտ է Xcode 26 կամ ավելի նոր (Swift 6.2)։

## Կառուցում սկզբնաղբյուրից

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Բացեք պանակը որպես նախագիծ Ֆայլ › Բացել… (⌘O) ընտրացանկից կամ հրամանային տողից․

```sh
open -a Sumi path/to/project
```

## Ստեղնաշարի դյուրանցումներ

| Գործողություն | Դյուրանցում |
|---|---|
| Որոնել ամենուր | ⇧⇧ կամ ⇧⌘O |
| Նախագծի ծառ | ⌘1 |
| Տերմինալ | ⌥F12 |
| Տերմինալի նոր ներդիր | ⌘T |
| Փոխանակել տերմինալն ու նախագիծը | ⌃⌘T |
| Առավելացնել տերմինալը | ⇧⌘↩ |
| Markdown / HTML նախադիտում | ⇧⌘V |
| Ընտրել նախագծի ծառում | ⌥⌘1 |
| Հաջորդ ներդիրը / Նախորդ ներդիրը | ⇧⌘] / ⇧⌘[ |
| Պահել / Պահել բոլորը | ⌘S / ⌥⌘S |

## Մասնակցություն

Սխալների հաղորդումները, շտկումները և թարգմանությունները ողջունելի են։ Կարդացեք [CONTRIBUTING.md](CONTRIBUTING.md)։

## Արտոնագիր

MIT։ Sumi-ն ներառում է SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) և GitHub Linguist-ի լեզուների ցանկը (MIT)․ տես [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)։
