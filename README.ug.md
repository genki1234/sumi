# Sumi

AI كود يېزىش ۋاكالەتچىلىرى بىلەن بىللە ئىشلەشكە لايىھەلەنگەن يېنىك macOS تېكىست تەھرىرلىگۈچى. ئوچۇق مەنبەلىك (MIT).

ۋاكالەتچىڭىزنى ئىچكى تېرمىنالدا ئىجرا قىلىڭ، ئۇ ئۆزگەرتكەن ھۆججەتلەرنى چېكىپ ئېچىڭ، ئۇ يازغان Markdown نى بېزەلگەن بەت سۈپىتىدە ئوقۇڭ.

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

## ئىقتىدارلار

- تېرمىنالدىكى ھۆججەت يوللىرى ئۇلانما بولىدۇ. ۋاكالەتچى `⎿ M src/app.ts` ياكى `src/app.ts:42:7` نى چىقارسا، يول كۆك بولىدۇ؛ چېكىش ھۆججەتنى شۇ قۇردا ئاچىدۇ.
- تۈر كۆرۈنۈشى سولدا، تەھرىرلىگۈچ ئوتتۇرىدا، تېرمىنال تۆۋەندە.
- تېرمىنال بىلەن تۈر كۆرۈنۈشىنىڭ ئورنىنى ئالماشتۇرۇپ (⌃⌘T)، تېرمىنالنى سولدا تولۇق ئېگىزلىكتە قويالايسىز. ⇧⌘↩ بىلەن تېرمىنالنى چوڭايتىڭ.
- يېزىشتا 500 ms توختىغاندىن كېيىن ۋە تاقاشتىن بۇرۇن ھۆججەتلەر ئاپتوماتىك ساقلىنىدۇ. سىرتقى ئۆزگىرىش ياكى ساقلاش مەغلۇبىيىتى بولسا، تەھرىرلىرىڭىز بەتكۈچتە قالىدۇ، كۆپەيتىلمە ساقلاش تاللانمىسى بار.
- بۇيرۇق ئىجرا بولۇۋاتقان تېرمىنالنى تاقاش جەزملەشنى سورايدۇ؛ ئارقا سۇپا ۋەزىپىلىرى ۋە پىروگراممىدىن چېكىنىشمۇ بۇنىڭ ئىچىدە. تاختىنى يوشۇرۇش سۆھبەتلەرنى توختاتمايدۇ.
- تېرمىناللار سۈكۈتتە Metal ئىشلىتىدۇ؛ GPU ئارقىلىق سىزىش ئالماشتۇرغۇچى كۆرۈنۈش تىزىملىكىدە. چىقىرىشنى ⌘F بىلەن ئىزدەڭ؛ يېڭى بەتكۈچلەر نۆۋەتتىكى خىزمەت قىسقۇچىغا ۋارىسلىق قىلىدۇ.
- Shift+Enter كۆپ قۇرلۇق سوئال كىرگۈزۈشنى ساقلايدۇ. كۆپ قۇرلۇق تېكىست، ھۆججەت ۋە رەسىملەرنى چاپلىغىلى بولىدۇ؛ رەسىملەر ۋاقىتلىق PNG بولۇپ ساقلىنىپ، يوللىرى تىرناق ئىچىدە كىرگۈزۈلىدۇ.
- Markdown ۋە HTML ئالدىن كۆرۈشى تېكىست يېنىدا بولۇپ، يازغانسېرى يېڭىلىنىدۇ (⇧⌘V ياكى بەتكۈچنىڭ ئوڭ ئۈستىدىكى كۇنۇپكىلار). Markdown GitHub ئىشلىتىدىغان cmark-gfm بىلەن كۆرسىتىلىدۇ: جەدۋەل، ۋەزىپە تىزىملىكى، ئۈستى سىزىلغان تېكىست ۋە ئاپتوماتىك ئۇلانما.
- ھەممە يەردىن ئىزدەش: Shift نى ئىككى قېتىم بېسىپ تۈردىكى خالىغان ھۆججەتنى تەخمىنىي نام ماسلىشىشى بىلەن تېپىڭ.
- مەنبە ھۆججەتلىرىنى 915 تىل ۋە ھۆججەت فورمات نامى بار مۇندەرىجە بىلەن تونۇيدۇ؛ ھۆججەت ناملىرى، بىرىكمە كېڭەيتىلمىلەر ۋە سىكرىپت ئىزاھلىغۇچىلىرىمۇ بار. Prism نىڭ بارلىق 297 بۆلىكى (291 مۇستەقىل گىرامماتىكا ۋە 6 ياردەمچى) قوشۇلغان بولۇپ، ئېھتىياجغا قاراپ يۈكلىنىدۇ. گىرامماتىكىسى يوق فورماتلار ئاساسىي تېكىست رەڭلەشنى ئىشلىتىدۇ.
- كۆرۈنمە يۈزىدە 108 تىل تاللىشى بار. تىل تىزىملىكىدىن دەرھال ئالماشتۇرۇڭ ياكى سىستېما تىلىغا ئەگىشىڭ. تاللاش ئەستە ساقلىنىدۇ؛ ئېچىلغان ھۆججەت، ساقلانمىغان تەھرىر ۋە تېرمىنال سۆھبەتلىرى ئوچۇق قالىدۇ. ئەرەبچە، ئىبرانىيچە ۋە باشقا ئوڭدىن سولغا كۆرۈنمە يۈزلەردە كود، ئالدىن كۆرۈش ۋە تېرمىنال چىقىرىشى سولدىن ئوڭغا قالىدۇ. تەرجىمىلەر تەھرىرلىگۈچ ۋە تېرمىنال مۇھىتىنى نەزەردە تۇتۇپ ئىنگلىزچە تېكىستتىن بىۋاسىتە يېزىلغان. سىستېما تاختىلىرى macOS تىل تەڭشىكىگە ئەگىشىدۇ. مۇندەرىجە بارلىق تەبىئىي ياكى پىروگرامما تىللىرىنى قاپلىمايدۇ. [Sumi نى تەرجىمە قىلىش](CONTRIBUTING.md#translating-sumi) نى كۆرۈڭ.
- يورۇق ۋە قاراڭغۇ كۆرۈنۈش سىستېمىغا ئەگىشىدۇ.

## چۈشۈرۈش

- [ئەڭ يېڭى نەشر](../../releases/latest)
- [كېچىلىك قۇرۇلما](../../releases/tag/nightly): `main` دىكى ھەر ئۆزگىرىشتە قايتا قۇرۇلىدۇ.

`Sumi.zip` نى چۈشۈرۈپ يېشىڭ ۋە Sumi نى Applications غا يۆتكەڭ. بىر قۇرۇلما Apple silicon ۋە Intel Mac نىڭ ھەر ئىككىسىدە ئىشلەيدۇ.

Sumi غا Apple Developer ID بىلەن ئىمزا قويۇلمىغان، شۇڭا macOS تۇنجى قوزغىتىشنى توسىدۇ. سىستېما تەڭشىكى › مەخپىيەتلىك ۋە بىخەتەرلىكنى ئېچىپ، يەنىلا ئېچىشنى چېكىڭ ياكى ئىجرا قىلىڭ:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## تەلەپلەر

macOS 14 ياكى يېڭىراق. قۇرۇشقا Xcode 26 ياكى يېڭىراق كېرەك (Swift 6.2).

## مەنبەدىن قۇرۇش

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ھۆججەت › ئېچىش… (⌘O) ئارقىلىق قىسقۇچنى تۈر سۈپىتىدە ياكى بۇيرۇق قۇرىدىن ئېچىڭ:

```sh
open -a Sumi path/to/project
```

## كۇنۇپكا تېزلەتمىلىرى

| مەشغۇلات | تېزلەتمە |
|---|---|
| ھەممە يەردىن ئىزدەش | ⇧⇧ / ⇧⌘O |
| تۈر كۆرۈنۈشى | ⌘1 |
| تېرمىنال | ⌥F12 |
| يېڭى تېرمىنال بەتكۈچى | ⌘T |
| تېرمىنال بىلەن تۈرنىڭ ئورنىنى ئالماشتۇرۇش | ⌃⌘T |
| تېرمىنالنى چوڭايتىش | ⇧⌘↩ |
| Markdown / HTML — ئالدىن كۆرۈشنى كۆرسىتىش ياكى يوشۇرۇش | ⇧⌘V |
| تۈر كۆرۈنۈشىدە تاللاش | ⌥⌘1 |
| كېيىنكى بەتكۈچ / ئالدىنقى بەتكۈچ | ⇧⌘] / ⇧⌘[ |
| ساقلاش / ھەممىنى ساقلاش | ⌘S / ⌥⌘S |

## تۆھپە قوشۇش

خاتالىق دوكلاتى، تۈزىتىش ۋە تەرجىمىلەر قارشى ئېلىنىدۇ. [CONTRIBUTING.md](CONTRIBUTING.md) نى ئوقۇڭ.

## ئىجازەتنامە

MIT. Sumi تەركىبىدە SwiftTerm (MIT)، cmark-gfm (BSD-2-Clause)، Prism (MIT) ۋە GitHub Linguist تىل مۇندەرىجىسى (MIT) بار؛ [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) نى كۆرۈڭ.
