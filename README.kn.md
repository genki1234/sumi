# Sumi

AI ಕೋಡಿಂಗ್ ಏಜೆಂಟ್‌ಗಳೊಂದಿಗೆ ಕೆಲಸ ಮಾಡಲು ರೂಪಿಸಿದ ಹಗುರವಾದ macOS ಪಠ್ಯ ಸಂಪಾದಕ. ಮುಕ್ತ ಮೂಲ (MIT).

ಅಂತರ್ನಿರ್ಮಿತ ಟರ್ಮಿನಲ್‌ನಲ್ಲಿ ನಿಮ್ಮ ಏಜೆಂಟ್ ಚಲಾಯಿಸಿ, ಅದು ಬದಲಿಸುವ ಫೈಲ್‌ಗಳನ್ನು ಕ್ಲಿಕ್ ಮಾಡಿ ತೆರೆಯಿರಿ ಮತ್ತು ಅದು ಬರೆಯುವ Markdown ಅನ್ನು ವಿನ್ಯಾಸಗೊಳಿಸಿದ ಪುಟಗಳಾಗಿ ಓದಿ.

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

## ವೈಶಿಷ್ಟ್ಯಗಳು

- ಟರ್ಮಿನಲ್‌ನಲ್ಲಿನ ಫೈಲ್ ಮಾರ್ಗಗಳು ಲಿಂಕ್‌ಗಳಾಗಿವೆ. ಕೋಡಿಂಗ್ ಏಜೆಂಟ್ `⎿ M src/app.ts` ಅಥವಾ `src/app.ts:42:7` ಮುದ್ರಿಸಿದಾಗ ಮಾರ್ಗ ನೀಲಿಯಾಗುತ್ತದೆ; ಕ್ಲಿಕ್ ಮಾಡಿದರೆ ಫೈಲ್ ಆ ಸಾಲಿನಲ್ಲಿ ತೆರೆಯುತ್ತದೆ.
- ಎಡದಲ್ಲಿ ಪ್ರಾಜೆಕ್ಟ್ ಮರ, ಮಧ್ಯದಲ್ಲಿ ಸಂಪಾದಕ, ಕೆಳಗೆ ಟರ್ಮಿನಲ್.
- ಎಡದಲ್ಲಿ ಪೂರ್ಣ ಎತ್ತರದ ಟರ್ಮಿನಲ್ ಪಡೆಯಲು ಟರ್ಮಿನಲ್ ಮತ್ತು ಪ್ರಾಜೆಕ್ಟ್ ಮರದ ಸ್ಥಾನ ಬದಲಿಸಿ (⌃⌘T). ⇧⌘↩ ಮೂಲಕ ಟರ್ಮಿನಲ್ ಗರಿಷ್ಠಗೊಳಿಸಿ.
- ಟೈಪ್ ಮಾಡುವುದನ್ನು 500 ms ನಿಲ್ಲಿಸಿದ ಬಳಿಕ ಮತ್ತು ಮುಚ್ಚುವ ಮೊದಲು ಫೈಲ್‌ಗಳು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಉಳಿಯುತ್ತವೆ. ಹೊರಗಿನ ಬದಲಾವಣೆಗಳು ಅಥವಾ ಉಳಿಸುವ ವೈಫಲ್ಯದ ವೇಳೆ ನಿಮ್ಮ ತಿದ್ದುಪಡಿಗಳು ಟ್ಯಾಬ್‌ನಲ್ಲೇ ಇರುತ್ತವೆ ಮತ್ತು ಪ್ರತಿ ಉಳಿಸುವ ಆಯ್ಕೆ ಸಿಗುತ್ತದೆ.
- ಆದೇಶಗಳು ಚಾಲನೆಯಲ್ಲಿರುವ ಟರ್ಮಿನಲ್ ಮುಚ್ಚಲು ದೃಢೀಕರಣ ಬೇಕು; ಹಿನ್ನೆಲೆ ಕೆಲಸಗಳು ಮತ್ತು ಆ್ಯಪ್ ತೊರೆಯುವುದೂ ಇದರಲ್ಲಿ ಸೇರಿವೆ. ಫಲಕ ಮರೆಮಾಡಿದಾಗ ಅವಧಿಗಳು ಚಾಲನೆಯಲ್ಲೇ ಇರುತ್ತವೆ.
- ಟರ್ಮಿನಲ್‌ಗಳು ಪೂರ್ವನಿಯೋಜಿತವಾಗಿ Metal ಬಳಸುತ್ತವೆ; ವೀಕ್ಷಣೆ ಯಲ್ಲಿ GPU ರೆಂಡರಿಂಗ್ ಸ್ವಿಚ್ ಇದೆ. ⌘F ಮೂಲಕ ಔಟ್‌ಪುಟ್ ಹುಡುಕಿ; ಹೊಸ ಟ್ಯಾಬ್‌ಗಳು ಈಗಿನ ಕಾರ್ಯ ಡೈರೆಕ್ಟರಿಯನ್ನು ಪಡೆಯುತ್ತವೆ.
- Shift+Enter ಬಹುಸಾಲಿನ ಪ್ರಾಂಪ್ಟ್ ಇನ್‌ಪುಟ್ ಉಳಿಸುತ್ತದೆ. ಬಹುಸಾಲಿನ ಪಠ್ಯ, ಫೈಲ್‌ಗಳು ಮತ್ತು ಚಿತ್ರಗಳನ್ನು ಅಂಟಿಸಬಹುದು; ಚಿತ್ರಗಳನ್ನು ತಾತ್ಕಾಲಿಕ PNG ಗಳಾಗಿ ಇಟ್ಟು ಉದ್ಧರಣಚಿಹ್ನೆಗಳಲ್ಲಿರುವ ಮಾರ್ಗಗಳಾಗಿ ಸೇರಿಸಲಾಗುತ್ತದೆ.
- ಪಠ್ಯದ ಪಕ್ಕದಲ್ಲಿನ Markdown ಮತ್ತು HTML ಮುನ್ನೋಟ ಟೈಪ್ ಮಾಡುವಾಗ ನವೀಕರಿಸುತ್ತದೆ (⇧⌘V ಅಥವಾ ಟ್ಯಾಬ್‌ನ ಮೇಲಿನ ಬಲಭಾಗದ ಬಟನ್‌ಗಳು). Markdown ಅನ್ನು GitHub ಬಳಸುವ cmark-gfm ಮೂಲಕ ತೋರಿಸಲಾಗುತ್ತದೆ: ಕೋಷ್ಟಕಗಳು, ಕಾರ್ಯಪಟ್ಟಿಗಳು, ಅಡ್ಡಗೆರೆ ಪಠ್ಯ ಮತ್ತು ಸ್ವಯಂಚಾಲಿತ ಲಿಂಕ್‌ಗಳು.
- ಎಲ್ಲೆಡೆ ಹುಡುಕಿ: ಪ್ರಾಜೆಕ್ಟ್‌ನ ಯಾವುದೇ ಫೈಲ್ ಅನ್ನು ಹೆಸರಿನ ಅಂದಾಜು ಹೊಂದಾಣಿಕೆಯಿಂದ ಹುಡುಕಲು Shift ಎರಡು ಬಾರಿ ಒತ್ತಿ.
- ಭಾಷೆ ಮತ್ತು ಫೈಲ್ ಸ್ವರೂಪಗಳ 915 ಹೆಸರುಗಳ ಪಟ್ಟಿಯಿಂದ ಮೂಲ ಫೈಲ್‌ಗಳನ್ನು ಗುರುತಿಸುತ್ತದೆ; ಫೈಲ್ ಹೆಸರುಗಳು, ಸಂಯುಕ್ತ ವಿಸ್ತರಣೆಗಳು ಮತ್ತು ಸ್ಕ್ರಿಪ್ಟ್ ಇಂಟರ್‌ಪ್ರಿಟರ್‌ಗಳೂ ಸೇರಿವೆ. ಎಲ್ಲಾ 297 Prism ಘಟಕಗಳು (291 ಸ್ವತಂತ್ರ ವ್ಯಾಕರಣಗಳು ಮತ್ತು 6 ಸಹಾಯಕಗಳು) ಒಳಗೊಂಡಿದ್ದು ಅಗತ್ಯವಿದ್ದಾಗ ಲೋಡ್ ಆಗುತ್ತವೆ. ವ್ಯಾಕರಣವಿಲ್ಲದ ಸ್ವರೂಪಗಳು ಮೂಲ ಪಠ್ಯ ಹೈಲೈಟಿಂಗ್ ಬಳಸುತ್ತವೆ.
- ಇಂಟರ್‌ಫೇಸ್‌ನಲ್ಲಿ 108 ಭಾಷಾ ಆಯ್ಕೆಗಳಿವೆ. ತಕ್ಷಣ ಬದಲಿಸಲು ಅಥವಾ ಸಿಸ್ಟಂ ಭಾಷೆಯನ್ನು ಅನುಸರಿಸಲು ಭಾಷೆ ಮೆನು ಬಳಸಿ. ಆಯ್ಕೆ ನೆನಪಿರುತ್ತದೆ; ತೆರೆದ ಫೈಲ್‌ಗಳು, ಉಳಿಸದ ತಿದ್ದುಪಡಿಗಳು ಮತ್ತು ಟರ್ಮಿನಲ್ ಅವಧಿಗಳು ತೆರೆದಿರುತ್ತವೆ. ಅರೇಬಿಕ್, ಹೀಬ್ರೂ ಮತ್ತು ಇತರ ಬಲದಿಂದ ಎಡಕ್ಕೆ ಇಂಟರ್‌ಫೇಸ್‌ಗಳಲ್ಲಿ ಕೋಡ್, ಮುನ್ನೋಟ ಮತ್ತು ಟರ್ಮಿನಲ್ ಔಟ್‌ಪುಟ್ ಎಡದಿಂದ ಬಲಕ್ಕೆ ಇರುತ್ತವೆ. ಸಂಪಾದಕ ಮತ್ತು ಟರ್ಮಿನಲ್ ಸಂದರ್ಭ ಗಮನಿಸಿ ಇಂಗ್ಲಿಷ್ ಪಠ್ಯದಿಂದ ನೇರವಾಗಿ ಅನುವಾದಗಳನ್ನು ಬರೆಯಲಾಗಿದೆ. ಸಿಸ್ಟಂ ಫಲಕಗಳು macOS ಭಾಷಾ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಅನುಸರಿಸುತ್ತವೆ. ಈ ಪಟ್ಟಿ ಪ್ರತಿಯೊಂದು ಮಾನವ ಅಥವಾ ಪ್ರೋಗ್ರಾಮಿಂಗ್ ಭಾಷೆಯನ್ನು ಒಳಗೊಳ್ಳುವುದಿಲ್ಲ. [Sumi ಅನುವಾದ](CONTRIBUTING.md#translating-sumi) ನೋಡಿ.
- ಬೆಳಕು ಮತ್ತು ಕತ್ತಲೆ ನೋಟ ಸಿಸ್ಟಂ ಅನುಸರಿಸುತ್ತದೆ.

## ಡೌನ್‌ಲೋಡ್

- [ಬಿಡುಗಡೆಗಳು](../../releases)
- [ರಾತ್ರಿಯ ಬಿಲ್ಡ್](../../releases/tag/nightly): `main` ನಲ್ಲಿನ ಪ್ರತಿ ಬದಲಾವಣೆಗೆ ಮತ್ತೆ ನಿರ್ಮಿಸಲಾಗುತ್ತದೆ.

`Sumi.zip` ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ, ಹೊರತೆಗೆದು Sumi ಅನ್ನು Applications ಗೆ ಸರಿಸಿ. ಒಂದೇ ಬಿಲ್ಡ್ Apple silicon ಮತ್ತು Intel Mac ಎರಡರಲ್ಲೂ ಚಲಿಸುತ್ತದೆ.

Sumi ಗೆ Apple Developer ID ಸಹಿ ಇಲ್ಲದ ಕಾರಣ macOS ಮೊದಲ ಚಾಲನೆಯನ್ನು ತಡೆಯುತ್ತದೆ. ಸಿಸ್ಟಂ ಸೆಟ್ಟಿಂಗ್‌ಗಳು › ಗೌಪ್ಯತೆ ಮತ್ತು ಭದ್ರತೆ ತೆರೆದು ಹೇಗಾದರೂ ತೆರೆಯಿರಿ ಆಯ್ಕೆ ಕ್ಲಿಕ್ ಮಾಡಿ, ಅಥವಾ ಇದನ್ನು ಚಲಾಯಿಸಿ:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## ಅಗತ್ಯಗಳು

macOS 14 ಅಥವಾ ಹೊಸದು. ನಿರ್ಮಿಸಲು Xcode 26 ಅಥವಾ ಹೊಸದು (Swift 6.2) ಬೇಕು.

## ಮೂಲದಿಂದ ನಿರ್ಮಿಸಿ

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ಫೈಲ್ › ತೆರೆಯಿರಿ… (⌘O) ಮೂಲಕ ಅಥವಾ ಆದೇಶ ಸಾಲಿನಿಂದ ಫೋಲ್ಡರ್ ಅನ್ನು ಪ್ರಾಜೆಕ್ಟ್ ಆಗಿ ತೆರೆಯಿರಿ:

```sh
open -a Sumi path/to/project
```

## ಕೀಬೋರ್ಡ್ ಶಾರ್ಟ್‌ಕಟ್‌ಗಳು

| ಕ್ರಿಯೆ | ಶಾರ್ಟ್‌ಕಟ್ |
|---|---|
| ಎಲ್ಲೆಡೆ ಹುಡುಕಿ | ⇧⇧ ಅಥವಾ ⇧⌘O |
| ಪ್ರಾಜೆಕ್ಟ್ ಮರ | ⌘1 |
| ಟರ್ಮಿನಲ್ | ⌥F12 |
| ಹೊಸ ಟರ್ಮಿನಲ್ ಟ್ಯಾಬ್ | ⌘T |
| ಟರ್ಮಿನಲ್ ಮತ್ತು ಪ್ರಾಜೆಕ್ಟ್ ಸ್ಥಾನ ಬದಲಿಸಿ | ⌃⌘T |
| ಟರ್ಮಿನಲ್ ಗರಿಷ್ಠಗೊಳಿಸಿ | ⇧⌘↩ |
| Markdown / HTML ಮುನ್ನೋಟ | ⇧⌘V |
| ಪ್ರಾಜೆಕ್ಟ್ ಮರದಲ್ಲಿ ಆಯ್ಕೆಮಾಡಿ | ⌥⌘1 |
| ಮುಂದಿನ ಟ್ಯಾಬ್ / ಹಿಂದಿನ ಟ್ಯಾಬ್ | ⇧⌘] / ⇧⌘[ |
| ಉಳಿಸಿ / ಎಲ್ಲವನ್ನೂ ಉಳಿಸಿ | ⌘S / ⌥⌘S |

## ಕೊಡುಗೆ

ದೋಷ ವರದಿಗಳು, ತಿದ್ದುಪಡಿಗಳು ಮತ್ತು ಅನುವಾದಗಳಿಗೆ ಸ್ವಾಗತ. [CONTRIBUTING.md](CONTRIBUTING.md) ಓದಿ.

## ಪರವಾನಗಿ

MIT. Sumi ಯಲ್ಲಿ SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) ಮತ್ತು GitHub Linguist ಭಾಷಾ ಪಟ್ಟಿ (MIT) ಇವೆ; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) ನೋಡಿ.
