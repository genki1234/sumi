# Sumi

macOS کا ہلکا متنی مدیر، جو AI کوڈنگ ایجنٹوں کے ساتھ کام کرنے کے لیے بنایا گیا ہے۔ کھلا ماخذ (MIT)۔

اپنے ایجنٹ کو اندرونی ٹرمینل میں چلائیں، اس کی بدلی ہوئی فائلیں کلک کر کے کھولیں، اور اس کا لکھا Markdown ترتیب یافتہ صفحات کی صورت میں پڑھیں۔

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

## خصوصیات

- ٹرمینل میں فائلوں کے راستے روابط ہیں۔ جب ایجنٹ `⎿ M src/app.ts` یا `src/app.ts:42:7` دکھاتا ہے تو راستہ نیلا ہو جاتا ہے؛ کلک کرنے پر فائل اسی سطر پر کھلتی ہے۔
- منصوبے کا منظر بائیں، مدیر درمیان، ٹرمینل نیچے۔
- ٹرمینل اور منصوبے کے منظر کی جگہ بدلیں (⌃⌘T) تاکہ ٹرمینل بائیں پوری اونچائی میں ہو۔ ⇧⌘↩ سے ٹرمینل بڑا کریں۔
- ٹائپنگ میں 500 ms کے وقفے کے بعد اور بند کرنے سے پہلے فائلیں خود محفوظ ہوتی ہیں۔ بیرونی تبدیلی یا محفوظ کرنے میں ناکامی پر آپ کی ترامیم ٹیب میں رہتی ہیں، اور ایک نقل محفوظ کی جا سکتی ہے۔
- چلتے حکموں والا ٹرمینل بند کرنے پر تصدیق مانگی جاتی ہے، جس میں پس منظر کے کام اور ایپ سے نکلنا بھی شامل ہے۔ پینل چھپانے سے سیشن چلتے رہتے ہیں۔
- ٹرمینل طے شدہ طور پر Metal استعمال کرتے ہیں؛ GPU سے منظر کشی کا سوئچ منظر مینو میں ہے۔ ⌘F سے آؤٹ پٹ تلاش کریں؛ نئے ٹیب موجودہ کام کی ڈائریکٹری حاصل کرتے ہیں۔
- Shift+Enter کئی سطروں والے پرامپٹ کا اندراج برقرار رکھتا ہے۔ کئی سطروں کا متن، فائلیں اور تصاویر چسپاں کی جا سکتی ہیں؛ تصاویر عارضی PNG کے طور پر رکھی جاتی ہیں اور ان کے راستے اقتباسی نشانوں میں داخل ہوتے ہیں۔
- متن کے ساتھ Markdown اور HTML کا پیش منظر ٹائپ کرتے وقت تازہ ہوتا ہے (⇧⌘V یا ٹیب کے اوپر دائیں بٹن)۔ Markdown کے لیے GitHub والا cmark-gfm استعمال ہوتا ہے: جدولیں، کاموں کی فہرستیں، خط کشیدہ متن اور خودکار روابط۔
- ہر جگہ تلاش کریں: Shift دو بار دبا کر منصوبے کی کوئی بھی فائل نام کی تقریبی مطابقت سے تلاش کریں۔
- 915 زبانوں اور فائل فارمیٹ ناموں کے کیٹلاگ سے سورس فائلیں پہچانتا ہے؛ اس میں فائل نام، مرکب ایکسٹینشن اور اسکرپٹ انٹرپریٹر شامل ہیں۔ Prism کے تمام 297 اجزا (291 الگ گرامر اور 6 معاون) شامل ہیں اور حسبِ ضرورت لوڈ ہوتے ہیں۔ بغیر گرامر فارمیٹ بنیادی متنی رنگ بندی استعمال کرتے ہیں۔
- انٹرفیس میں 108 زبانوں کا انتخاب ہے۔ زبان مینو سے فوراً بدلیں یا سسٹم کی زبان اپنائیں۔ انتخاب یاد رہتا ہے؛ کھلی فائلیں، غیر محفوظ ترامیم اور ٹرمینل سیشن کھلے رہتے ہیں۔ عربی، عبرانی اور دوسرے دائیں سے بائیں انٹرفیس میں بھی کوڈ، پیش منظر اور ٹرمینل آؤٹ پٹ بائیں سے دائیں رہتے ہیں۔ ترجمے انگریزی عبارتوں سے براہ راست، مدیر اور ٹرمینل کے سیاق کے مطابق لکھے گئے ہیں۔ سسٹم پینل macOS کی زبان کی ترتیبات اپناتے ہیں۔ کیٹلاگ ہر فطری یا پروگرامنگ زبان کا احاطہ نہیں کرتا۔ [Sumi کا ترجمہ](CONTRIBUTING.md#translating-sumi) دیکھیں۔
- روشن اور تاریک وضع سسٹم کے مطابق ہوتی ہیں۔

## ڈاؤن لوڈ

- [تازہ ترین اجرا](../../releases/latest)
- [رات کا بلڈ](../../releases/tag/nightly): `main` میں ہر تبدیلی پر دوبارہ بنتا ہے۔

`Sumi.zip` ڈاؤن لوڈ کریں، کھولیں اور Sumi کو Applications میں منتقل کریں۔ ایک ہی بلڈ Apple silicon اور Intel Mac دونوں پر چلتا ہے۔

Sumi پر Apple Developer ID کے دستخط نہیں، اس لیے macOS پہلی بار کھولنا روکتا ہے۔ سسٹم ترتیبات › رازداری اور سلامتی میں جائیں اور پھر بھی کھولیں دبائیں، یا چلائیں:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## تقاضے

macOS 14 یا نیا۔ بنانے کے لیے Xcode 26 یا نیا درکار ہے (Swift 6.2)۔

## ماخذ سے بنائیں

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

فائل › کھولیں… (⌘O) سے فولڈر بطور منصوبہ کھولیں، یا کمانڈ لائن سے:

```sh
open -a Sumi path/to/project
```

## کی بورڈ شارٹ کٹ

| عمل | شارٹ کٹ |
|---|---|
| ہر جگہ تلاش کریں | ⇧⇧ / ⇧⌘O |
| منصوبے کا منظر | ⌘1 |
| ٹرمینل | ⌥F12 |
| نیا ٹرمینل ٹیب | ⌘T |
| ٹرمینل اور منصوبے کی جگہیں بدلیں | ⌃⌘T |
| ٹرمینل بڑا کریں | ⇧⌘↩ |
| Markdown / HTML — پیش منظر دکھائیں یا چھپائیں | ⇧⌘V |
| منصوبے کے منظر میں منتخب کریں | ⌥⌘1 |
| اگلا ٹیب / پچھلا ٹیب | ⇧⌘] / ⇧⌘[ |
| محفوظ کریں / سب محفوظ کریں | ⌘S / ⌥⌘S |

## تعاون

خرابیوں کی رپورٹیں، اصلاحات اور ترجمے خوش آمدید ہیں۔ [CONTRIBUTING.md](CONTRIBUTING.md) پڑھیں۔

## لائسنس

MIT۔ Sumi میں SwiftTerm (MIT)، cmark-gfm (BSD-2-Clause)، Prism (MIT) اور GitHub Linguist کا زبانوں کا کیٹلاگ (MIT) شامل ہیں؛ [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) دیکھیں۔
