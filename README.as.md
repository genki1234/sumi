# Sumi

AI ক’ডিং এজেণ্টৰ সৈতে কাম কৰিবলৈ তৈয়াৰ কৰা এটা পাতল macOS পাঠ সম্পাদক। মুক্ত উৎসৰ ছফ্টৱেৰ (MIT)।

অন্তৰ্নিৰ্মিত টাৰ্মিনেলত আপোনাৰ এজেণ্ট চলাওক, ই কাম কৰা ফাইলত ক্লিক কৰি খোলক আৰু ই লিখা Markdown সজোৱা পৃষ্ঠা হিচাপে পঢ়ক।

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

## বৈশিষ্ট্যসমূহ

- টাৰ্মিনেলৰ ফাইল-পথবোৰ লিংক। ক’ডিং এজেণ্টে `⎿ M src/app.ts` বা `src/app.ts:42:7` লিখিলে পথটো নীলা হয়। ক্লিক কৰিলে ফাইলটো সেই শাৰীত খোলে।
- বাওঁফালে প্ৰকল্পৰ দৃশ্য, মাজত সম্পাদক আৰু তলত টাৰ্মিনেল।
- টাৰ্মিনেল আৰু প্ৰকল্পৰ দৃশ্যৰ স্থান সলাওক (⌃⌘T) যাতে বাওঁফালে সম্পূৰ্ণ উচ্চতাৰ টাৰ্মিনেল থাকে। ⇧⌘↩ৰে টাৰ্মিনেল ডাঙৰ কৰক।
- লিখা 500 msৰ বাবে ৰখালে আৰু বন্ধ কৰাৰ আগতে ফাইল স্বয়ংক্ৰিয়ভাৱে সংৰক্ষিত হয়। বাহিৰৰ পৰিৱৰ্তন বা সংৰক্ষণ বিফল হ’লে আপোনাৰ সম্পাদনা টেবত থাকে আৰু প্ৰতিলিপি সংৰক্ষণৰ বিকল্প পোৱা যায়।
- আদেশ চলি থকা টাৰ্মিনেল বন্ধ কৰিবলৈ নিশ্চিতকৰণ লাগে। পটভূমিৰ কাম আৰু এপ বন্ধ কৰাও ইয়াৰ অন্তৰ্ভুক্ত। পেনেল লুকুৱালে অধিবেশন চলি থাকে।
- টাৰ্মিনেলে অবিকল্পিতভাৱে Metal ব্যৱহাৰ কৰে। দৃশ্য মেনুত «GPUৰে অংকন» সলনি কৰাৰ ব্যৱস্থা আছে। ⌘Fৰে আউটপুটত বিচাৰক; নতুন টেবে বৰ্তমানৰ কাৰ্যকৰী ডাইৰেক্টৰী লয়।
- Shift+Enterৰে প্ৰম্পটৰ একাধিক শাৰীৰ ইনপুট ৰাখিব পাৰি। একাধিক শাৰীৰ পাঠ, ফাইল আৰু ছবি পেষ্ট কৰিব পাৰি। ছবি অস্থায়ী PNG হিচাপে থাকে আৰু ইয়াৰ পথ উদ্ধৃতি চিহ্নৰ মাজত সুমুওৱা হয়।
- পাঠৰ কাষত Markdown আৰু HTMLৰ পূৰ্বদৰ্শন থাকে আৰু লিখাৰ লগে লগে সলনি হয় (⇧⌘V, বা টেবৰ ওপৰৰ সোঁফালৰ বুটাম)।
  Markdownৰ বাবে GitHubত ব্যৱহৃত cmark-gfm ব্যৱহাৰ কৰা হয়: তালিকা, কামৰ তালিকা, মাজেৰে কটা পাঠ আৰু স্বয়ংক্ৰিয় লিংক সমৰ্থিত।
- সকলোতে বিচাৰক: প্ৰকল্পৰ যিকোনো ফাইল নামৰ আনুমানিক মিলৰ সহায়ত বিচাৰিবলৈ Shift দুবাৰ টিপক।
- ভাষা আৰু ফাইল-ফৰ্মেটৰ 915টা নামৰ তালিকাৰে উৎস ফাইল চিনাক্ত কৰে। ইয়াত ফাইলৰ নাম, যৌগিক এক্সটেনচন আৰু স্ক্ৰিপ্ট ইণ্টাৰপ্ৰেটাৰ অন্তৰ্ভুক্ত। Prismৰ সকলো 297টা উপাদান (291টা স্বতন্ত্ৰ ব্যাকৰণ আৰু 6টা সহায়ক) অন্তৰ্ভুক্ত থাকে আৰু প্ৰয়োজনমতে লোড হয়। ব্যাকৰণ নথকা ফৰ্মেটত সাধাৰণ পাঠ হাইলাইটিং ব্যৱহাৰ কৰা হয়।
- ইণ্টাৰফেচত 108টা ভাষাৰ বিকল্প আছে। ভাষা মেনুৰে লগে লগে সলাওক বা ছিষ্টেমৰ ভাষা অনুসৰণ কৰক। পছন্দ মনত ৰখা হয়; খোলা ফাইল, সংৰক্ষণ নকৰা সম্পাদনা আৰু টাৰ্মিনেল অধিবেশন খোলাই থাকে। আৰবী, হিব্ৰু আৰু অন্য সোঁফালৰ পৰা বাওঁফাললৈ চলা ইণ্টাৰফেচতো ক’ড, পূৰ্বদৰ্শন আৰু টাৰ্মিনেল আউটপুট বাওঁফালৰ পৰা সোঁফাললৈ থাকে।
  সম্পাদক আৰু টাৰ্মিনেলৰ প্ৰসংগ বুজি ইংৰাজী পাঠৰ পৰা পোনপটীয়াকৈ অনুবাদ লিখা হয়। ছিষ্টেমৰ পেনেলে macOSৰ ভাষা ছেটিং অনুসৰণ কৰে। এই তালিকাই সকলো মানৱ ভাষা বা প্ৰগ্ৰামিং ভাষা সামৰি নলয়। [Sumi অনুবাদ কৰা](CONTRIBUTING.md#translating-sumi) চাওক।
- পোহৰ আৰু আন্ধাৰ ৰূপে ছিষ্টেম অনুসৰণ কৰে।

## ডাউনলোড

- [শেহতীয়া মুক্তি](../../releases/latest)
- [নৈশ বিল্ড](../../releases/tag/nightly): `main`ৰ প্ৰতিটো পৰিৱৰ্তনত পুনৰ নিৰ্মাণ হয়।

`Sumi.zip` ডাউনলোড কৰি খোলক আৰু Sumiক Applicationsলৈ নিয়ক। একেটা বিল্ড Apple silicon আৰু Intel Mac দুয়োটাতে চলে।

Sumiত Apple Developer IDৰে স্বাক্ষৰ কৰা হোৱা নাই, সেয়েহে macOSএ প্ৰথমবাৰ চলোৱাত বাধা দিয়ে। ছিষ্টেম ছেটিং › গোপনীয়তা আৰু সুৰক্ষা খুলি «তথাপি খোলক»ত ক্লিক কৰক, বা এই আদেশ চলাওক:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## প্ৰয়োজনীয়তা

macOS 14 বা পৰৱৰ্তী সংস্কৰণ। নিৰ্মাণৰ বাবে Xcode 26 বা পৰৱৰ্তী সংস্কৰণ (Swift 6.2) লাগে।

## উৎসৰ পৰা নিৰ্মাণ

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ফাইল › খোলক… (⌘O)ৰ পৰা ফোল্ডাৰ এটা প্ৰকল্প হিচাপে খোলক, বা কমাণ্ড লাইন ব্যৱহাৰ কৰক:

```sh
open -a Sumi path/to/project
```

## কীব’ৰ্ড চৰ্টকাট

| কাম | চৰ্টকাট |
|---|---|
| সকলোতে বিচাৰক | ⇧⇧ বা ⇧⌘O |
| প্ৰকল্পৰ দৃশ্য | ⌘1 |
| টাৰ্মিনেল | ⌥F12 |
| নতুন টাৰ্মিনেল টেব | ⌘T |
| টাৰ্মিনেল আৰু প্ৰকল্পৰ দৃশ্যৰ স্থান সলাওক | ⌃⌘T |
| টাৰ্মিনেল ডাঙৰ কৰক | ⇧⌘↩ |
| Markdown / HTML পূৰ্বদৰ্শন | ⇧⌘V |
| প্ৰকল্পৰ দৃশ্যত বাছক | ⌥⌘1 |
| পৰৱৰ্তী / আগৰ টেব | ⇧⌘] / ⇧⌘[ |
| সংৰক্ষণ কৰক / সকলো সংৰক্ষণ কৰক | ⌘S / ⌥⌘S |

## অৱদান

ত্ৰুটিৰ প্ৰতিবেদন, সংশোধন আৰু অনুবাদ আদৰণীয়। [CONTRIBUTING.md](CONTRIBUTING.md) পঢ়ক।

## অনুজ্ঞাপত্ৰ

MIT। Sumiত SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) আৰু GitHub Linguistৰ ভাষাৰ তালিকা (MIT) আছে; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) চাওক।
