# Sumi

Malpeza tekstredaktilo por macOS, kreita por labori kune kun AI-programagentoj. Malfermitkoda (MIT).

Rulu vian agenton en la enkonstruita terminalo, alklaku la dosierojn kun kiuj ĝi laboras por malfermi ilin, kaj legu la Markdown kiun ĝi verkas kiel formatitajn paĝojn.

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

## Funkcioj

- Dosiervojoj en la terminalo estas ligiloj. Kiam programagento eligas `⎿ M src/app.ts` aŭ `src/app.ts:42:7`, la vojo bluiĝas kaj alklako malfermas la dosieron ĉe tiu linio.
- Projekta vido maldekstre, redaktilo centre kaj terminalo malsupre.
- Interŝanĝu la terminalon kaj projektan vidon (⌃⌘T) por meti plenaltan terminalon maldekstre. Maksimumigu la terminalon per ⇧⌘↩.
- Dosieroj aŭtomate konserviĝas post tajpopaŭzo de 500 ms kaj antaŭ fermo. Ĉe eksteraj ŝanĝoj aŭ malsukcesa konservado, viaj redaktoj restas en la langeto kun eblo konservi kopion.
- Fermi terminalon kun rulantaj komandoj postulas konfirmon, inkluzive de fonaj taskoj kaj eliro el la aplikaĵo. Kaŝi la panelon lasas la seancojn funkcii.
- Terminaloj defaŭlte uzas Metal, kun ŝaltilo «Bildigo per GPU» en Vido. Serĉu en la eligo per ⌘F; novaj langetoj heredas la nunan labordosierujon.
- Shift+Enter ebligas plurlinian enigon de instrukcioj. Algluo subtenas plurlinian tekston, dosierojn kaj bildojn; bildoj konserviĝas kiel provizoraj PNG-dosieroj kaj enmetiĝas kiel vojoj inter citiloj.
- Antaŭrigardo de Markdown kaj HTML apud la teksto, ĝisdatigata dum tajpado (⇧⌘V aŭ la butonoj supre dekstre de la langeto).
  Markdown bildiĝas per cmark-gfm, la ilo uzata de GitHub: tabeloj, taskolistoj, trastrekita teksto kaj aŭtomataj ligiloj.
- Serĉi ĉie: premu Shift dufoje por trovi ajnan projektan dosieron per proksimuma nomkongruo.
- Rekonas fontdosierojn per katalogo de 915 nomoj de lingvoj kaj dosierformatoj, inkluzive de dosiernomoj, kunmetitaj finaĵoj kaj skriptinterpretiloj. Ĉiuj 297 Prism-komponantoj (291 memstaraj gramatikoj kaj 6 helpantoj) estas inkluzivitaj kaj ŝargataj laŭbezone. Formatoj sen gramatiko uzas bazan tekstemfazon.
- La interfaco havas 108 lingvoelektojn. Uzu la menuon Lingvo por tuj ŝanĝi aŭ sekvi la sisteman lingvon. La elekto memoriĝas; malfermitaj dosieroj, nekonservitaj redaktoj kaj terminalaj seancoj restas malfermitaj. Arabaj, hebreaj kaj aliaj dekstre-maldekstrenaj interfacoj konservas kodon, antaŭrigardojn kaj terminalan eligon de maldekstre dekstren.
  Tradukoj estas verkitaj rekte el la anglaj tekstoj kun ilia redaktila kaj terminala kunteksto. Sistemaj paneloj sekvas la lingvajn agordojn de macOS. Ĉi tiu katalogo ne ampleksas ĉiun naturan aŭ programlingvon. Vidu [Traduki Sumi](CONTRIBUTING.md#translating-sumi).
- Hela kaj malhela aspektoj sekvas la sistemon.

## Elŝuto

- [Eldonoj](../../releases)
- [Nokta versio](../../releases/tag/nightly): rekonstruiĝas ĉe ĉiu ŝanĝo al `main`.

Elŝutu `Sumi.zip`, malpaku ĝin kaj movu Sumi al Applications. Unu kompilaĵo funkcias sur Mac-komputiloj kun Apple silicon kaj Intel.

Sumi ne estas subskribita per Apple Developer ID, do macOS blokas la unuan lanĉon. Malfermu Sistemajn agordojn › Privateco kaj sekureco kaj alklaku «Malfermi tamen», aŭ rulu:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Postuloj

macOS 14 aŭ posta. Konstruado bezonas Xcode 26 aŭ postan (Swift 6.2).

## Konstrui el fontkodo

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Malfermu dosierujon kiel projekton per Dosiero › Malfermi… (⌘O), aŭ el la komandlinio:

```sh
open -a Sumi path/to/project
```

## Klavaraj ŝparvojoj

| Ago | Ŝparvojo |
|---|---|
| Serĉi ĉie | ⇧⇧ aŭ ⇧⌘O |
| Projekta vido | ⌘1 |
| Terminalo | ⌥F12 |
| Nova terminala langeto | ⌘T |
| Interŝanĝi terminalon kaj projektan vidon | ⌃⌘T |
| Maksimumigi terminalon | ⇧⌘↩ |
| Antaŭrigardo Markdown / HTML | ⇧⌘V |
| Elekti en la projekta vido | ⌥⌘1 |
| Sekva / antaŭa langeto | ⇧⌘] / ⇧⌘[ |
| Konservi / Konservi ĉiujn | ⌘S / ⌥⌘S |

## Kontribui

Bonvenas cimraportoj, korektoj kaj tradukoj. Legu [CONTRIBUTING.md](CONTRIBUTING.md).

## Permesilo

MIT. Sumi inkluzivas SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) kaj la lingvokatalogon GitHub Linguist (MIT); vidu [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
