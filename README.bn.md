# Sumi

AI কোডিং এজেন্টের সঙ্গে কাজ করার জন্য তৈরি হালকা macOS পাঠ সম্পাদক। উন্মুক্ত উৎসের সফটওয়্যার (MIT)।

অন্তর্নির্মিত টার্মিনালে আপনার এজেন্ট চালান, সেটি যে ফাইলগুলোতে কাজ করে সেগুলো ক্লিক করে খুলুন এবং তার লেখা Markdown বিন্যস্ত পৃষ্ঠা হিসেবে পড়ুন।

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

## বৈশিষ্ট্য

- টার্মিনালের ফাইল-পাথগুলো লিংক। কোডিং এজেন্ট `⎿ M src/app.ts` বা `src/app.ts:42:7` দেখালে পাথ নীল হয়; ক্লিক করলে ফাইলটি সেই লাইনে খোলে।
- বাঁ দিকে প্রকল্পের দৃশ্য, মাঝে সম্পাদক, নিচে টার্মিনাল।
- টার্মিনাল ও প্রকল্পের দৃশ্যের স্থান বদলে (⌃⌘T) বাঁ দিকে পূর্ণ উচ্চতার টার্মিনাল রাখুন। ⇧⌘↩ দিয়ে টার্মিনাল বড় করুন।
- লেখা 500 ms থামলে এবং বন্ধ করার আগে ফাইল স্বয়ংক্রিয়ভাবে সংরক্ষিত হয়। বাইরের পরিবর্তন বা সংরক্ষণ ব্যর্থ হলে আপনার সম্পাদনা ট্যাবে থাকে, অনুলিপি সংরক্ষণের সুযোগসহ।
- কোনো কমান্ড চলতে থাকা টার্মিনাল বন্ধ করতে নিশ্চিতকরণ লাগে; পটভূমির কাজ এবং অ্যাপ থেকে প্রস্থানও এর অন্তর্ভুক্ত। প্যানেল আড়াল করলে সেশন চলতে থাকে।
- টার্মিনালে পূর্বনির্ধারিতভাবে Metal ব্যবহৃত হয়; দৃশ্য মেনুতে «GPU দিয়ে আঁকা» বিকল্প আছে। ⌘F দিয়ে আউটপুটে খুঁজুন; নতুন ট্যাব বর্তমান কার্যকরী ডিরেক্টরি নেয়।
- Shift+Enter দিয়ে একাধিক লাইনের প্রম্পট লেখা যায়। একাধিক লাইনের পাঠ, ফাইল এবং ছবি পেস্ট করা যায়; ছবিগুলো অস্থায়ী PNG হিসেবে থাকে এবং তাদের পাথ উদ্ধৃতিচিহ্নের মধ্যে ঢোকানো হয়।
- পাঠের পাশে Markdown ও HTML-এর প্রাক্‌দর্শন থাকে, যা লেখার সঙ্গে সঙ্গে হালনাগাদ হয় (⇧⌘V অথবা ট্যাবের ওপরের ডান দিকের বোতাম)।
  Markdown দেখাতে GitHub-এর ব্যবহৃত cmark-gfm ব্যবহার করা হয়: ছক, কাজের তালিকা, মাঝ বরাবর কাটা পাঠ এবং স্বয়ংক্রিয় লিংক।
- সর্বত্র খুঁজুন: প্রকল্পের যেকোনো ফাইল নামের আনুমানিক মিল দিয়ে খুঁজতে Shift দুবার চাপুন।
- ভাষা ও ফাইল-ফরম্যাটের 915টি নামের তালিকা দিয়ে সোর্স ফাইল চেনে। এতে ফাইলের নাম, যৌগিক এক্সটেনশন ও স্ক্রিপ্ট ইন্টারপ্রেটার অন্তর্ভুক্ত। Prism-এর সব 297টি উপাদান (291টি স্বতন্ত্র গ্রামার ও 6টি সহায়ক) সঙ্গে থাকে এবং প্রয়োজনে লোড হয়। গ্রামারবিহীন ফরম্যাটে মৌলিক পাঠ হাইলাইটিং ব্যবহৃত হয়।
- ইন্টারফেসে 108টি ভাষার বিকল্প আছে। ভাষা মেনু থেকে সঙ্গে সঙ্গে বদলান অথবা সিস্টেমের ভাষা অনুসরণ করুন। পছন্দ মনে রাখা হয়; খোলা ফাইল, অসংরক্ষিত সম্পাদনা ও টার্মিনাল সেশন খোলাই থাকে। আরবি, হিব্রু ও অন্য ডান থেকে বাঁ ইন্টারফেসেও কোড, প্রাক্‌দর্শন ও টার্মিনালের আউটপুট বাঁ থেকে ডানে থাকে।
  সম্পাদক ও টার্মিনালে ব্যবহারের প্রসঙ্গ মেনে ইংরেজি পাঠ থেকে সরাসরি অনুবাদ লেখা হয়। সিস্টেমের প্যানেল macOS-এর ভাষা সেটিং অনুসরণ করে। এই তালিকায় সব মানবভাষা বা প্রোগ্রামিং ভাষা নেই। [Sumi অনুবাদ](CONTRIBUTING.md#translating-sumi) দেখুন।
- হালকা ও গাঢ় চেহারা সিস্টেম অনুসরণ করে।

## ডাউনলোড

- [সর্বশেষ প্রকাশ](../../releases/latest)
- [নৈশ বিল্ড](../../releases/tag/nightly): `main`-এর প্রতিটি পরিবর্তনে নতুন করে তৈরি হয়।

`Sumi.zip` ডাউনলোড করে আনজিপ করুন, তারপর Sumi-কে Applications-এ সরান। একই বিল্ড Apple silicon ও Intel Mac উভয়টিতে চলে।

Sumi-তে Apple Developer ID দিয়ে স্বাক্ষর করা হয়নি, তাই macOS প্রথমবার চালানো আটকে দেয়। সিস্টেম সেটিংস › গোপনীয়তা ও নিরাপত্তা খুলে «তবুও খুলুন» ক্লিক করুন, অথবা চালান:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## প্রয়োজনীয়তা

macOS 14 বা পরবর্তী সংস্করণ। বিল্ড করতে Xcode 26 বা পরবর্তী সংস্করণ (Swift 6.2) প্রয়োজন।

## সোর্স থেকে বিল্ড

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ফাইল › খুলুন… (⌘O) থেকে কোনো ফোল্ডার প্রকল্প হিসেবে খুলুন, অথবা কমান্ড লাইন ব্যবহার করুন:

```sh
open -a Sumi path/to/project
```

## কীবোর্ড শর্টকাট

| কাজ | শর্টকাট |
|---|---|
| সর্বত্র খুঁজুন | ⇧⇧ অথবা ⇧⌘O |
| প্রকল্পের দৃশ্য | ⌘1 |
| টার্মিনাল | ⌥F12 |
| নতুন টার্মিনাল ট্যাব | ⌘T |
| টার্মিনাল ও প্রকল্পের দৃশ্যের স্থান বদলান | ⌃⌘T |
| টার্মিনাল বড় করুন | ⇧⌘↩ |
| Markdown / HTML প্রাক্‌দর্শন | ⇧⌘V |
| প্রকল্পের দৃশ্যে নির্বাচন করুন | ⌥⌘1 |
| পরের / আগের ট্যাব | ⇧⌘] / ⇧⌘[ |
| সংরক্ষণ করুন / সব সংরক্ষণ করুন | ⌘S / ⌥⌘S |

## অবদান

ত্রুটির প্রতিবেদন, সংশোধন ও অনুবাদ স্বাগত। [CONTRIBUTING.md](CONTRIBUTING.md) পড়ুন।

## লাইসেন্স

MIT। Sumi-তে SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) এবং GitHub Linguist-এর ভাষার তালিকা (MIT) আছে; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) দেখুন।
