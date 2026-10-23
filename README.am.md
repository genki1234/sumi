# Sumi

ከኮድ አጻጻፍ AI ወኪሎች ጋር ለመሥራት የተሠራ ቀላል የmacOS ጽሑፍ አርታዒ። ክፍት ምንጭ ነው (MIT)።

ወኪልዎን በውስጡ ባለው ተርሚናል ያሂዱ። የሚሠራባቸውን ፋይሎች በመጫን ይክፈቱ፣ የሚጽፈውን Markdownም በተቀረጹ ገጾች ያንብቡ።

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

## ባህሪያት

- በተርሚናል ያሉ የፋይል ዱካዎች አገናኞች ናቸው። የኮድ ወኪል `⎿ M src/app.ts` ወይም `src/app.ts:42:7` ሲያትም፣ ዱካው ሰማያዊ ይሆናል። ሲጫኑት ፋይሉ በዚያ መስመር ይከፈታል።
- የፕሮጀክት እይታ በግራ፣ አርታዒው በመሃል፣ ተርሚናሉ ከታች ይገኛሉ።
- ተርሚናሉንና የፕሮጀክት እይታን በ⌃⌘T በማቀያየር፣ ተርሚናሉን በሙሉ ቁመት በግራ ያስቀምጡ። በ⇧⌘↩ ተርሚናሉን ያስፉ።
- መጻፍ ለ500 ms ሲቆም እና ፋይሎቹ ከመዘጋታቸው በፊት በራስ-ሰር ይቀመጣሉ። ውጫዊ ለውጥ ወይም የማስቀመጥ ስህተት ሲኖር፣ የእርስዎ ለውጦች በትሩ ውስጥ ይቆያሉ፤ ቅጂ ማስቀመጥም ይችላሉ።
- ትእዛዞች እየሠሩ ያሉበትን ተርሚናል መዝጋት ማረጋገጫ ይጠይቃል። ይህ የጀርባ ሥራዎችንና ከመተግበሪያው መውጣትን ያካትታል። ፓነሉን መደበቅ ግን ክፍለ ጊዜዎቹን አያቆምም።
- ተርሚናሎች በነባሪ Metalን ይጠቀማሉ። በእይታ ምናሌ ውስጥ «በGPU መሳል» መቀየሪያ አለ። ውጤቱን በ⌘F ይፈልጉ፤ አዲስ ትሮች አሁን ያለውን የሥራ ማውጫ ይወርሳሉ።
- Shift+Enter ብዙ መስመር ያለውን ጥያቄ ለማስገባት ያስችላል። ብዙ መስመር ያለው ጽሑፍ፣ ፋይሎችና ምስሎች መለጠፍ ይቻላል። ምስሎች እንደ ጊዜያዊ PNG ይቀመጣሉ፣ ዱካቸውም በጥቅስ ምልክቶች ተከብቦ ይገባል።
- የMarkdown እና HTML ቅድመ እይታ ከጽሑፉ ጎን ይታያል፣ ሲጽፉም ይታደሳል (⇧⌘V፣ ወይም በትሩ ላይኛው ቀኝ ያሉት አዝራሮች)።
  Markdown በGitHub በሚጠቀምበት cmark-gfm ይቀረጻል። ሰንጠረዦችን፣ የተግባር ዝርዝሮችን፣ በመሃል የተሰመረ ጽሑፍንና ራስ-ሰር አገናኞችን ይደግፋል።
- በሁሉም ቦታ ፈልግ፦ Shiftን ሁለት ጊዜ በመጫን በፕሮጀክቱ ያለ ማንኛውንም ፋይል በግምታዊ የስም ፍለጋ ያግኙ።
- 915 የቋንቋና የፋይል ቅርጽ ስሞች ያሉበትን ማውጫ በመጠቀም የምንጭ ፋይሎችን ይለያል። ይህ የፋይል ስሞችን፣ የተዋሃዱ ቅጥያዎችንና የስክሪፕት ተርጓሚዎችን ያካትታል። ሁሉም 297 የPrism ክፍሎች (291 ገለልተኛ ሰዋስዎችና 6 ረዳቶች) ተካትተው እንደ አስፈላጊነቱ ይጫናሉ። ሰዋስው የሌላቸው ቅርጾች መሠረታዊ የጽሑፍ ማድመቂያ ይጠቀማሉ።
- የተጠቃሚ ገጽታው 108 የቋንቋ ምርጫዎች አሉት። በቋንቋ ምናሌ ወዲያውኑ ይቀይሩ፣ ወይም የስርዓቱን ቋንቋ ይከተሉ። ምርጫው ይታወሳል፤ የተከፈቱ ፋይሎች፣ ያልተቀመጡ ለውጦችና የተርሚናል ክፍለ ጊዜዎች ክፍት ይቆያሉ። አረብኛ፣ ዕብራይስጥና ሌሎች ከቀኝ ወደ ግራ የሚነበቡ ገጽታዎችም ኮድን፣ ቅድመ እይታንና የተርሚናል ውጤትን ከግራ ወደ ቀኝ ያሳያሉ።
  ትርጉሞች ከእንግሊዝኛው ጽሑፍ በቀጥታ፣ የአርታዒውንና የተርሚናሉን አጠቃቀም በማገናዘብ ይጻፋሉ። በስርዓቱ የሚቀርቡ ፓነሎች የmacOSን ቋንቋ ቅንብር ይከተላሉ። ይህ ማውጫ ሁሉንም የሰው ወይም የፕሮግራም ቋንቋ አይሸፍንም። [Sumiን መተርጎም](CONTRIBUTING.md#translating-sumi) ይመልከቱ።
- የብርሃንና የጨለማ ገጽታ የስርዓቱን ቅንብር ይከተላል።

## አውርድ

- [ልቀቶች](../../releases)
- [የሌሊት ግንባታ](../../releases/tag/nightly)፦ `main` በተቀየረ ቁጥር ይገነባል።

`Sumi.zip`ን ያውርዱ፣ ይፍቱትና Sumiን ወደ Applications ያንቀሳቅሱ። አንድ ግንባታ በApple silicon እና Intel Mac ላይ ይሠራል።

Sumi በApple Developer ID አልተፈረመም፣ ስለዚህ macOS የመጀመሪያውን ማስጀመር ይከለክላል። የስርዓት ቅንብሮች › ግላዊነትና ደህንነትን ይክፈቱና «ያም ሆኖ ክፈት»ን ይጫኑ፣ ወይም ይህን ያሂዱ፦

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## መስፈርቶች

macOS 14 ወይም ከዚያ በኋላ። ለመገንባት Xcode 26 ወይም ከዚያ በኋላ (Swift 6.2) ያስፈልጋል።

## ከምንጭ መገንባት

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ከፋይል › ክፈት… (⌘O) አቃፊን እንደ ፕሮጀክት ይክፈቱ፣ ወይም ከትእዛዝ መስመር፦

```sh
open -a Sumi path/to/project
```

## የቁልፍ ሰሌዳ አቋራጮች

| ተግባር | አቋራጭ |
|---|---|
| በሁሉም ቦታ ፈልግ | ⇧⇧ ወይም ⇧⌘O |
| የፕሮጀክት እይታ | ⌘1 |
| ተርሚናል | ⌥F12 |
| አዲስ የተርሚናል ትር | ⌘T |
| ተርሚናልንና የፕሮጀክት እይታን አቀያይር | ⌃⌘T |
| ተርሚናልን አስፋ | ⇧⌘↩ |
| የMarkdown / HTML ቅድመ እይታ | ⇧⌘V |
| በፕሮጀክት እይታ ምረጥ | ⌥⌘1 |
| ቀጣይ / ቀዳሚ ትር | ⇧⌘] / ⇧⌘[ |
| አስቀምጥ / ሁሉንም አስቀምጥ | ⌘S / ⌥⌘S |

## አስተዋጽኦ

የስህተት ሪፖርቶች፣ ማስተካከያዎችና ትርጉሞች እንቀበላለን። [CONTRIBUTING.md](CONTRIBUTING.md)ን ያንብቡ።

## ፈቃድ

MIT። Sumi SwiftTerm (MIT)፣ cmark-gfm (BSD-2-Clause)፣ Prism (MIT) እና የGitHub Linguist የቋንቋ ማውጫን (MIT) ያካትታል። [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) ይመልከቱ።
