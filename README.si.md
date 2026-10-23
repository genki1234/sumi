# Sumi

AI කේත ලියන නියෝජිතයන් සමඟ වැඩ කිරීමට තැනූ සැහැල්ලු macOS පෙළ සංස්කාරකයකි. විවෘත මූලාශ්‍රය (MIT).

ඇතුළත් ටර්මිනලයේ ඔබේ නියෝජිතයා ධාවනය කරන්න, එය වෙනස් කරන ගොනු ක්ලික් කර විවෘත කරන්න, එය ලියන Markdown සැකසූ පිටු ලෙස කියවන්න.

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

## විශේෂාංග

- ටර්මිනලයේ ගොනු මාර්ග සබැඳි වේ. නියෝජිතයා `⎿ M src/app.ts` හෝ `src/app.ts:42:7` පෙන්වූ විට මාර්ගය නිල් වේ; ක්ලික් කිරීමෙන් එම පේළියේ ගොනුව විවෘත වේ.
- ව්‍යාපෘති දසුන වමේ, සංස්කාරකය මැද, ටර්මිනලය පහළින්.
- ටර්මිනලය වමේ සම්පූර්ණ උසින් තැබීමට ටර්මිනලය සහ ව්‍යාපෘති දසුන මාරු කරන්න (⌃⌘T). ⇧⌘↩ මගින් ටර්මිනලය විශාල කරන්න.
- ටයිප් කිරීමේ 500 ms විරාමයකින් පසු සහ වැසීමට පෙර ගොනු ස්වයංක්‍රීයව සුරැකේ. බාහිර වෙනස්කම් හෝ සුරැකීමේ අසාර්ථකතා ඇති විට සංස්කරණ ටැබයේ රැඳෙන අතර පිටපතක් සුරැකිය හැක.
- විධාන ක්‍රියාත්මක වන ටර්මිනලයක් වැසීමට තහවුරු කිරීම අවශ්‍යය; පසුබිම් කාර්ය සහ යෙදුමෙන් පිටවීමද මෙයට අයත් වේ. පැනලය සැඟවුවත් සැසි දිගටම ක්‍රියාත්මක වේ.
- ටර්මිනල් පෙරනිමියෙන් Metal භාවිත කරයි; GPU විදැහුම මාරු කිරීම දසුන මෙනුවේ ඇත. ⌘F මගින් ප්‍රතිදානය සොයන්න; නව ටැබ් වත්මන් වැඩ කරන නාමාවලිය උරුම කරගනී.
- Shift+Enter බහුපේළි විමසුම් ඇතුළත් කිරීම රකී. බහුපේළි පෙළ, ගොනු සහ රූප ඇලවිය හැක; රූප තාවකාලික PNG ලෙස තබා ඒවායේ මාර්ග උද්ධෘත ලකුණු තුළ ඇතුළත් කෙරේ.
- Markdown හා HTML පෙරදසුන පෙළ අසල ඇති අතර ටයිප් කරන විට යාවත්කාලීන වේ (⇧⌘V හෝ ටැබයේ ඉහළ දකුණේ බොත්තම්). Markdown සඳහා GitHub භාවිත කරන cmark-gfm යොදාගනී: වගු, කාර්ය ලැයිස්තු, ඉරි ගැසූ පෙළ සහ ස්වයංක්‍රීය සබැඳි.
- සෑම තැනම සොයන්න: Shift දෙවරක් ඔබා ව්‍යාපෘතියේ ඕනෑම ගොනුවක් ආසන්න නාම ගැළපීමෙන් සොයන්න.
- ගොනු නාම, සංයුක්ත දිගු හා ස්ක්‍රිප්ට් අර්ථකථක ඇතුළත් භාෂා සහ ගොනු ආකෘති නාම 915ක නාමාවලියකින් මූලාශ්‍ර ගොනු හඳුනාගනී. Prism සංරචක 297ම (ස්වාධීන ව්‍යාකරණ 291ක් හා සහායක 6ක්) ඇතුළත් කර අවශ්‍ය විට පූරණය කෙරේ. ව්‍යාකරණයක් නැති ආකෘති සඳහා මූලික පෙළ උද්දීපනය යෙදේ.
- අතුරුමුහුණතට භාෂා විකල්ප 108ක් ඇත. භාෂාව මෙනුවෙන් වහා මාරු කරන්න හෝ පද්ධති භාෂාව අනුගමනය කරන්න. තේරීම මතක තබාගනී; විවෘත ගොනු, නොසුරැකි සංස්කරණ හා ටර්මිනල් සැසි විවෘතව පවතී. අරාබි, හෙබ්‍රෙව් වැනි දකුණේ සිට වමට අතුරුමුහුණත්වලද කේතය, පෙරදසුන් හා ටර්මිනල් ප්‍රතිදානය වමේ සිට දකුණට පවතී. සංස්කාරක හා ටර්මිනල් සන්දර්භය සලකා ඉංග්‍රීසි පෙළෙන් සෘජුව පරිවර්තන ලියා ඇත. පද්ධති පැනල macOS භාෂා සැකසුම් අනුගමනය කරයි. සියලු ස්වාභාවික හෝ ක්‍රමලේඛන භාෂා නාමාවලියට අයත් නොවේ. [Sumi පරිවර්තනය](CONTRIBUTING.md#translating-sumi) බලන්න.
- ආලෝක හා අඳුරු පෙනුම පද්ධතිය අනුගමනය කරයි.

## බාගත කිරීම

- [නවතම නිකුතුව](../../releases/latest)
- [රාත්‍රී ගොඩනැගීම](../../releases/tag/nightly): `main` හි සෑම වෙනසකදීම යළි ගොඩනැගේ.

`Sumi.zip` බාගත කර දිගහැර Sumi යෙදුම් ෆෝල්ඩරයට ගෙනයන්න. එකම ගොඩනැගීම Apple silicon හා Intel Mac දෙකෙහිම ක්‍රියා කරයි.

Sumi සඳහා Apple Developer ID අත්සනක් නැති නිසා macOS පළමු ධාවනය අවහිර කරයි. පද්ධති සැකසුම් › පෞද්ගලිකත්වය හා ආරක්ෂාව විවෘත කර කෙසේ හෝ විවෘත කරන්න ක්ලික් කරන්න, නැතිනම් මෙය ධාවනය කරන්න:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## අවශ්‍යතා

macOS 14 හෝ පසු අනුවාදයක්. ගොඩනැගීමට Xcode 26 හෝ පසු අනුවාදයක් අවශ්‍යය (Swift 6.2).

## මූලාශ්‍රයෙන් ගොඩනැගීම

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ගොනුව › විවෘත කරන්න… (⌘O) හරහා ෆෝල්ඩරයක් ව්‍යාපෘතියක් ලෙස විවෘත කරන්න, නැතිනම් විධාන පේළියෙන්:

```sh
open -a Sumi path/to/project
```

## යතුරුපුවරු කෙටිමං

| ක්‍රියාව | කෙටිමඟ |
|---|---|
| සෑම තැනම සොයන්න | ⇧⇧ / ⇧⌘O |
| ව්‍යාපෘති දසුන | ⌘1 |
| ටර්මිනලය | ⌥F12 |
| නව ටර්මිනල් ටැබයක් | ⌘T |
| ටර්මිනලය සහ ව්‍යාපෘතිය මාරු කරන්න | ⌃⌘T |
| ටර්මිනලය විශාල කරන්න | ⇧⌘↩ |
| Markdown / HTML — පෙරදසුන මාරු කරන්න | ⇧⌘V |
| ව්‍යාපෘති දසුනේ තෝරන්න | ⌥⌘1 |
| ඊළඟ ටැබය / පෙර ටැබය | ⇧⌘] / ⇧⌘[ |
| සුරකින්න / සියල්ල සුරකින්න | ⌘S / ⌥⌘S |

## දායකත්වය

දෝෂ වාර්තා, නිවැරදි කිරීම් සහ පරිවර්තන පිළිගනු ලැබේ. [CONTRIBUTING.md](CONTRIBUTING.md) කියවන්න.

## බලපත්‍රය

MIT. Sumi තුළ SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) හා GitHub Linguist භාෂා නාමාවලිය (MIT) ඇත; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) බලන්න.
