# Sumi

AI நிரலாக்க முகவர்களுடன் இணைந்து பணியாற்ற உருவாக்கப்பட்ட எளிய macOS உரைத் திருத்தி. திறந்த மூலம் (MIT).

உள்ளமைந்த முனையத்தில் முகவரை இயக்குங்கள், அது மாற்றும் கோப்புகளைச் சொடுக்கித் திறங்கள், அது எழுதும் Markdown ஐ வடிவமைக்கப்பட்ட பக்கங்களாகப் படியுங்கள்.

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

## அம்சங்கள்

- முனையத்தில் கோப்புப் பாதைகள் இணைப்புகளாகும். முகவர் `⎿ M src/app.ts` அல்லது `src/app.ts:42:7` எனக் காட்டினால் பாதை நீலமாகும்; சொடுக்கினால் அந்த வரியில் கோப்பு திறக்கும்.
- திட்டக் காட்சி இடப்புறம், திருத்தி நடுவில், முனையம் கீழே.
- முனையத்தையும் திட்டக் காட்சியையும் இடமாற்றி (⌃⌘T), இடப்புறம் முழு உயர முனையத்தைப் பெறலாம். ⇧⌘↩ மூலம் முனையத்தைப் பெரிதாக்கலாம்.
- தட்டச்சில் 500 ms இடைவெளிக்குப் பிறகும் மூடுவதற்கு முன்பும் கோப்புகள் தானாகச் சேமிக்கப்படும். வெளிப்புற மாற்றம் அல்லது சேமிப்புத் தோல்வியின்போது திருத்தங்கள் தாவலில் இருக்கும்; நகலைச் சேமிக்கலாம்.
- கட்டளைகள் இயங்கும் முனையத்தை மூட உறுதிப்படுத்தல் தேவை; பின்னணிப் பணிகளும் செயலியிலிருந்து வெளியேறுவதும் இதில் அடங்கும். பலகையை மறைத்தால் அமர்வுகள் தொடர்ந்து இயங்கும்.
- முனையங்கள் இயல்பாக Metal பயன்படுத்தும்; GPU வரைதல் தேர்வு காட்சி மெனுவில் உள்ளது. ⌘F மூலம் வெளியீட்டில் தேடலாம்; புதிய தாவல்கள் தற்போதைய பணிக் கோப்பகத்தைப் பெறும்.
- Shift+Enter பலவரி உள்ளீட்டைத் தக்கவைக்கிறது. பலவரி உரை, கோப்புகள், படங்களை ஒட்டலாம்; படங்கள் தற்காலிக PNG ஆக வைக்கப்பட்டு, அவற்றின் பாதைகள் மேற்கோள்களுக்குள் சேர்க்கப்படும்.
- உரைக்கு அருகில் Markdown, HTML முன்னோட்டம் தட்டச்சின்போது புதுப்பிக்கப்படும் (⇧⌘V அல்லது தாவலின் மேல் வலப்புறப் பொத்தான்கள்). Markdown, GitHub பயன்படுத்தும் cmark-gfm மூலம் காட்டப்படுகிறது: அட்டவணைகள், பணிப் பட்டியல்கள், அடித்தழித்த உரை, தானியக்க இணைப்புகள்.
- எங்கும் தேடு: Shift ஐ இருமுறை அழுத்தி, திட்டத்திலுள்ள எந்தக் கோப்பையும் தோராயமான பெயர்ப் பொருத்தம் மூலம் கண்டறியலாம்.
- கோப்புப் பெயர்கள், கூட்டுக் கோப்பு நீட்சிகள், ஸ்கிரிப்ட் விளக்கிகள் உள்ளிட்ட 915 மொழி மற்றும் கோப்பு வடிவப் பெயர்களின் பட்டியலைக் கொண்டு மூலக் கோப்புகளை அடையாளம் காணும். அனைத்து 297 Prism கூறுகளும் (291 தனித்த இலக்கணங்கள், 6 உதவிக் கூறுகள்) சேர்க்கப்பட்டு தேவைக்கேற்ப ஏற்றப்படும். இலக்கணம் இல்லாத வடிவங்களுக்கு அடிப்படை உரை வண்ணமிடல் பயன்படும்.
- இடைமுகத்தில் 108 மொழித் தேர்வுகள் உள்ளன. மொழி மெனுவில் உடனே மாற்றலாம் அல்லது கணினி மொழியைப் பின்பற்றலாம். தேர்வு நினைவில் வைக்கப்படும்; திறந்த கோப்புகள், சேமிக்காத திருத்தங்கள், முனைய அமர்வுகள் திறந்தே இருக்கும். அரபு, எபிரேயம் போன்ற வலமிருந்து இடமாகச் செல்லும் இடைமுகங்களிலும் குறியீடு, முன்னோட்டம், முனைய வெளியீடு இடமிருந்து வலமாகவே இருக்கும். திருத்தி, முனையச் சூழலைக் கருத்தில் கொண்டு ஆங்கில உரைகளிலிருந்து மொழிபெயர்ப்புகள் நேரடியாக எழுதப்பட்டுள்ளன. கணினிப் பலகைகள் macOS மொழி அமைப்புகளைப் பின்பற்றும். எல்லா இயற்கை அல்லது நிரலாக்க மொழிகளும் இப்பட்டியலில் இல்லை. [Sumi மொழிபெயர்ப்பு](CONTRIBUTING.md#translating-sumi) பார்க்கவும்.
- ஒளி மற்றும் இருள் தோற்றங்கள் கணினியைப் பின்பற்றும்.

## பதிவிறக்கம்

- [சமீபத்திய வெளியீடு](../../releases/latest)
- [இரவுக் கட்டமைப்பு](../../releases/tag/nightly): `main` இன் ஒவ்வொரு மாற்றத்திலும் மீண்டும் கட்டமைக்கப்படும்.

`Sumi.zip` பதிவிறக்கி, பிரித்தெடுத்து, Sumi ஐ Applications க்கு நகர்த்தவும். ஒரே கட்டமைப்பு Apple silicon மற்றும் Intel Mac இரண்டிலும் இயங்கும்.

Sumi இல் Apple Developer ID கையொப்பம் இல்லை; எனவே macOS முதல் இயக்கத்தைத் தடுக்கும். கணினி அமைப்புகள் › தனியுரிமை மற்றும் பாதுகாப்பில் எப்படியும் திற என்பதைச் சொடுக்கவும், அல்லது இயக்கவும்:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## தேவைகள்

macOS 14 அல்லது அதற்குப் பிந்தையது. கட்டமைக்க Xcode 26 அல்லது அதற்குப் பிந்தையது தேவை (Swift 6.2).

## மூலத்திலிருந்து கட்டமைத்தல்

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

கோப்பு › திற… (⌘O) மூலம் கோப்புறையைத் திட்டமாகத் திறக்கவும், அல்லது கட்டளை வரியில்:

```sh
open -a Sumi path/to/project
```

## விசைப்பலகைக் குறுக்குவழிகள்

| செயல் | குறுக்குவழி |
|---|---|
| எங்கும் தேடு | ⇧⇧ / ⇧⌘O |
| திட்டக் காட்சி | ⌘1 |
| முனையம் | ⌥F12 |
| புதிய முனையத் தாவல் | ⌘T |
| முனையத்தையும் திட்டத்தையும் இடமாற்று | ⌃⌘T |
| முனையத்தைப் பெரிதாக்கு | ⇧⌘↩ |
| Markdown / HTML — முன்னோட்டத்தைக் காட்டு அல்லது மறை | ⇧⌘V |
| திட்டக் காட்சியில் தேர்ந்தெடு | ⌥⌘1 |
| அடுத்த தாவல் / முந்தைய தாவல் | ⇧⌘] / ⇧⌘[ |
| சேமி / அனைத்தையும் சேமி | ⌘S / ⌥⌘S |

## பங்களிப்பு

பிழை அறிக்கைகள், திருத்தங்கள், மொழிபெயர்ப்புகள் வரவேற்கப்படுகின்றன. [CONTRIBUTING.md](CONTRIBUTING.md) படிக்கவும்.

## உரிமம்

MIT. Sumi இல் SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT), GitHub Linguist மொழிப் பட்டியல் (MIT) உள்ளன; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) பார்க்கவும்.
