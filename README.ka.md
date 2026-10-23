# Sumi

მსუბუქი ტექსტური რედაქტორი macOS-ისთვის, შექმნილი ხელოვნური ინტელექტის კოდის აგენტებთან სამუშაოდ. ღია კოდით (MIT).

გაუშვით აგენტი ჩაშენებულ ტერმინალში, მის მიერ შეცვლილ ფაილებს გასახსნელად დააწკაპუნეთ და მის დაწერილ Markdown-ს ფორმატირებული გვერდების სახით გაეცანით.

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

## შესაძლებლობები

- ტერმინალში ფაილების ბილიკები ბმულებია. როდესაც კოდის აგენტი ბეჭდავს `⎿ M src/app.ts` ან `src/app.ts:42:7`, ბილიკი ლურჯდება და დაწკაპუნებით ფაილი შესაბამის სტრიქონზე იხსნება.
- პროექტის ხე მარცხნივაა, რედაქტორი ცენტრში, ტერმინალი ქვემოთ.
- გაუცვალეთ ადგილები ტერმინალსა და პროექტის ხეს (⌃⌘T), რათა მარცხნივ სრული სიმაღლის ტერმინალი მიიღოთ. გაშალეთ ტერმინალი ⇧⌘↩-ით.
- ფაილები ავტომატურად ინახება აკრეფის 500 ms პაუზის შემდეგ და დახურვამდე. გარე ცვლილებისა თუ შენახვის წარუმატებლობისას თქვენი ცვლილებები ჩანართში რჩება და ასლის შენახვა შეგიძლიათ.
- მიმდინარე ბრძანებების მქონე ტერმინალის დახურვა დადასტურებას მოითხოვს, ფონური დავალებებისა და აპიდან გასვლის ჩათვლით. პანელის დამალვისას სესიები მუშაობას აგრძელებს.
- ტერმინალები ნაგულისხმევად Metal-ს იყენებს; ხედი მენიუში არის GPU-ით გამოსახვა გადამრთველი. გამოტანილ ტექსტში მოძებნეთ ⌘F-ით; ახალი ჩანართები მიმდინარე სამუშაო საქაღალდეს იღებს.
- Shift+Enter ინარჩუნებს მრავალსტრიქონიან მოთხოვნის შეყვანას. ჩასმა მხარს უჭერს მრავალსტრიქონიან ტექსტს, ფაილებსა და სურათებს; სურათები დროებით PNG-ებად ინახება და ბრჭყალებში ჩასმული ბილიკებით ემატება.
- ტექსტის გვერდით Markdown-ისა და HTML-ის წინასწარი ხედი აკრეფისას ახლდება (⇧⌘V ან ჩანართის ზედა მარჯვენა ღილაკები). Markdown-ს გამოსახავს GitHub-ის მიერ გამოყენებული cmark-gfm: ცხრილები, დავალებების სიები, გადახაზვა და ავტომატური ბმულები.
- ძიება ყველგან: ორჯერ დააჭირეთ Shift-ს პროექტის ნებისმიერი ფაილის სახელის მიახლოებითი ძიებით საპოვნელად.
- საწყისი კოდის ფაილები ამოიცნობა ენებისა და ფაილის ფორმატების 915 სახელის კატალოგით, ფაილის სახელების, შედგენილი გაფართოებებისა და სკრიპტების ინტერპრეტატორების ჩათვლით. Prism-ის ყველა 297 კომპონენტი (291 დამოუკიდებელი გრამატიკა და 6 დამხმარე) ჩართულია და საჭიროებისამებრ იტვირთება. გრამატიკის გარეშე ფორმატებს ტექსტის ძირითადი შეფერადება აქვს.
- ინტერფეისი 108 ენას გთავაზობთ. ენა მენიუდან დაუყოვნებლივ შეცვალეთ ენა ან მიჰყევით სისტემის ენას. არჩევანი ინახება; ღია ფაილები, შეუნახავი ცვლილებები და ტერმინალის სესიები ღია რჩება. არაბულ, ებრაულ და სხვა მარჯვნიდან მარცხნივ ინტერფეისებში კოდი, წინასწარი ხედი და ტერმინალის გამოტანა კვლავ მარცხნიდან მარჯვნივაა. თარგმანები უშუალოდ ინგლისური ტექსტებიდანაა დაწერილი, რედაქტორისა და ტერმინალის კონტექსტის გათვალისწინებით. სისტემის პანელები macOS-ის ენის პარამეტრებს მიჰყვება. კატალოგი ყველა ბუნებრივ თუ პროგრამირების ენას არ მოიცავს. იხილეთ [Sumi-ს თარგმნა](CONTRIBUTING.md#translating-sumi).
- ღია და მუქი იერი სისტემას მიჰყვება.

## ჩამოტვირთვა

- [უახლესი გამოშვება](../../releases/latest)
- [ღამის ვერსია](../../releases/tag/nightly): ახლიდან იგება `main`-ის ყოველი ცვლილებისას.

ჩამოტვირთეთ `Sumi.zip`, გახსენით არქივი და გადაიტანეთ Sumi Applications-ში. ერთი ვერსია მუშაობს როგორც Apple silicon, ისე Intel Mac-ებზე.

Sumi-ს Apple Developer ID ხელმოწერა არ აქვს, ამიტომ macOS პირველ გაშვებას ბლოკავს. გახსენით სისტემის პარამეტრები › კონფიდენციალურობა და უსაფრთხოება და აირჩიეთ მაინც გახსნა, ან გაუშვით:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## მოთხოვნები

macOS 14 ან უფრო ახალი. ასაგებად საჭიროა Xcode 26 ან უფრო ახალი (Swift 6.2).

## აგება საწყისი კოდიდან

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

გახსენით საქაღალდე პროექტად ფაილი › გახსნა… მენიუდან (⌘O) ან ბრძანების სტრიქონიდან:

```sh
open -a Sumi path/to/project
```

## კლავიატურის მალსახმობები

| მოქმედება | მალსახმობი |
|---|---|
| ძიება ყველგან | ⇧⇧ ან ⇧⌘O |
| პროექტის ხე | ⌘1 |
| ტერმინალი | ⌥F12 |
| ტერმინალის ახალი ჩანართი | ⌘T |
| ტერმინალისა და პროექტის ადგილების გაცვლა | ⌃⌘T |
| ტერმინალის გაშლა | ⇧⌘↩ |
| Markdown / HTML წინასწარი ხედი | ⇧⌘V |
| მონიშვნა პროექტის ხეში | ⌥⌘1 |
| მომდევნო ჩანართი / წინა ჩანართი | ⇧⌘] / ⇧⌘[ |
| შენახვა / ყველას შენახვა | ⌘S / ⌥⌘S |

## წვლილის შეტანა

შეცდომების შეტყობინებები, შესწორებები და თარგმანები მისასალმებელია. წაიკითხეთ [CONTRIBUTING.md](CONTRIBUTING.md).

## ლიცენზია

MIT. Sumi შეიცავს SwiftTerm-ს (MIT), cmark-gfm-ს (BSD-2-Clause), Prism-ს (MIT) და GitHub Linguist-ის ენების კატალოგს (MIT); იხილეთ [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
