# Sumi

د macOS لپاره سپک متن سمونګر، چې د AI کوډ لیکونکو استازو سره د کار لپاره جوړ شوی. پرانیستې سرچینه (MIT).

خپل استازی په دنني ټرمینل کې وچلوئ، پر هغو دوتنو کلیک وکړئ چې دی یې بدلوي، او لیکلی Markdown یې د بڼه ورکړل شوو پاڼو په توګه ولولئ.

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

## ځانګړنې

- په ټرمینل کې د دوتنو لارې تړوني دي. کله چې استازی `⎿ M src/app.ts` یا `src/app.ts:42:7` ولیکي، لاره شنه آبي کېږي؛ په کلیک دوتنه په هماغه کرښه پرانیستل کېږي.
- د پروژې ونه کیڼ لوري، سمونګر منځ کې، ټرمینل لاندې.
- د ټرمینل او پروژې د ونې ځایونه بدل کړئ (⌃⌘T)، څو ټرمینل کیڼ لوري ته په ټول لوړوالي وي. په ⇧⌘↩ یې تر ټولو لوی کړئ.
- دوتنې د لیکلو له 500 ms تم کېدو وروسته او تر تړلو مخکې پخپله خوندي کېږي. د بهرنیو بدلونونو یا خوندي کولو د ناکامۍ پر مهال سمونونه په ټب کې پاتې کېږي او یوه کاپي خوندي کېدای شي.
- د روانو امرونو لرونکی ټرمینل تړل تایید غواړي؛ شالید دندې او له کاریال څخه وتل هم پکې شامل دي. د پینل پټول ناستې روانې پرېږدي.
- ټرمینلونه په تلواله Metal کاروي؛ د GPU په وسیله انځورولو سویچ په لید کې دی. په ⌘F پایله ولټوئ؛ نوي ټبونه اوسنۍ کاري پوښۍ اخلي.
- Shift+Enter د څو کرښو غوښتنې لیکل ساتي. نښلول د څو کرښو متن، دوتنو او انځورونو ملاتړ کوي؛ انځورونه د لنډمهالو PNG په توګه ساتل کېږي او لارې یې د اقتباس نښو کې ننوځي.
- د متن ترڅنګ د Markdown او HTML مخکتنه د لیکلو پر مهال نوې کېږي (⇧⌘V یا د ټب په ښي پاس کې تڼۍ). Markdown د GitHub په cmark-gfm انځورېږي: جدولونه، د دندو لړلیکونه، خط وهل شوی متن او خپلکاري تړوني.
- هر ځای ولټوئ: Shift دوه ځله کېکاږئ او د پروژې هره دوتنه د نوم په نږدې سمون ومومئ.
- سرچینې دوتنې د 915 ژبو او دوتنې بڼو د نومونو له نوملړ څخه پېژني؛ دوتنې نومونه، ګډې پسوندونه او د سکرېپټ ژباړونکي هم پکې دي. د Prism ټولې 297 برخې (291 خپلواکې ګرامرونه او 6 مرستندویه برخې) ورسره دي او د اړتیا پر مهال پورته کېږي. بې ګرامره بڼې د متن بنسټیز رنګول کاروي.
- کارن مخ 108 ژبې لري. د ژبې له غورنۍ سمدستي بدله کړئ یا د سیسټم ژبه تعقیب کړئ. ټاکنه یادېږي؛ پرانیستې دوتنې، ناخوندي سمونونه او د ټرمینل ناستې پرانیستې پاتې کېږي. په عربي، عبري او نورو ښي نه کیڼ مخونو کې کوډ، مخکتنې او د ټرمینل پایلې کیڼ نه ښي پاتې کېږي. ژباړې د سمونګر او ټرمینل د کارونې په پام کې نیولو سره نېغ له انګلیسي متنونو لیکل شوې دي. د سیسټم پینلونه د macOS د ژبې امستنې تعقیبوي. نوملړ هره طبیعي یا پروګرام لیکنې ژبه نه پوښي. [د Sumi ژباړه](CONTRIBUTING.md#translating-sumi) وګورئ.
- روښانه او تیاره بڼه د سیسټم سره بدلېږي.

## ښکته کول

- [وروستۍ خپرونه](../../releases/latest)
- [شپنۍ جوړونه](../../releases/tag/nightly): په `main` کې له هر بدلون سره بیا جوړېږي.

`Sumi.zip` ښکته کړئ، له زېپ څخه یې وباسئ او Sumi د Applications پوښۍ ته یوسئ. یوه جوړونه د Apple silicon او Intel په دواړو Mac کمپیوټرونو کار کوي.

Sumi د Apple Developer ID لاسلیک نه لري، نو macOS لومړی پرانیستل بندوي. د سیسټم امستنې › محرمیت او امنیت پرانیزئ او بیا هم پرانیزئ کلیک کړئ، یا دا وچلوئ:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## اړتیاوې

macOS 14 یا نوی. جوړول Xcode 26 یا نوی غواړي (Swift 6.2).

## له سرچینې جوړول

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

له دوتنه › پرانیزئ… (⌘O) څخه پوښۍ د پروژې په توګه پرانیزئ، یا له امر لیکې:

```sh
open -a Sumi path/to/project
```

## د کیبورډ لنډلارې

| کړنه | لنډلاره |
|---|---|
| هر ځای ولټوئ | ⇧⇧ / ⇧⌘O |
| د پروژې ونه | ⌘1 |
| ټرمینل | ⌥F12 |
| د ټرمینل نوی ټب | ⌘T |
| د ټرمینل او پروژې ځایونه بدل کړئ | ⌃⌘T |
| ټرمینل تر ټولو لوی کړئ | ⇧⌘↩ |
| Markdown / HTML — مخکتنه وښایئ/پټه کړئ | ⇧⌘V |
| د پروژې په ونه کې یې وټاکئ | ⌥⌘1 |
| راتلونکی ټب / مخکینی ټب | ⇧⌘] / ⇧⌘[ |
| خوندي کړئ / ټول خوندي کړئ | ⌘S / ⌥⌘S |

## ګډون

د تېروتنو راپورونه، سمونې او ژباړې ښه راغلاست لري. [CONTRIBUTING.md](CONTRIBUTING.md) ولولئ.

## جواز

MIT. په Sumi کې SwiftTerm (MIT)، cmark-gfm (BSD-2-Clause)، Prism (MIT) او د GitHub Linguist د ژبو نوملړ (MIT) شامل دي؛ [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) وګورئ.
