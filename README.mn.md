# Sumi

ЖИ код бичих агентуудтай хамт ажиллахад зориулсан хөнгөн macOS бичвэр засварлагч. Нээлттэй эхтэй (MIT).

Агентаа суулгагдсан терминалд ажиллуулж, түүний өөрчилсөн файлуудыг товшин нээгээд, бичсэн Markdown-ыг нь хэлбэржүүлсэн хуудсаар уншаарай.

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

## Боломжууд

- Терминал дахь файлын замууд холбоос болно. Код бичих агент `⎿ M src/app.ts` эсвэл `src/app.ts:42:7` хэвлэхэд зам цэнхэр болж, товшиход файл тухайн мөрөнд нээгдэнэ.
- Төслийн мод зүүн талд, засварлагч голд, терминал доор байрлана.
- Терминал ба төслийн модны байрыг солиход (⌃⌘T) зүүн талд бүтэн өндөртэй терминал байрлана. ⇧⌘↩-ээр терминалыг дээд хэмжээнд томруулна.
- Бичихээ 500 ms зогсоосны дараа болон хаахын өмнө файлууд автоматаар хадгалагдана. Гаднаас өөрчлөгдөх эсвэл хадгалалт амжилтгүй болох үед таны засварууд табд үлдэж, хуулбар хадгалах сонголт гарна.
- Команд ажиллаж буй терминалыг хаахад баталгаажуулалт асууна; арын даалгаврууд болон апп-аас гарах үед ч үйлчилнэ. Самбарыг нуухад сессүүд ажилласаар байна.
- Терминалууд өгөгдмөлөөр Metal ашиглана; Харагдац цэсэнд GPU дүрслэл шилжүүлэгч бий. Гаралтад ⌘F-ээр хайна; шинэ табууд одоогийн ажлын хавтсыг өвлөнө.
- Shift+Enter олон мөртэй заавар оруулахыг хадгална. Олон мөртэй бичвэр, файл, зураг буулгахыг дэмжинэ; зургууд түр PNG болж хадгалагдаж, хашилтад оруулсан замаар нэмэгдэнэ.
- Бичвэрийн хажуугийн Markdown ба HTML урьдчилан харах нь бичих явцад шинэчлэгдэнэ (⇧⌘V эсвэл табын баруун дээд товчнууд). Markdown-ыг GitHub-ийн хэрэглэдэг cmark-gfm дүрслэнэ: хүснэгт, даалгаврын жагсаалт, дарсан бичвэр, автомат холбоос.
- Хаа сайгүй хайх: Shift-ийг хоёр удаа дарж төслийн дурын файлыг нэрийн ойролцоо тохирлоор олоорой.
- Эх кодын файлыг хэл, файлын форматын 915 нэрийн каталогоор танина; файлын нэр, нийлмэл өргөтгөл, скрипт тайлбарлагчийг хамарна. Prism-ийн бүх 297 бүрэлдэхүүн (291 бие даасан дүрэм, 6 туслагч) багтсан бөгөөд хэрэгцээгээр ачаалагдана. Дүрэмгүй форматад энгийн бичвэрийн тодруулга хэрэглэнэ.
- Интерфейс 108 хэлний сонголттой. Хэл цэсээр шууд солих эсвэл системийн хэлийг дагаж болно. Сонголтыг санана; нээлттэй файл, хадгалаагүй засвар, терминалын сессүүд нээлттэй үлдэнэ. Араб, еврей болон баруунаас зүүн тийш бусад интерфейст код, урьдчилан харах, терминалын гаралт зүүнээс баруун тийш хэвээр байна. Орчуулгыг засварлагч, терминалын нөхцөлийг харгалзан англи бичвэрээс шууд бичсэн. Системийн самбарууд macOS хэлний тохиргоог дагана. Каталог бүх хүний эсвэл програмчлалын хэлийг хамрахгүй. [Sumi-г орчуулах](CONTRIBUTING.md#translating-sumi) хэсгийг үзнэ үү.
- Цайвар, бараан харагдац системийг дагана.

## Татах

- [Хувилбарууд](../../releases)
- [Шөнийн бүтээлт](../../releases/tag/nightly): `main` өөрчлөгдөх бүрд дахин бүтээнэ.

`Sumi.zip`-ийг татаж задлаад Sumi-г Applications руу зөөнө. Нэг бүтээлт Apple silicon болон Intel Mac дээр ажиллана.

Sumi Apple Developer ID гарын үсэггүй тул macOS анхны нээлтийг хориглоно. Системийн тохиргоо › Нууцлал ба аюулгүй байдал руу орж Ямар ч байсан нээхийг дарна уу, эсвэл:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Шаардлага

macOS 14 буюу түүнээс шинэ. Бүтээхэд Xcode 26 буюу түүнээс шинэ хэрэгтэй (Swift 6.2).

## Эх кодоос бүтээх

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Хавтсыг төсөл болгон Файл › Нээх… (⌘O) цэснээс эсвэл командын мөрөөс нээнэ:

```sh
open -a Sumi path/to/project
```

## Гарын товчлолууд

| Үйлдэл | Товчлол |
|---|---|
| Хаа сайгүй хайх | ⇧⇧ эсвэл ⇧⌘O |
| Төслийн мод | ⌘1 |
| Терминал | ⌥F12 |
| Терминалын шинэ таб | ⌘T |
| Терминал ба төслийн байрыг солих | ⌃⌘T |
| Терминалыг дээд хэмжээнд томруулах | ⇧⌘↩ |
| Markdown / HTML урьдчилан харах | ⇧⌘V |
| Төслийн модонд сонгох | ⌥⌘1 |
| Дараагийн таб / Өмнөх таб | ⇧⌘] / ⇧⌘[ |
| Хадгалах / Бүгдийг хадгалах | ⌘S / ⌥⌘S |

## Хувь нэмэр оруулах

Алдааны мэдээлэл, засвар, орчуулга хүлээн авна. [CONTRIBUTING.md](CONTRIBUTING.md)-г уншаарай.

## Лиценз

MIT. Sumi нь SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT), GitHub Linguist хэлний каталогийг (MIT) агуулна; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)-г үзнэ үү.
