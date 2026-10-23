# Sumi

AI कोडिंग एजंटांसोबत काम करण्यासाठी बनवलेला हलका macOS मजकूर संपादक. मुक्त स्रोत (MIT).

अंगभूत टर्मिनलमध्ये एजंट चालवा, त्याने बदललेल्या फाइल्स क्लिक करून उघडा आणि त्याने लिहिलेले Markdown मांडणी केलेल्या पानांसारखे वाचा.

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

## वैशिष्ट्ये

- टर्मिनलमधील फाइल पथ हे दुवे असतात. कोडिंग एजंटने `⎿ M src/app.ts` किंवा `src/app.ts:42:7` छापल्यावर पथ निळा होतो; क्लिक केल्यावर फाइल त्या ओळीवर उघडते.
- डावीकडे प्रकल्प वृक्ष, मध्यभागी संपादक आणि खाली टर्मिनल.
- टर्मिनल आणि प्रकल्प वृक्षाची जागा बदला (⌃⌘T), म्हणजे डावीकडे पूर्ण उंचीचा टर्मिनल मिळेल. ⇧⌘↩ ने टर्मिनल पूर्ण मोठे करा.
- टाइप करताना 500 ms विराम दिल्यावर आणि बंद करण्यापूर्वी फाइल्स आपोआप जतन होतात. बाह्य बदल किंवा जतन करण्यात अपयश आल्यास संपादने टॅबमध्ये राहतात आणि प्रत जतन करण्याचा पर्याय मिळतो.
- आदेश चालू असलेला टर्मिनल बंद करताना पुष्टी मागितली जाते; यात पार्श्वभूमीतील कामे आणि ॲप बंद करणेही येते. पॅनेल लपवल्यावर सत्रे चालू राहतात.
- टर्मिनल पूर्वनिर्धारितपणे Metal वापरतात; दृश्य मेनूमध्ये GPU रेंडरिंग बदलण्याचा पर्याय आहे. ⌘F ने आउटपुट शोधा; नवीन टॅब सध्याची कार्यरत निर्देशिका घेतात.
- Shift+Enter अनेक ओळींचा प्रॉम्प्ट इनपुट कायम ठेवते. अनेक ओळींचा मजकूर, फाइल्स आणि चित्रे पेस्ट करता येतात; चित्रे तात्पुरत्या PNG म्हणून ठेवली जातात आणि अवतरणचिन्हांतील पथ म्हणून घातली जातात.
- मजकुराशेजारील Markdown व HTML पूर्वावलोकन टाइप करतानाच बदलते (⇧⌘V किंवा टॅबच्या वर उजवीकडील बटणे). Markdown दाखवण्यासाठी GitHub वापरत असलेले cmark-gfm वापरले जाते: तक्ते, कामांच्या याद्या, खोडलेला मजकूर आणि स्वयंचलित दुवे.
- सर्वत्र शोधा: प्रकल्पातील कोणतीही फाइल नावाच्या अंदाजे जुळणीने शोधण्यासाठी Shift दोनदा दाबा.
- 915 भाषा आणि फाइल स्वरूपांच्या नावांच्या सूचीवरून स्रोत फाइल्स ओळखल्या जातात; यात फाइल नावे, संयुक्त विस्तार आणि स्क्रिप्ट इंटरप्रिटर येतात. सर्व 297 Prism घटक (291 स्वतंत्र व्याकरणे आणि 6 सहाय्यक) सोबत येतात व गरजेनुसार लोड होतात. व्याकरण नसलेल्या स्वरूपांमध्ये मूलभूत मजकूर रंगवणे वापरले जाते.
- वापरकर्ता संवादात 108 भाषा पर्याय आहेत. भाषा मेनूमधून लगेच बदला किंवा प्रणालीची भाषा वापरा. निवड लक्षात ठेवली जाते; उघड्या फाइल्स, न जतन केलेली संपादने आणि टर्मिनल सत्रे उघडी राहतात. अरबी, हिब्रू आणि इतर उजवीकडून डावीकडे जाणाऱ्या संवादांत कोड, पूर्वावलोकन आणि टर्मिनल आउटपुट डावीकडून उजवीकडे राहतात. संपादक व टर्मिनलचा संदर्भ घेऊन इंग्रजी मजकुरावरून थेट भाषांतरे लिहिली आहेत. प्रणालीचे पॅनेल macOS च्या भाषा सेटिंग वापरतात. ही सूची प्रत्येक नैसर्गिक किंवा प्रोग्रामिंग भाषा समाविष्ट करत नाही. [Sumi चे भाषांतर](CONTRIBUTING.md#translating-sumi) पाहा.
- उजळ आणि गडद रूप प्रणालीप्रमाणे बदलते.

## डाउनलोड

- [प्रकाशने](../../releases)
- [रात्रीचे बिल्ड](../../releases/tag/nightly): `main` मधील प्रत्येक बदलावर पुन्हा तयार होते.

`Sumi.zip` डाउनलोड करा, उघडा आणि Sumi Applications मध्ये हलवा. एकच बिल्ड Apple silicon आणि Intel Mac दोन्हींवर चालते.

Sumi वर Apple Developer ID ची स्वाक्षरी नाही, त्यामुळे macOS पहिले उघडणे अडवते. प्रणाली सेटिंग › गोपनीयता आणि सुरक्षा उघडून तरीही उघडा पर्याय निवडा किंवा हे चालवा:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## आवश्यकता

macOS 14 किंवा नवीन. बिल्डसाठी Xcode 26 किंवा नवीन (Swift 6.2) आवश्यक आहे.

## स्रोतावरून बिल्ड करा

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

फाइल › उघडा… (⌘O) मधून फोल्डर प्रकल्प म्हणून उघडा किंवा आदेश ओळीतून:

```sh
open -a Sumi path/to/project
```

## कीबोर्ड शॉर्टकट

| कृती | शॉर्टकट |
|---|---|
| सर्वत्र शोधा | ⇧⇧ किंवा ⇧⌘O |
| प्रकल्प वृक्ष | ⌘1 |
| टर्मिनल | ⌥F12 |
| नवीन टर्मिनल टॅब | ⌘T |
| टर्मिनल आणि प्रकल्पाची जागा बदला | ⌃⌘T |
| टर्मिनल पूर्ण मोठे करा | ⇧⌘↩ |
| Markdown / HTML पूर्वावलोकन | ⇧⌘V |
| प्रकल्प वृक्षात निवडा | ⌥⌘1 |
| पुढील टॅब / मागील टॅब | ⇧⌘] / ⇧⌘[ |
| जतन करा / सर्व जतन करा | ⌘S / ⌥⌘S |

## योगदान

दोष अहवाल, दुरुस्त्या आणि भाषांतरांचे स्वागत आहे. [CONTRIBUTING.md](CONTRIBUTING.md) वाचा.

## परवाना

MIT. Sumi मध्ये SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) आणि GitHub Linguist भाषा सूची (MIT) आहेत; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) पाहा.
