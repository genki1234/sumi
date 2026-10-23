# Sumi

محرر نصوص خفيف لنظام macOS، مصمم للعمل مع وكلاء البرمجة بالذكاء الاصطناعي. مفتوح المصدر (MIT).

شغّل وكيلك في الطرفية المدمجة، وانقر على الملفات التي يعمل عليها لفتحها، واقرأ ما يكتبه من Markdown على هيئة صفحات منسّقة.

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

## الميزات

- مسارات الملفات في الطرفية روابط قابلة للنقر. عندما يطبع وكيل البرمجة `⎿ M src/app.ts` أو `src/app.ts:42:7`، يصبح المسار أزرق، ويفتح النقر عليه الملف عند ذلك السطر.
- عرض المشروع على اليسار، والمحرر في الوسط، والطرفية في الأسفل.
- بدّل موضعي الطرفية وعرض المشروع (⌃⌘T) لوضع الطرفية على اليسار بارتفاع كامل. كبّر الطرفية باستخدام ⇧⌘↩.
- تُحفظ الملفات تلقائيًا بعد التوقف عن الكتابة لمدة 500 ms وقبل إغلاقها. عند حدوث تغييرات خارجية أو فشل الحفظ، تبقى تعديلاتك في علامة التبويب مع خيار حفظ نسخة.
- يتطلب إغلاق طرفية تشغّل أوامر تأكيدًا، ويشمل ذلك المهام في الخلفية وإنهاء التطبيق. يتيح إخفاء اللوحة للجلسات مواصلة العمل.
- تستخدم الطرفيات Metal افتراضيًا، مع مفتاح «الرسم باستخدام GPU» في قائمة «عرض». ابحث في المخرجات باستخدام ⌘F؛ وترث علامات التبويب الجديدة مجلد العمل الحالي.
- يتيح Shift+Enter إدخال المطالبات على عدة أسطر. يدعم اللصق النصوص متعددة الأسطر والملفات والصور؛ تُحفظ الصور بصيغة PNG مؤقتًا وتُدرج مساراتها بين علامتي اقتباس.
- معاينة Markdown وHTML بجانب النص، وتُحدّث أثناء الكتابة (⇧⌘V، أو الأزرار أعلى يمين علامة التبويب).
  يُعرض Markdown باستخدام cmark-gfm، وهو محرك العرض الذي يستخدمه GitHub: جداول وقوائم مهام ونص مشطوب وروابط تلقائية.
- البحث في كل مكان: اضغط Shift مرتين للعثور على أي ملف في المشروع عبر بحث تقريبي بالاسم.
- يتعرّف على ملفات المصدر باستخدام فهرس يضم 915 اسمًا للغات وتنسيقات الملفات، بما يشمل أسماء الملفات والامتدادات المركبة ومفسرات السكربتات. تُضمّن مكونات Prism البالغ عددها 297 (291 قواعد مستقلة و6 مكونات مساعدة) وتُحمّل عند الحاجة. تستخدم التنسيقات التي لا تملك قواعد تمييزًا أساسيًا للنص.
- تضم الواجهة 108 خيارات للغة. استخدم قائمة «اللغة» للتبديل فورًا أو لمتابعة لغة النظام. يُحفظ اختيارك، وتبقى الملفات المفتوحة والتعديلات غير المحفوظة وجلسات الطرفية مفتوحة. تُبقي الواجهات العربية والعبرية وغيرها من الواجهات من اليمين إلى اليسار الشيفرة والمعاينات ومخرجات الطرفية من اليسار إلى اليمين.
  تُكتب الترجمات مباشرة من النصوص الإنجليزية مع مراعاة سياق المحرر والطرفية. تتبع لوحات النظام إعدادات لغة macOS. لا يشمل هذا الفهرس جميع اللغات الطبيعية أو لغات البرمجة. راجع [ترجمة Sumi](CONTRIBUTING.md#translating-sumi).
- يتبع المظهر الفاتح والداكن إعداد النظام.

## التنزيل

- [أحدث إصدار](../../releases/latest)
- [البناء الليلي](../../releases/tag/nightly): يُعاد بناؤه عند كل تغيير في `main`.

نزّل `Sumi.zip`، وفك ضغطه، وانقل Sumi إلى Applications. يعمل البناء نفسه على أجهزة Mac بمعالجات Apple silicon وIntel.

لم يُوقّع Sumi باستخدام Apple Developer ID، لذا يمنع macOS تشغيله أول مرة. افتح إعدادات النظام › الخصوصية والأمان، وانقر «فتح على أي حال»، أو نفّذ:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## المتطلبات

macOS 14 أو أحدث. يتطلب البناء Xcode 26 أو أحدث (Swift 6.2).

## البناء من المصدر

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

افتح مجلدًا كمشروع من «ملف › فتح…» (⌘O)، أو من سطر الأوامر:

```sh
open -a Sumi path/to/project
```

## اختصارات لوحة المفاتيح

| الإجراء | الاختصار |
|---|---|
| البحث في كل مكان | ⇧⇧ أو ⇧⌘O |
| عرض المشروع | ⌘1 |
| الطرفية | ⌥F12 |
| علامة تبويب طرفية جديدة | ⌘T |
| تبديل موضعي الطرفية وعرض المشروع | ⌃⌘T |
| تكبير الطرفية | ⇧⌘↩ |
| معاينة Markdown / HTML | ⇧⌘V |
| تحديد في عرض المشروع | ⌥⌘1 |
| علامة التبويب التالية / السابقة | ⇧⌘] / ⇧⌘[ |
| حفظ / حفظ الكل | ⌘S / ⌥⌘S |

## المساهمة

نرحّب بتقارير الأخطاء والإصلاحات والترجمات. اقرأ [CONTRIBUTING.md](CONTRIBUTING.md).

## الترخيص

MIT. يتضمن Sumi مكتبة SwiftTerm (MIT) وcmark-gfm (BSD-2-Clause) وPrism (MIT) وفهرس لغات GitHub Linguist (MIT)؛ راجع [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
