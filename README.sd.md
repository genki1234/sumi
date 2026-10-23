# Sumi

macOS لاءِ هلڪو ٽيڪسٽ ايڊيٽر، جيڪو AI ڪوڊنگ ايجنٽن سان گڏ ڪم ڪرڻ لاءِ ٺهيل آهي. کليل ذريعو (MIT).

پنهنجو ايجنٽ اندروني ٽرمينل ۾ هلايو، ان جي بدليل فائلن تي ڪلڪ ڪري کوليو، ۽ ان جو لکيل Markdown سجايل صفحن طور پڙهو.

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

## خاصيتون

- ٽرمينل ۾ فائلن جا رستا لنڪ آهن. ايجنٽ `⎿ M src/app.ts` يا `src/app.ts:42:7` ڏيکاري ته رستو نيرو ٿئي ٿو؛ ڪلڪ سان فائل ان سٽ تي کلي ٿي.
- منصوبي جو ڏيک کاٻي، ايڊيٽر وچ ۾، ٽرمينل هيٺ.
- ٽرمينل ۽ منصوبي جا هنڌ مٽايو (⌃⌘T) ته ٽرمينل کاٻي پوري اوچائي تي هجي. ⇧⌘↩ سان ٽرمينل وڏو ڪريو.
- لکڻ ۾ 500 ms وقفي کان پوءِ ۽ بند ڪرڻ کان اڳ فائلون پاڻ محفوظ ٿين ٿيون. ٻاهريون تبديليون يا محفوظ ڪرڻ جون ناڪاميون اچن ته ترميمون ٽيب ۾ رهنديون آهن، ۽ ڪاپي محفوظ ڪرڻ جو اختيار ملندو آهي.
- هلندڙ حڪمن وارو ٽرمينل بند ڪرڻ وقت تصديق گهري ويندي آهي، جنهن ۾ پسمنظر جا ڪم ۽ ايپ مان نڪرڻ به شامل آهن. پينل لڪائڻ سان سيشن هلندا رهن ٿا.
- ٽرمينل اصل ۾ Metal استعمال ڪن ٿا؛ GPU سان رينڊرنگ جو سوئچ ڏيک ۾ آهي. ⌘F سان آئوٽ پٽ ڳوليو؛ نوان ٽيب موجوده ڪم ڪندڙ ڊائريڪٽري وٺن ٿا.
- Shift+Enter گهڻين سٽن وارو پرامپٽ برقرار رکي ٿو. گهڻين سٽن جو متن، فائلون ۽ تصويرون پيسٽ ٿي سگهن ٿيون؛ تصويرون عارضي PNG طور رهن ٿيون ۽ سندن رستا اقتباسي نشانين ۾ داخل ٿين ٿا.
- Markdown ۽ HTML جو اڳواٽ ڏيک متن ڀرسان آهي ۽ لکڻ سان تازه ٿئي ٿو (⇧⌘V يا ٽيب جي مٿي ساڄي بٽڻ). Markdown لاءِ GitHub وارو cmark-gfm استعمال ٿئي ٿو: جدول، ڪمن جون فهرستون، ڪٽيل متن ۽ پاڻمرادو لنڪ.
- هر هنڌ ڳوليو: Shift ٻه ڀيرا دٻائي منصوبي جي ڪنهن به فائل کي لڳ ڀڳ نالي سان ڳوليو.
- 915 ٻولين ۽ فائل فارميٽن جي نالن جي فهرست سان سورس فائلون سڃاڻي ٿو، جنهن ۾ فائل نالا، گڏيل ايڪسٽينشن ۽ اسڪرپٽ انٽرپريٽر شامل آهن. Prism جا سڀ 297 حصا (291 آزاد گرامر ۽ 6 مددگار) گڏ ڏنل آهن ۽ گهرج تي لوڊ ٿين ٿا. بغير گرامر وارن فارميٽن ۾ بنيادي متن جي رنگبندي ٿئي ٿي.
- UI ۾ 108 ٻولين جا اختيار آهن. ٻولي مينيو مان فوراً بدلايو يا سسٽم جي ٻولي اختيار ڪريو. چونڊ ياد رهي ٿي؛ کليل فائلون، اڻمحفوظ ترميمون ۽ ٽرمينل سيشن کليل رهن ٿا. عربي، عبراني ۽ ٻين ساڄي کان کاٻي انٽرفيسن ۾ ڪوڊ، اڳواٽ ڏيک ۽ ٽرمينل آئوٽ پٽ کاٻي کان ساڄي رهن ٿا. ترجما انگريزي عبارتن مان سڌا، ايڊيٽر ۽ ٽرمينل جي حوالي سان لکيل آهن. سسٽم جا پينل macOS جي ٻوليءَ جي سيٽنگن تي هلن ٿا. فهرست هر قدرتي يا پروگرامنگ ٻولي کي نٿي ڍڪي. ڏسو [Sumi جو ترجمو](CONTRIBUTING.md#translating-sumi).
- هلڪو ۽ اونداهو ڏيک سسٽم سان هلن ٿا.

## ڊائون لوڊ

- [تازو رليز](../../releases/latest)
- [رات وارو بلڊ](../../releases/tag/nightly): `main` جي هر تبديلي تي ٻيهر ٺهي ٿو.

`Sumi.zip` ڊائون لوڊ ڪري کوليو ۽ Sumi کي Applications ۾ منتقل ڪريو. هڪ بلڊ Apple silicon ۽ Intel ٻنهي Mac تي هلي ٿو.

Sumi تي Apple Developer ID جي صحيح ناهي، تنهنڪري macOS پهرين شروعات روڪي ٿو. سسٽم سيٽنگون › رازداري ۽ سيڪيورٽي ۾ وڃو ۽ پوءِ به کوليو تي ڪلڪ ڪريو، يا هلايو:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## گهرجون

macOS 14 يا پوءِ وارو. ٺاهڻ لاءِ Xcode 26 يا پوءِ وارو کپي (Swift 6.2).

## سورس مان ٺاهيو

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

فائل › کوليو… (⌘O) مان فولڊر منصوبي طور کوليو، يا ڪمانڊ لائين مان:

```sh
open -a Sumi path/to/project
```

## ڪيبورڊ شارٽ ڪٽ

| عمل | شارٽ ڪٽ |
|---|---|
| هر هنڌ ڳوليو | ⇧⇧ / ⇧⌘O |
| منصوبي جو ڏيک | ⌘1 |
| ٽرمينل | ⌥F12 |
| نئون ٽرمينل ٽيب | ⌘T |
| ٽرمينل ۽ منصوبي جون جايون مٽايو | ⌃⌘T |
| ٽرمينل وڏو ڪريو | ⇧⌘↩ |
| Markdown / HTML — اڳواٽ ڏيک کوليو يا لڪايو | ⇧⌘V |
| منصوبي جي ڏيک ۾ چونڊيو | ⌥⌘1 |
| اڳيون ٽيب / پويون ٽيب | ⇧⌘] / ⇧⌘[ |
| محفوظ ڪريو / سڀ محفوظ ڪريو | ⌘S / ⌥⌘S |

## حصو وٺڻ

غلطيءَ جون رپورٽون، سڌارا ۽ ترجما ڀليڪار آهن. [CONTRIBUTING.md](CONTRIBUTING.md) پڙهو.

## لائسنس

MIT. Sumi ۾ SwiftTerm (MIT)، cmark-gfm (BSD-2-Clause)، Prism (MIT) ۽ GitHub Linguist جي ٻولين جي فهرست (MIT) شامل آهن؛ ڏسو [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
