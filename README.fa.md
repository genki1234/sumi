# Sumi

ویرایشگر متنی سبک برای macOS که برای کار در کنار عامل‌های برنامه‌نویسی هوش مصنوعی ساخته شده است. متن‌باز با مجوز MIT.

عامل خود را در ترمینال داخلی اجرا کنید، با کلیک فایل‌هایی را که روی آن‌ها کار می‌کند باز کنید و Markdown نوشته‌شده توسط آن را به‌شکل صفحه‌های قالب‌بندی‌شده بخوانید.

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

## امکانات

- مسیر فایل‌ها در ترمینال، پیوند هستند. وقتی عامل برنامه‌نویسی `⎿ M src/app.ts` یا `src/app.ts:42:7` را چاپ کند، مسیر آبی می‌شود و کلیک روی آن فایل را در همان سطر باز می‌کند.
- نمای پروژه در چپ، ویرایشگر در وسط و ترمینال در پایین قرار دارد.
- جای ترمینال و نمای پروژه را عوض کنید (⌃⌘T) تا ترمینال با ارتفاع کامل در چپ قرار گیرد. با ⇧⌘↩ ترمینال را بزرگ کنید.
- فایل‌ها پس از مکث 500 ms در تایپ و پیش از بسته‌شدن، خودکار ذخیره می‌شوند. هنگام تغییر بیرونی یا خطای ذخیره، ویرایش‌های شما در زبانه باقی می‌مانند و امکان ذخیرهٔ یک نسخهٔ جدا وجود دارد.
- بستن ترمینالی که فرمان‌های در حال اجرا دارد به تأیید نیاز دارد؛ این شامل کارهای پس‌زمینه و خروج از برنامه نیز می‌شود. با پنهان کردن پنل، نشست‌ها به کار ادامه می‌دهند.
- ترمینال‌ها به‌طور پیش‌فرض از Metal استفاده می‌کنند؛ کلید «رسم با GPU» در منوی نما قرار دارد. با ⌘F در خروجی جستجو کنید؛ زبانه‌های جدید پوشهٔ کاری فعلی را به ارث می‌برند.
- Shift+Enter امکان ورود درخواست‌های چندسطری را حفظ می‌کند. چسباندن متن چندسطری، فایل و تصویر پشتیبانی می‌شود؛ تصاویر به‌صورت PNG موقت نگه داشته می‌شوند و مسیرشان داخل علامت نقل‌قول درج می‌شود.
- پیش‌نمایش Markdown و HTML کنار متن قرار دارد و هنگام تایپ به‌روز می‌شود (⇧⌘V یا دکمه‌های بالای سمت راست زبانه).
  Markdown با cmark-gfm نمایش داده می‌شود، همان موتوری که GitHub استفاده می‌کند: جدول‌ها، فهرست کارها، متن خط‌خورده و پیوندهای خودکار.
- جستجو در همه‌جا: برای یافتن هر فایل پروژه با تطبیق تقریبی نام، Shift را دو بار فشار دهید.
- فایل‌های منبع با فهرستی از 915 نام زبان و قالب فایل شناسایی می‌شوند؛ شامل نام فایل، پسوندهای ترکیبی و مفسرهای اسکریپت. هر 297 مؤلفهٔ Prism (291 دستور زبان مستقل و 6 مؤلفهٔ کمکی) همراه برنامه است و هنگام نیاز بارگذاری می‌شود. قالب‌های بدون دستور زبان از برجسته‌سازی سادهٔ متن استفاده می‌کنند.
- رابط کاربری 108 گزینهٔ زبان دارد. از منوی زبان فوراً تغییر دهید یا زبان سیستم را دنبال کنید. انتخاب شما به خاطر سپرده می‌شود؛ فایل‌های باز، ویرایش‌های ذخیره‌نشده و نشست‌های ترمینال باز می‌مانند. در رابط‌های عربی، عبری و دیگر زبان‌های راست‌به‌چپ، کد، پیش‌نمایش و خروجی ترمینال همچنان چپ‌به‌راست هستند.
  ترجمه‌ها مستقیماً از متن‌های انگلیسی، با توجه به کاربرد آن‌ها در ویرایشگر و ترمینال نوشته می‌شوند. پنل‌های سیستم از تنظیمات زبان macOS پیروی می‌کنند. این فهرست همهٔ زبان‌های طبیعی یا برنامه‌نویسی را پوشش نمی‌دهد. [ترجمهٔ Sumi](CONTRIBUTING.md#translating-sumi) را ببینید.
- ظاهر روشن و تیره از سیستم پیروی می‌کند.

## دریافت

- [انتشارها](../../releases)
- [ساخت شبانه](../../releases/tag/nightly): با هر تغییر در `main` دوباره ساخته می‌شود.

`Sumi.zip` را دریافت و از حالت فشرده خارج کنید، سپس Sumi را به Applications منتقل کنید. یک ساخت روی هر دو نوع Mac با Apple silicon و Intel اجرا می‌شود.

Sumi با Apple Developer ID امضا نشده است، بنابراین macOS نخستین اجرا را مسدود می‌کند. تنظیمات سیستم › حریم خصوصی و امنیت را باز کنید و «با این حال باز شود» را بزنید، یا اجرا کنید:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## نیازمندی‌ها

macOS 14 یا جدیدتر. برای ساخت، Xcode 26 یا جدیدتر (Swift 6.2) لازم است.

## ساخت از کد منبع

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

از فایل › باز کردن… (⌘O) یک پوشه را به‌عنوان پروژه باز کنید، یا از خط فرمان:

```sh
open -a Sumi path/to/project
```

## میانبرهای صفحه‌کلید

| عمل | میانبر |
|---|---|
| جستجو در همه‌جا | ⇧⇧ یا ⇧⌘O |
| نمای پروژه | ⌘1 |
| ترمینال | ⌥F12 |
| زبانهٔ ترمینال جدید | ⌘T |
| جابه‌جایی جای ترمینال و نمای پروژه | ⌃⌘T |
| بزرگ کردن ترمینال | ⇧⌘↩ |
| پیش‌نمایش Markdown / HTML | ⇧⌘V |
| انتخاب در نمای پروژه | ⌥⌘1 |
| زبانهٔ بعدی / قبلی | ⇧⌘] / ⇧⌘[ |
| ذخیره / ذخیرهٔ همه | ⌘S / ⌥⌘S |

## مشارکت

گزارش اشکال، اصلاح و ترجمه پذیرفته می‌شود. [CONTRIBUTING.md](CONTRIBUTING.md) را بخوانید.

## مجوز

MIT. Sumi شامل SwiftTerm (MIT)، cmark-gfm (BSD-2-Clause)، Prism (MIT) و فهرست زبان‌های GitHub Linguist (MIT) است؛ [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) را ببینید.
