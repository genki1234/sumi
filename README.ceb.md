# Sumi

Gaan nga editor sa teksto alang sa macOS, gihimo aron magamit uban sa mga AI coding agent. Bukas ang source code (MIT).

Padagana ang imong agent sa built-in nga terminal, i-klik ang mga file nga iyang gitrabaho aron maablihan, ug basaha ang Markdown nga iyang gisulat isip mga pahinang naporma na.

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

## Mga bahin

- Mga link ang mga path sa file sa terminal. Kon ang coding agent mopakita og `⎿ M src/app.ts` o `src/app.ts:42:7`, mahimong asul ang path ug ang pag-klik moabli sa file diha nianang linyaha.
- Ang tan-aw sa proyekto anaa sa wala, ang editor sa tunga, ug ang terminal sa ubos.
- Ibaylo ang terminal ug tan-aw sa proyekto (⌃⌘T) aron ibutang ang terminal sa wala nga mosakop sa tibuok gitas-on. Padak-a ang terminal gamit ang ⇧⌘↩.
- Awtomatikong tipigan ang mga file human sa 500 ms nga paghunong sa pag-type ug sa dili pa isira. Kon adunay mga pag-usab gikan sa gawas o kapakyasan sa pagtipig, magpabilin ang imong mga pag-usab sa tab, uban sa kapilian nga magtipig og kopya.
- Ang pagsira sa terminal nga adunay nagdagan nga mga sugo mangayo og kumpirmasyon, lakip ang mga trabaho sa background ug paggawas sa app. Kon tagoon ang panel, magpadayon ang mga sesyon.
- Metal ang kasagarang gigamit sa terminal, ug adunay «Pagdrowing gamit ang GPU» nga switch sa Tan-aw. Pangitaa ang output gamit ang ⌘F; ang bag-ong mga tab mogamit sa kasamtangang working directory.
- Ang Shift+Enter motugot sa prompt nga adunay daghang linya. Mahimong ipapilit ang teksto nga daghang linya, mga file ug hulagway; tipigan ang mga hulagway isip temporaryong PNG ug isulod ang ilang path nga naa sa mga marka sa kinutlo.
- Ang preview sa Markdown ug HTML anaa tupad sa teksto ug mausab samtang nag-type (⇧⌘V, o ang mga buton sa ibabaw nga tuo sa tab).
  Ang Markdown gipakita gamit ang cmark-gfm, nga gigamit usab sa GitHub: mga lamesa, lista sa buluhaton, kinurit nga teksto ug awtomatikong mga link.
- Pangitaa bisan asa: pislita ang Shift kaduha aron makit-an ang bisan unsang file sa proyekto pinaagi sa banabanang pagtugma sa ngalan.
- Mailhan ang mga source file gamit ang katalogo sa 915 ka ngalan sa pinulongan ug pormat sa file, lakip ang mga ngalan sa file, hiniusang extension ug script interpreter. Apil ang tanang 297 ka Prism component (291 ka kaugalingong grammar ug 6 ka katabang) ug i-load kon gikinahanglan. Ang mga pormat nga walay grammar mogamit sa batakang pag-highlight sa teksto.
- Adunay 108 ka kapilian sa pinulongan ang interface. Gamita ang menu nga Pinulongan aron dayong mobalhin, o sundon ang pinulongan sa sistema. Hinumdoman ang pagpili; magpabiling abli ang mga file, wala pa matipig nga mga pag-usab ug mga sesyon sa terminal. Sa Arabic, Hebrew ug ubang interface nga tuo ngadto sa wala, magpabiling wala ngadto sa tuo ang code, preview ug output sa terminal.
  Direktang gihubad ang mga teksto gikan sa English, uban sa ilang kahulogan sa editor ug terminal. Ang mga panel sa sistema mosunod sa mga setting sa pinulongan sa macOS. Dili kini nga katalogo mosakop sa tanang natural o programming nga pinulongan. Tan-awa ang [Paghubad sa Sumi](CONTRIBUTING.md#translating-sumi).
- Ang hayag ug ngitngit nga dagway mosunod sa sistema.

## Pag-download

- [Pinakabag-ong release](../../releases/latest)
- [Gabii nga build](../../releases/tag/nightly): himoon pag-usab sa matag pag-usab sa `main`.

I-download ang `Sumi.zip`, i-unzip ug ibalhin ang Sumi ngadto sa Applications. Usa ra ka build ang modagan sa Apple silicon ug Intel Mac.

Walay pirma sa Apple Developer ID ang Sumi, busa babagan sa macOS ang unang pag-abli. Ablihi ang mga setting sa sistema › Pagkapribado ug seguridad, ug i-klik ang «Ablihi bisan pa», o padagana:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Mga kinahanglanon

macOS 14 o mas bag-o. Kinahanglan ang Xcode 26 o mas bag-o (Swift 6.2) aron mag-build.

## Pag-build gikan sa source

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Ablihi ang folder isip proyekto gikan sa File › Ablihi… (⌘O), o sa command line:

```sh
open -a Sumi path/to/project
```

## Mga shortcut sa keyboard

| Buhat | Shortcut |
|---|---|
| Pangitaa bisan asa | ⇧⇧ o ⇧⌘O |
| Tan-aw sa proyekto | ⌘1 |
| Terminal | ⌥F12 |
| Bag-ong tab sa terminal | ⌘T |
| Ibaylo ang terminal ug tan-aw sa proyekto | ⌃⌘T |
| Padak-a ang terminal | ⇧⌘↩ |
| Preview sa Markdown / HTML | ⇧⌘V |
| Pilia sa tan-aw sa proyekto | ⌥⌘1 |
| Sunod / miaging tab | ⇧⌘] / ⇧⌘[ |
| Tipigi / Tipigi ang tanan | ⌘S / ⌥⌘S |

## Pag-amot

Gidawat ang mga report sa sayop, pag-ayo ug paghubad. Basaha ang [CONTRIBUTING.md](CONTRIBUTING.md).

## Lisensiya

MIT. Apil sa Sumi ang SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) ug ang katalogo sa pinulongan sa GitHub Linguist (MIT); tan-awa ang [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
