# Sumi

AI कोडिङ एजेन्टहरूसँग काम गर्न बनाइएको हलुका macOS पाठ सम्पादक। खुला स्रोत (MIT)।

आफ्नो एजेन्टलाई भित्रकै टर्मिनलमा चलाउनुहोस्, उसले बदलेका फाइल क्लिक गरेर खोल्नुहोस् र उसले लेखेको Markdown लाई सजाइएका पृष्ठका रूपमा पढ्नुहोस्।

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

## सुविधाहरू

- टर्मिनलका फाइल पथहरू लिङ्क हुन्। कोडिङ एजेन्टले `⎿ M src/app.ts` वा `src/app.ts:42:7` देखाउँदा पथ नीलो हुन्छ र क्लिक गर्दा फाइल त्यही पङ्क्तिमा खुल्छ।
- परियोजनाको रूख बायाँ, सम्पादक बीचमा र टर्मिनल तल हुन्छ।
- टर्मिनल र परियोजनाको रूखको स्थान साट्नुहोस् (⌃⌘T), ताकि बायाँ पूरा उचाइको टर्मिनल रहोस्। ⇧⌘↩ ले टर्मिनल अधिकतम पार्नुहोस्।
- टाइप गर्न 500 ms रोकिएपछि र बन्द गर्नुअघि फाइल स्वतः बचत हुन्छ। बाह्य परिवर्तन वा बचत असफल हुँदा सम्पादनहरू ट्याबमै रहन्छन् र प्रतिलिपि बचत गर्ने विकल्प पाइन्छ।
- आदेश चलिरहेको टर्मिनल बन्द गर्दा पुष्टि मागिन्छ; यसमा पृष्ठभूमिका काम र एपबाट बाहिरिनु पनि पर्छ। प्यानल लुकाउँदा सत्रहरू चलिरहन्छन्।
- टर्मिनलले पूर्वनिर्धारित रूपमा Metal प्रयोग गर्छन्; दृश्य मा GPU रेन्डरिङ स्विच छ। ⌘F ले आउटपुट खोज्नुहोस्; नयाँ ट्याबले हालको कार्य डाइरेक्टरी लिन्छन्।
- Shift+Enter ले धेरै पङ्क्तिको प्रम्प्ट इनपुट कायम राख्छ। धेरै पङ्क्तिको पाठ, फाइल र तस्बिर टाँस्न सकिन्छ; तस्बिर अस्थायी PNG का रूपमा राखिन्छन् र उद्धरणचिह्नभित्रका पथका रूपमा घुसाइन्छन्।
- पाठसँगै Markdown र HTML पूर्वावलोकन टाइप गर्दा अद्यावधिक हुन्छ (⇧⌘V वा ट्याबको माथि दायाँका बटन)। Markdown देखाउन GitHub ले प्रयोग गर्ने cmark-gfm प्रयोग हुन्छ: तालिका, कार्यसूची, काटिएको पाठ र स्वचालित लिङ्क।
- सबैतिर खोज्नुहोस्: परियोजनाको जुनसुकै फाइल नामको अनुमानित मिलानबाट फेला पार्न Shift दुई पटक थिच्नुहोस्।
- 915 भाषा र फाइल ढाँचाका नाम भएको सूचीले स्रोत फाइल चिन्छ; यसमा फाइल नाम, संयुक्त एक्सटेन्सन र स्क्रिप्ट इन्टरप्रेटर पर्छन्। सबै 297 Prism अवयव (291 स्वतन्त्र व्याकरण र 6 सहायक) समावेश छन् र आवश्यकताअनुसार लोड हुन्छन्। व्याकरण नभएका ढाँचामा आधारभूत पाठ हाइलाइटिङ हुन्छ।
- इन्टरफेसमा 108 भाषा विकल्प छन्। भाषा मेनुबाट तुरुन्त बदल्नुहोस् वा प्रणालीको भाषा पछ्याउनुहोस्। रोजाइ सम्झिइन्छ; खुला फाइल, बचत नभएका सम्पादन र टर्मिनल सत्र खुलै रहन्छन्। अरबी, हिब्रू र दायाँबाट बायाँका अन्य इन्टरफेसमा पनि कोड, पूर्वावलोकन र टर्मिनल आउटपुट बायाँबाट दायाँ रहन्छन्। सम्पादक र टर्मिनलको सन्दर्भ लिएर अङ्ग्रेजी पाठबाट सीधै अनुवाद लेखिएका छन्। प्रणालीका प्यानलले macOS भाषा सेटिङ पछ्याउँछन्। सूचीले हरेक प्राकृतिक वा प्रोग्रामिङ भाषा समेट्दैन। [Sumi अनुवाद](CONTRIBUTING.md#translating-sumi) हेर्नुहोस्।
- उज्यालो र अँध्यारो रूप प्रणालीअनुसार हुन्छ।

## डाउनलोड

- [नवीनतम संस्करण](../../releases/latest)
- [रातिको बिल्ड](../../releases/tag/nightly): `main` मा हरेक परिवर्तन हुँदा फेरि बनाइन्छ।

`Sumi.zip` डाउनलोड गरी खोल्नुहोस् र Sumi लाई Applications मा सार्नुहोस्। एउटै बिल्ड Apple silicon र Intel Mac दुवैमा चल्छ।

Sumi मा Apple Developer ID को हस्ताक्षर छैन, त्यसैले macOS ले पहिलो पटक खोल्न रोक्छ। प्रणाली सेटिङ › गोपनीयता र सुरक्षा खोली जे भए पनि खोल्ने विकल्प क्लिक गर्नुहोस् वा यो चलाउनुहोस्:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## आवश्यकता

macOS 14 वा नयाँ। बनाउन Xcode 26 वा नयाँ (Swift 6.2) चाहिन्छ।

## स्रोतबाट बनाउनुहोस्

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

फाइल › खोल्नुहोस्… (⌘O) बाट फोल्डरलाई परियोजनाका रूपमा खोल्नुहोस् वा आदेश पङ्क्तिबाट:

```sh
open -a Sumi path/to/project
```

## किबोर्ड सर्टकट

| कार्य | सर्टकट |
|---|---|
| सबैतिर खोज्नुहोस् | ⇧⇧ वा ⇧⌘O |
| परियोजनाको रूख | ⌘1 |
| टर्मिनल | ⌥F12 |
| नयाँ टर्मिनल ट्याब | ⌘T |
| टर्मिनल र परियोजनाको स्थान साट्नुहोस् | ⌃⌘T |
| टर्मिनल अधिकतम पार्नुहोस् | ⇧⌘↩ |
| Markdown / HTML पूर्वावलोकन | ⇧⌘V |
| परियोजनाको रूखमा छान्नुहोस् | ⌥⌘1 |
| अर्को ट्याब / अघिल्लो ट्याब | ⇧⌘] / ⇧⌘[ |
| बचत गर्नुहोस् / सबै बचत गर्नुहोस् | ⌘S / ⌥⌘S |

## योगदान

त्रुटि रिपोर्ट, सुधार र अनुवाद स्वागतयोग्य छन्। [CONTRIBUTING.md](CONTRIBUTING.md) पढ्नुहोस्।

## इजाजतपत्र

MIT। Sumi मा SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) र GitHub Linguist भाषा सूची (MIT) छन्; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) हेर्नुहोस्।
