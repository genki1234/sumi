# Sumi

AI కోడింగ్ ఏజెంట్లతో కలిసి పనిచేయడానికి రూపొందించిన తేలికపాటి macOS వచన ఎడిటర్. ఓపెన్ సోర్స్ (MIT).

అంతర్నిర్మిత టెర్మినల్‌లో మీ ఏజెంట్‌ను నడపండి, అది మార్చే ఫైళ్లను క్లిక్ చేసి తెరవండి, అది రాసే Markdown ను అమర్చిన పేజీలుగా చదవండి.

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

## లక్షణాలు

- టెర్మినల్‌లో ఫైల్ పాత్‌లు లింకులుగా ఉంటాయి. ఏజెంట్ `⎿ M src/app.ts` లేదా `src/app.ts:42:7` చూపితే పాత్ నీలంగా మారుతుంది; క్లిక్ చేస్తే ఆ పంక్తి వద్ద ఫైల్ తెరుచుకుంటుంది.
- ప్రాజెక్ట్ వీక్షణ ఎడమవైపు, ఎడిటర్ మధ్యలో, టెర్మినల్ కింద.
- టెర్మినల్, ప్రాజెక్ట్ వీక్షణ స్థానాలు మార్చి (⌃⌘T), ఎడమవైపు పూర్తి ఎత్తు టెర్మినల్ పొందవచ్చు. ⇧⌘↩ తో టెర్మినల్‌ను పెద్దదిచేయండి.
- టైపింగ్‌లో 500 ms విరామం తరువాత, మూసివేయడానికి ముందు ఫైళ్లు స్వయంచాలకంగా భద్రపరచబడతాయి. బాహ్య మార్పులు లేదా భద్రపరచడం విఫలమైతే సవరణలు ట్యాబ్‌లో ఉంటాయి; కాపీని భద్రపరచవచ్చు.
- కమాండ్లు నడుస్తున్న టెర్మినల్ మూసివేతకు నిర్ధారణ కోరుతుంది; నేపథ్య పనులు, యాప్ నుండి నిష్క్రమణ కూడా ఇందులో ఉంటాయి. ప్యానెల్ దాచినా సెషన్లు నడుస్తూనే ఉంటాయి.
- టెర్మినళ్లు డిఫాల్ట్‌గా Metal వాడతాయి; GPU రెండరింగ్ స్విచ్ వీక్షణ మెనూలో ఉంది. ⌘F తో అవుట్‌పుట్‌లో వెతకండి; కొత్త ట్యాబ్‌లు ప్రస్తుత పని డైరెక్టరీని పొందుతాయి.
- Shift+Enter బహుళ పంక్తుల ప్రాంప్ట్ ఇన్‌పుట్‌ను కొనసాగిస్తుంది. బహుళ పంక్తుల వచనం, ఫైళ్లు, చిత్రాలను అతికించవచ్చు; చిత్రాలు తాత్కాలిక PNGలుగా ఉంటాయి, వాటి పాత్‌లు కొటేషన్ గుర్తుల మధ్య చేర్చబడతాయి.
- వచనం పక్కన Markdown, HTML ముందస్తు వీక్షణ టైప్ చేస్తుండగానే నవీకరించబడుతుంది (⇧⌘V లేదా ట్యాబ్ కుడి పై బటన్లు). Markdown కోసం GitHub వాడే cmark-gfm ఉపయోగిస్తాం: పట్టికలు, పని జాబితాలు, కొట్టివేసిన వచనం, స్వయంచాలక లింకులు.
- అంతటా వెతుకు: Shift రెండుసార్లు నొక్కి, ప్రాజెక్ట్‌లో ఏ ఫైల్‌నైనా సుమారు పేరు సరిపోలికతో కనుగొనండి.
- ఫైల్ పేర్లు, సంయుక్త ఎక్స్‌టెన్షన్లు, స్క్రిప్ట్ ఇంటర్‌ప్రెటర్లతో సహా 915 భాషలు, ఫైల్ ఫార్మాట్ పేర్ల కేటలాగ్‌తో సోర్స్ ఫైళ్లను గుర్తిస్తుంది. మొత్తం 297 Prism భాగాలు (291 స్వతంత్ర వ్యాకరణాలు, 6 సహాయకాలు) చేర్చబడి అవసరానికి అనుగుణంగా లోడ్ అవుతాయి. వ్యాకరణం లేని ఫార్మాట్లకు ప్రాథమిక వచన హైలైటింగ్ వాడతాం.
- ఇంటర్‌ఫేస్‌లో 108 భాషా ఎంపికలు ఉన్నాయి. భాష మెనూలో వెంటనే మార్చండి లేదా సిస్టమ్ భాషను అనుసరించండి. ఎంపిక గుర్తుంచుకుంటుంది; తెరిచిన ఫైళ్లు, భద్రపరచని సవరణలు, టెర్మినల్ సెషన్లు తెరిచే ఉంటాయి. అరబిక్, హీబ్రూ, ఇతర కుడి-నుండి-ఎడమ ఇంటర్‌ఫేస్‌లలో కూడా కోడ్, ముందస్తు వీక్షణలు, టెర్మినల్ అవుట్‌పుట్ ఎడమ-నుండి-కుడిగానే ఉంటాయి. ఎడిటర్, టెర్మినల్ సందర్భాన్ని పరిగణించి ఆంగ్ల వచనాల నుండి అనువాదాలు నేరుగా రాయబడ్డాయి. సిస్టమ్ ప్యానెల్లు macOS భాషా సెట్టింగులను అనుసరిస్తాయి. కేటలాగ్‌లో ప్రతి సహజ లేదా ప్రోగ్రామింగ్ భాష ఉండదు. [Sumi అనువాదం](CONTRIBUTING.md#translating-sumi) చూడండి.
- వెలుగు, చీకటి రూపాలు సిస్టమ్‌ను అనుసరిస్తాయి.

## డౌన్‌లోడ్

- [విడుదలలు](../../releases)
- [రాత్రి బిల్డ్](../../releases/tag/nightly): `main` లో ప్రతి మార్పుకు మళ్లీ నిర్మించబడుతుంది.

`Sumi.zip` డౌన్‌లోడ్ చేసి, విప్పి, Sumi ను Applications కు తరలించండి. ఒకే బిల్డ్ Apple silicon, Intel Mac రెండింటిలోనూ నడుస్తుంది.

Sumi కు Apple Developer ID సంతకం లేదు కాబట్టి macOS మొదటి ప్రారంభాన్ని అడ్డుకుంటుంది. సిస్టమ్ సెట్టింగులు › గోప్యత, భద్రత తెరిచి ఏమైనా తెరువు క్లిక్ చేయండి, లేదా నడపండి:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## అవసరాలు

macOS 14 లేదా తదుపరిది. నిర్మించడానికి Xcode 26 లేదా తదుపరిది అవసరం (Swift 6.2).

## సోర్స్ నుండి నిర్మాణం

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ఫైల్ › తెరువు… (⌘O) ద్వారా ఫోల్డర్‌ను ప్రాజెక్ట్‌గా తెరవండి, లేదా కమాండ్ లైన్ నుండి:

```sh
open -a Sumi path/to/project
```

## కీబోర్డ్ షార్ట్‌కట్‌లు

| చర్య | షార్ట్‌కట్ |
|---|---|
| అంతటా వెతుకు | ⇧⇧ / ⇧⌘O |
| ప్రాజెక్ట్ వీక్షణ | ⌘1 |
| టెర్మినల్ | ⌥F12 |
| కొత్త టెర్మినల్ ట్యాబ్ | ⌘T |
| టెర్మినల్, ప్రాజెక్ట్ స్థానాలు మార్చు | ⌃⌘T |
| టెర్మినల్‌ను పెద్దదిచేయి | ⇧⌘↩ |
| Markdown / HTML — ముందస్తు వీక్షణ చూపు లేదా దాచు | ⇧⌘V |
| ప్రాజెక్ట్ వీక్షణలో ఎంచుకో | ⌥⌘1 |
| తదుపరి ట్యాబ్ / మునుపటి ట్యాబ్ | ⇧⌘] / ⇧⌘[ |
| భద్రపరచు / అన్నీ భద్రపరచు | ⌘S / ⌥⌘S |

## తోడ్పాటు

లోప నివేదికలు, సవరణలు, అనువాదాలకు స్వాగతం. [CONTRIBUTING.md](CONTRIBUTING.md) చదవండి.

## లైసెన్స్

MIT. Sumi లో SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT), GitHub Linguist భాషా కేటలాగ్ (MIT) ఉన్నాయి; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) చూడండి.
