# Sumi

Isang magaan na text editor para sa macOS, ginawa para makatrabaho ang mga AI coding agent. Bukas ang source (MIT).

Patakbuhin ang agent sa built-in na terminal, i-click ang mga file na binabago nito upang buksan, at basahin ang Markdown na isinusulat nito bilang mga na-render na pahina.

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

## Mga tampok

- Mga link ang mga path ng file sa terminal. Kapag naglabas ang agent ng `⎿ M src/app.ts` o `src/app.ts:42:7`, nagiging asul ang path; isang click ang magbubukas ng file sa linyang iyon.
- View ng proyekto sa kaliwa, editor sa gitna, terminal sa ibaba.
- Pagpalitin ang terminal at view ng proyekto (⌃⌘T) para magkaroon ng terminal na buong taas sa kaliwa. Palakihin ang terminal gamit ang ⇧⌘↩.
- Awtomatikong sine-save ang mga file pagkatapos ng 500 ms na paghinto sa pag-type at bago isara. Kapag may pagbabagong panlabas o nabigong pag-save, nananatili ang iyong mga edit sa tab, na may opsyong mag-save ng kopya.
- Humihingi ng kumpirmasyon ang pagsasara ng terminal na may tumatakbong mga utos, kasama ang mga background job at paglabas sa app. Patuloy ang mga session kapag itinago ang panel.
- Metal ang default ng mga terminal, na may switch na Pag-render gamit ang GPU sa Tingnan. Maghanap sa output gamit ang ⌘F; minamana ng mga bagong tab ang kasalukuyang working directory.
- Pinapanatili ng Shift+Enter ang pagpasok ng prompt na maraming linya. Maaaring i-paste ang tekstong maraming linya, file at larawan; iniingatan ang mga larawan bilang pansamantalang PNG at ipinapasok ang kanilang mga path sa panipi.
- May Markdown at HTML preview sa tabi ng teksto na nag-a-update habang nagta-type (⇧⌘V o mga pindutan sa kanang itaas ng tab). Ginagamit ng Markdown ang cmark-gfm na gamit ng GitHub: mga talahanayan, listahan ng gawain, nakaguhit na teksto at awtomatikong link.
- Maghanap saanman: pindutin ang Shift nang dalawang beses upang mahanap ang anumang file sa proyekto gamit ang tinatayang pagtugma ng pangalan.
- Kinikilala ang mga source file sa katalogo ng 915 pangalan ng wika at format, kasama ang pangalan ng file, pinagsamang extension at script interpreter. Kasama ang lahat ng 297 Prism component (291 hiwalay na grammar at 6 helper), at nilo-load kapag kailangan. Ang mga format na walang grammar ay may simpleng pagha-highlight ng teksto.
- May 108 pagpipiliang wika ang UI. Gamitin ang menu na Wika upang agad magpalit o sundin ang wika ng system. Naaalala ang pinili; nananatiling bukas ang mga file, hindi pa nase-save na edit at terminal session. Sa Arabic, Hebrew at iba pang interface na kanan-pakaliwa, nananatiling kaliwa-pakanan ang code, preview at output ng terminal. Direktang isinulat ang mga salin mula sa mga tekstong Ingles ayon sa gamit sa editor at terminal. Sinusunod ng mga panel ng system ang wika ng macOS. Hindi sakop ng katalogo ang bawat likas na wika o programming language. Tingnan ang [Pagsasalin ng Sumi](CONTRIBUTING.md#translating-sumi).
- Sinusunod ng maliwanag at madilim na anyo ang system.

## I-download

- [Mga inilabas na bersiyon](../../releases)
- [Bersyon gabi-gabi](../../releases/tag/nightly): muling binubuo sa bawat pagbabago sa `main`.

I-download ang `Sumi.zip`, i-unzip ito at ilipat ang Sumi sa Applications. Iisang build ang gumagana sa Apple silicon at Intel Mac.

Walang lagdang Apple Developer ID ang Sumi, kaya hinaharang ng macOS ang unang pagbukas. Buksan ang Mga Setting ng System › Privacy at Seguridad at i-click ang Buksan Pa Rin, o patakbuhin:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Mga kailangan

macOS 14 o mas bago. Kailangan ang Xcode 26 o mas bago para mag-build (Swift 6.2).

## Mag-build mula sa source

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Magbukas ng folder bilang proyekto mula sa File › Buksan… (⌘O), o sa command line:

```sh
open -a Sumi path/to/project
```

## Mga shortcut sa keyboard

| Aksyon | Shortcut |
|---|---|
| Maghanap saanman | ⇧⇧ / ⇧⌘O |
| View ng proyekto | ⌘1 |
| Terminal | ⌥F12 |
| Bagong tab ng terminal | ⌘T |
| Magpalit ng puwesto ang terminal at proyekto | ⌃⌘T |
| Palakihin ang terminal | ⇧⌘↩ |
| Markdown / HTML — Ipakita o itago ang preview | ⇧⌘V |
| Piliin sa view ng proyekto | ⌥⌘1 |
| Susunod na tab / Nakaraang tab | ⇧⌘] / ⇧⌘[ |
| I-save / I-save lahat | ⌘S / ⌥⌘S |

## Pag-aambag

Malugod na tinatanggap ang mga ulat ng bug, pag-aayos at salin. Basahin ang [CONTRIBUTING.md](CONTRIBUTING.md).

## Lisensya

MIT. Kasama sa Sumi ang SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) at katalogo ng wika ng GitHub Linguist (MIT); tingnan ang [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
