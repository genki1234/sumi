# Sumi

AI कोडिंग एजेंटों के साथ काम करने के लिए बना हल्का macOS टेक्स्ट एडिटर। ओपन सोर्स (MIT)।

अंतर्निहित टर्मिनल में अपना एजेंट चलाएँ, उसके बदले हुए फ़ाइलों को क्लिक करके खोलें और उसके लिखे Markdown को प्रस्तुत पृष्ठों के रूप में पढ़ें।

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

## सुविधाएँ

- टर्मिनल में फ़ाइल पथ लिंक होते हैं। जब कोडिंग एजेंट `⎿ M src/app.ts` या `src/app.ts:42:7` छापता है, पथ नीला हो जाता है। क्लिक करने पर फ़ाइल उसी पंक्ति पर खुलती है।
- बाईं ओर प्रोजेक्ट दृश्य, बीच में एडिटर और नीचे टर्मिनल है।
- टर्मिनल और प्रोजेक्ट दृश्य की जगह बदलें (⌃⌘T), ताकि बाईं ओर पूरी ऊँचाई का टर्मिनल मिले। ⇧⌘↩ से टर्मिनल अधिकतम करें।
- टाइपिंग में 500 ms रुकने पर और बंद करने से पहले फ़ाइलें अपने आप सहेजी जाती हैं। बाहरी बदलाव या सहेजने में विफलता होने पर आपके संपादन टैब में बने रहते हैं और प्रतिलिपि सहेजने का विकल्प मिलता है।
- चलते आदेशों वाला टर्मिनल बंद करते समय पुष्टि माँगी जाती है। इसमें पृष्ठभूमि के काम और ऐप से बाहर निकलना भी शामिल हैं। पैनल छिपाने पर सत्र चलते रहते हैं।
- टर्मिनल सामान्यतः Metal का उपयोग करते हैं। दृश्य मेनू में GPU से चित्रण से इसे बदल सकते हैं। ⌘F से आउटपुट खोजें। नए टैब वर्तमान कार्यशील फ़ोल्डर अपनाते हैं।
- Shift+Enter से बहुपंक्ति प्रॉम्प्ट इनपुट बना रहता है। पेस्ट में बहुपंक्ति पाठ, फ़ाइलें और चित्र समर्थित हैं। चित्र अस्थायी PNG के रूप में रखे जाते हैं और उद्धरणों में घिरे पथों के रूप में डाले जाते हैं।
- पाठ के बगल में Markdown और HTML पूर्वावलोकन है, जो टाइप करते समय बदलता है (⇧⌘V या टैब के ऊपर दाईं ओर के बटन)। Markdown के लिए GitHub वाला cmark-gfm रेंडरर इस्तेमाल होता है: तालिकाएँ, कार्य-सूचियाँ, काटा हुआ पाठ और स्वचालित लिंक।
- हर जगह खोजें: प्रोजेक्ट की किसी भी फ़ाइल को नाम के अनुमानित मिलान से खोजने के लिए Shift दो बार दबाएँ।
- 915 भाषा और फ़ाइल प्रारूप नामों की सूची से स्रोत फ़ाइलें पहचानी जाती हैं। इसमें फ़ाइल नाम, संयुक्त एक्सटेंशन और स्क्रिप्ट इंटरप्रेटर शामिल हैं। सभी 297 Prism घटक (291 स्वतंत्र व्याकरण और 6 सहायक) साथ मिलते हैं और आवश्यकता पर लोड होते हैं। बिना व्याकरण वाले प्रारूपों में सामान्य पाठ हाइलाइटिंग होती है।
- इंटरफ़ेस में 108 भाषा विकल्प हैं। भाषा मेनू से तुरंत बदलें या सिस्टम की भाषा अपनाएँ। चयन याद रखा जाता है; खुली फ़ाइलें, बिना सहेजे संपादन और टर्मिनल सत्र खुले रहते हैं। अरबी, हिब्रू और अन्य दाएँ से बाएँ इंटरफ़ेस में भी कोड, पूर्वावलोकन और टर्मिनल आउटपुट बाएँ से दाएँ रहते हैं। अनुवाद अंग्रेज़ी पाठ से सीधे, एडिटर और टर्मिनल के संदर्भ के साथ लिखे गए हैं। सिस्टम के पैनल macOS की भाषा सेटिंग अपनाते हैं। यह सूची हर प्राकृतिक या प्रोग्रामिंग भाषा को शामिल नहीं करती। [Sumi का अनुवाद](CONTRIBUTING.md#translating-sumi) देखें।
- हल्का और गहरा रूप सिस्टम के अनुसार बदलते हैं।

## डाउनलोड

- [नवीनतम रिलीज़](../../releases/latest)
- [रात्रिकालीन बिल्ड](../../releases/tag/nightly): `main` में हर बदलाव पर दोबारा बनता है।

`Sumi.zip` डाउनलोड करें, खोलें और Sumi को Applications में ले जाएँ। एक ही बिल्ड Apple silicon और Intel Mac दोनों पर चलता है।

Sumi पर Apple Developer ID के हस्ताक्षर नहीं हैं, इसलिए macOS पहली बार खोलने से रोकता है। सिस्टम सेटिंग › गोपनीयता और सुरक्षा में जाकर किसी भी स्थिति में खोलें पर क्लिक करें, या यह चलाएँ:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## आवश्यकताएँ

macOS 14 या नया। बनाने के लिए Xcode 26 या नया (Swift 6.2) चाहिए।

## स्रोत से बनाएँ

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

फ़ाइल › खोलें… (⌘O) से फ़ोल्डर को प्रोजेक्ट के रूप में खोलें, या कमांड लाइन से:

```sh
open -a Sumi path/to/project
```

## कीबोर्ड शॉर्टकट

| क्रिया | शॉर्टकट |
|---|---|
| हर जगह खोजें | ⇧⇧ या ⇧⌘O |
| प्रोजेक्ट दृश्य | ⌘1 |
| टर्मिनल | ⌥F12 |
| नया टर्मिनल टैब | ⌘T |
| टर्मिनल और प्रोजेक्ट की जगह बदलें | ⌃⌘T |
| टर्मिनल बड़ा करें | ⇧⌘↩ |
| Markdown / HTML पूर्वावलोकन | ⇧⌘V |
| प्रोजेक्ट दृश्य में चुनें | ⌥⌘1 |
| अगला टैब / पिछला टैब | ⇧⌘] / ⇧⌘[ |
| सहेजें / सभी सहेजें | ⌘S / ⌥⌘S |

## योगदान

बग रिपोर्ट, सुधार और अनुवादों का स्वागत है। [CONTRIBUTING.md](CONTRIBUTING.md) पढ़ें।

## लाइसेंस

MIT। Sumi में SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) और GitHub Linguist की भाषा सूची (MIT) शामिल हैं। [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) देखें।
