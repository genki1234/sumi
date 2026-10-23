# Sumi

AI କୋଡିଂ ଏଜେଣ୍ଟ ସହ କାମ କରିବା ପାଇଁ ତିଆରି ହୋଇଥିବା ହାଲୁକା macOS ପାଠ୍ୟ ସମ୍ପାଦକ। ମୁକ୍ତ ଉତ୍ସ (MIT)।

ଭିତରେ ଥିବା ଟର୍ମିନାଲ୍‌ରେ ଆପଣଙ୍କ ଏଜେଣ୍ଟ ଚଲାନ୍ତୁ, ସେ ବଦଳାଇଥିବା ଫାଇଲ୍‌ଗୁଡ଼ିକ କ୍ଲିକ୍ କରି ଖୋଲନ୍ତୁ ଏବଂ ସେ ଲେଖିଥିବା Markdown କୁ ସଜାଯାଇଥିବା ପୃଷ୍ଠା ଭାବରେ ପଢ଼ନ୍ତୁ।

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

## ବୈଶିଷ୍ଟ୍ୟ

- ଟର୍ମିନାଲ୍‌ର ଫାଇଲ୍ ପଥଗୁଡ଼ିକ ଲିଙ୍କ୍ ଅଟେ। କୋଡିଂ ଏଜେଣ୍ଟ `⎿ M src/app.ts` କିମ୍ବା `src/app.ts:42:7` ଦେଖାଇଲେ ପଥ ନୀଳ ହୁଏ ଏବଂ କ୍ଲିକ୍ କଲେ ଫାଇଲ୍ ସେହି ଧାଡ଼ିରେ ଖୋଲେ।
- ବାମରେ ପ୍ରକଳ୍ପ ବୃକ୍ଷ, ମଝିରେ ସମ୍ପାଦକ ଏବଂ ତଳେ ଟର୍ମିନାଲ୍।
- ବାମରେ ପୂର୍ଣ୍ଣ ଉଚ୍ଚତାର ଟର୍ମିନାଲ୍ ପାଇବାକୁ ଟର୍ମିନାଲ୍ ଓ ପ୍ରକଳ୍ପ ବୃକ୍ଷର ସ୍ଥାନ ଅଦଳବଦଳ କରନ୍ତୁ (⌃⌘T)। ⇧⌘↩ ଦ୍ୱାରା ଟର୍ମିନାଲ୍ ସର୍ବାଧିକ ବଡ଼ କରନ୍ତୁ।
- ଟାଇପ୍‌ରେ 500 ms ବିରତି ପରେ ଏବଂ ବନ୍ଦ କରିବା ପୂର୍ବରୁ ଫାଇଲ୍ ଆପେ ଆପେ ସଞ୍ଚୟ ହୁଏ। ବାହ୍ୟ ପରିବର୍ତ୍ତନ କିମ୍ବା ସଞ୍ଚୟ ବିଫଳତା ହେଲେ ଆପଣଙ୍କ ସମ୍ପାଦନ ଟ୍ୟାବ୍‌ରେ ରହେ ଏବଂ ନକଲ ସଞ୍ଚୟ କରିବାର ବିକଳ୍ପ ମିଳେ।
- ଆଦେଶ ଚାଲୁଥିବା ଟର୍ମିନାଲ୍ ବନ୍ଦ କଲେ ନିଶ୍ଚିତକରଣ ମାଗେ; ଏଥିରେ ପୃଷ୍ଠଭୂମି କାମ ଓ ଆପ୍ ଛାଡ଼ିବା ମଧ୍ୟ ଅନ୍ତର୍ଭୁକ୍ତ। ପ୍ୟାନେଲ୍ ଲୁଚାଇଲେ ଅଧିବେଶନ ଚାଲୁ ରହେ।
- ଟର୍ମିନାଲ୍‌ଗୁଡ଼ିକ ପୂର୍ବନିର୍ଦ୍ଧାରିତ ଭାବରେ Metal ବ୍ୟବହାର କରେ; ଦୃଶ୍ୟ ରେ GPU ରେଣ୍ଡରିଂ ସ୍ୱିଚ୍ ଅଛି। ⌘F ଦ୍ୱାରା ଆଉଟ୍‌ପୁଟ୍ ଖୋଜନ୍ତୁ; ନୂଆ ଟ୍ୟାବ୍‌ଗୁଡ଼ିକ ବର୍ତ୍ତମାନର କାର୍ଯ୍ୟ ଡିରେକ୍ଟୋରି ନିଅନ୍ତି।
- Shift+Enter ବହୁଧାଡ଼ି ପ୍ରମ୍ପ୍ଟ ଇନ୍‌ପୁଟ୍ ରଖେ। ବହୁଧାଡ଼ି ପାଠ୍ୟ, ଫାଇଲ୍ ଓ ଛବି ଲଗାଇହେବ; ଛବିଗୁଡ଼ିକ ଅସ୍ଥାୟୀ PNG ଭାବରେ ରହେ ଏବଂ ଉଦ୍ଧୃତିଚିହ୍ନ ଭିତରେ ପଥ ଭାବରେ ଯୋଡ଼ାଯାଏ।
- ପାଠ୍ୟ ପାଖରେ Markdown ଓ HTML ପୂର୍ବଦୃଶ୍ୟ ଟାଇପ୍ କରିବାବେଳେ ଅଦ୍ୟତନ ହୁଏ (⇧⌘V କିମ୍ବା ଟ୍ୟାବ୍‌ର ଉପର ଡାହାଣ ବଟନ୍‌ଗୁଡ଼ିକ)। Markdown ଦେଖାଇବାକୁ GitHub ବ୍ୟବହାର କରୁଥିବା cmark-gfm ବ୍ୟବହୃତ ହୁଏ: ସାରଣୀ, କାର୍ଯ୍ୟତାଲିକା, କଟା ପାଠ୍ୟ ଓ ସ୍ୱୟଂଚାଳିତ ଲିଙ୍କ୍।
- ସବୁଠି ଖୋଜନ୍ତୁ: ନାମର ଆନୁମାନିକ ମେଳରୁ ପ୍ରକଳ୍ପର ଯେକୌଣସି ଫାଇଲ୍ ପାଇବାକୁ Shift ଦୁଇଥର ଦବାନ୍ତୁ।
- ଭାଷା ଓ ଫାଇଲ୍ ଫର୍ମାଟ୍‌ର 915 ନାମର ତାଲିକାରୁ ଉତ୍ସ ଫାଇଲ୍ ଚିହ୍ନଟ କରେ; ଫାଇଲ୍ ନାମ, ଯୁଗ୍ମ ଏକ୍ସଟେନ୍‌ସନ୍ ଓ ସ୍କ୍ରିପ୍ଟ ଇଣ୍ଟରପ୍ରେଟର୍ ମଧ୍ୟ ଅଛି। ସମସ୍ତ 297 Prism ଉପାଦାନ (291 ସ୍ୱତନ୍ତ୍ର ବ୍ୟାକରଣ ଓ 6 ସହାୟକ) ସାଥିରେ ଅଛି ଏବଂ ଆବଶ୍ୟକ ବେଳେ ଲୋଡ୍ ହୁଏ। ବ୍ୟାକରଣ ନଥିବା ଫର୍ମାଟ୍‌ରେ ମୌଳିକ ପାଠ୍ୟ ରଙ୍ଗାୟନ ହୁଏ।
- ଇଣ୍ଟରଫେସ୍‌ରେ 108 ଭାଷା ବିକଳ୍ପ ଅଛି। ଭାଷା ମେନୁରେ ତୁରନ୍ତ ବଦଳାନ୍ତୁ କିମ୍ବା ସିଷ୍ଟମ୍ ଭାଷା ଅନୁସରଣ କରନ୍ତୁ। ଚୟନ ମନେ ରହେ; ଖୋଲା ଫାଇଲ୍, ସଞ୍ଚୟ ହୋଇନଥିବା ସମ୍ପାଦନ ଓ ଟର୍ମିନାଲ୍ ଅଧିବେଶନ ଖୋଲା ରହେ। ଆରବୀ, ହିବ୍ରୁ ଓ ଅନ୍ୟ ଡାହାଣରୁ ବାମ ଇଣ୍ଟରଫେସ୍‌ରେ କୋଡ୍, ପୂର୍ବଦୃଶ୍ୟ ଓ ଟର୍ମିନାଲ୍ ଆଉଟ୍‌ପୁଟ୍ ବାମରୁ ଡାହାଣ ରହେ। ସମ୍ପାଦକ ଓ ଟର୍ମିନାଲ୍‌ର ପ୍ରସଙ୍ଗ ନେଇ ଇଂରାଜୀ ପାଠ୍ୟରୁ ସିଧାସଳଖ ଅନୁବାଦ ଲେଖାଯାଇଛି। ସିଷ୍ଟମ୍ ପ୍ୟାନେଲ୍‌ଗୁଡ଼ିକ macOS ଭାଷା ସେଟିଂ ଅନୁସରଣ କରେ। ଏହି ତାଲିକା ପ୍ରତ୍ୟେକ ପ୍ରାକୃତିକ କିମ୍ବା ପ୍ରୋଗ୍ରାମିଂ ଭାଷାକୁ ସାମିଲ କରେନାହିଁ। [Sumi ଅନୁବାଦ](CONTRIBUTING.md#translating-sumi) ଦେଖନ୍ତୁ।
- ଉଜ୍ଜ୍ୱଳ ଓ ଅନ୍ଧାର ରୂପ ସିଷ୍ଟମ୍ ଅନୁସରଣ କରେ।

## ଡାଉନ୍‌ଲୋଡ୍

- [ନୂଆତମ ପ୍ରକାଶନ](../../releases/latest)
- [ରାତ୍ରି ବିଲ୍ଡ୍](../../releases/tag/nightly): `main` ର ପ୍ରତ୍ୟେକ ପରିବର୍ତ୍ତନରେ ପୁନଃନିର୍ମିତ ହୁଏ।

`Sumi.zip` ଡାଉନ୍‌ଲୋଡ୍ କରି ଖୋଲନ୍ତୁ ଏବଂ Sumi କୁ Applications କୁ ସ୍ଥାନାନ୍ତର କରନ୍ତୁ। ଗୋଟିଏ ବିଲ୍ଡ୍ Apple silicon ଓ Intel Mac ଉଭୟରେ ଚାଲେ।

Sumi ରେ Apple Developer ID ସ୍ୱାକ୍ଷର ନଥିବାରୁ macOS ପ୍ରଥମ ଖୋଲିବାକୁ ଅଟକାଏ। ସିଷ୍ଟମ୍ ସେଟିଂ › ଗୋପନୀୟତା ଓ ସୁରକ୍ଷା ଖୋଲି ତଥାପି ଖୋଲନ୍ତୁ ବିକଳ୍ପ କ୍ଲିକ୍ କରନ୍ତୁ କିମ୍ବା ଏହା ଚଲାନ୍ତୁ:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## ଆବଶ୍ୟକତା

macOS 14 କିମ୍ବା ନୂଆ। ନିର୍ମାଣ ପାଇଁ Xcode 26 କିମ୍ବା ନୂଆ (Swift 6.2) ଦରକାର।

## ଉତ୍ସରୁ ନିର୍ମାଣ

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ଫାଇଲ୍ › ଖୋଲନ୍ତୁ… (⌘O) ରୁ ଫୋଲ୍ଡରକୁ ପ୍ରକଳ୍ପ ଭାବରେ ଖୋଲନ୍ତୁ କିମ୍ବା ଆଦେଶ ଧାଡ଼ିରୁ:

```sh
open -a Sumi path/to/project
```

## କିବୋର୍ଡ୍ ସର୍ଟକଟ୍

| କାର୍ଯ୍ୟ | ସର୍ଟକଟ୍ |
|---|---|
| ସବୁଠି ଖୋଜନ୍ତୁ | ⇧⇧ କିମ୍ବା ⇧⌘O |
| ପ୍ରକଳ୍ପ ବୃକ୍ଷ | ⌘1 |
| ଟର୍ମିନାଲ୍ | ⌥F12 |
| ନୂଆ ଟର୍ମିନାଲ୍ ଟ୍ୟାବ୍ | ⌘T |
| ଟର୍ମିନାଲ୍ ଓ ପ୍ରକଳ୍ପର ସ୍ଥାନ ଅଦଳବଦଳ କରନ୍ତୁ | ⌃⌘T |
| ଟର୍ମିନାଲ୍ ସର୍ବାଧିକ ବଡ଼ କରନ୍ତୁ | ⇧⌘↩ |
| Markdown / HTML ପୂର୍ବଦୃଶ୍ୟ | ⇧⌘V |
| ପ୍ରକଳ୍ପ ବୃକ୍ଷରେ ବାଛନ୍ତୁ | ⌥⌘1 |
| ପରବର୍ତ୍ତୀ ଟ୍ୟାବ୍ / ପୂର୍ବବର୍ତ୍ତୀ ଟ୍ୟାବ୍ | ⇧⌘] / ⇧⌘[ |
| ସଞ୍ଚୟ କରନ୍ତୁ / ସବୁ ସଞ୍ଚୟ କରନ୍ତୁ | ⌘S / ⌥⌘S |

## ଅବଦାନ

ତ୍ରୁଟି ରିପୋର୍ଟ, ସଂଶୋଧନ ଓ ଅନୁବାଦକୁ ସ୍ୱାଗତ। [CONTRIBUTING.md](CONTRIBUTING.md) ପଢ଼ନ୍ତୁ।

## ଲାଇସେନ୍ସ

MIT। Sumi ରେ SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) ଓ GitHub Linguist ଭାଷା ତାଲିକା (MIT) ଅଛି; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) ଦେଖନ୍ତୁ।
