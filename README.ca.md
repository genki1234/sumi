# Sumi

Un editor de text lleuger per al macOS, pensat per treballar amb agents de programació amb IA. De codi obert (MIT).

Executeu l'agent al terminal integrat, obriu amb un clic els fitxers amb què treballa i llegiu el Markdown que escriu com a pàgines formatades.

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

## Funcions

- Els camins de fitxers del terminal són enllaços. Quan un agent escriu `⎿ M src/app.ts` o `src/app.ts:42:7`, el camí es torna blau i un clic obre el fitxer en aquella línia.
- Vista del projecte a l'esquerra, editor al centre i terminal a baix.
- Intercanvieu el terminal i la vista del projecte (⌃⌘T) per posar un terminal de tota l'alçada a l'esquerra. Maximitzeu el terminal amb ⇧⌘↩.
- Els fitxers es desen automàticament després d'una pausa d'escriptura de 500 ms i abans de tancar-los. Els canvis externs i els errors en desar mantenen les modificacions a la pestanya, amb l'opció de desar-ne una còpia.
- Tancar un terminal amb ordres en execució demana confirmació, incloent-hi les tasques en segon pla i la sortida de l'aplicació. Amagar el tauler manté les sessions en execució.
- Els terminals fan servir Metal per defecte, amb l'opció «Renderització amb GPU» a Visualització. Cerqueu a la sortida amb ⌘F; les pestanyes noves hereten el directori de treball actual.
- Shift+Enter permet introduir indicacions de diverses línies. Es poden enganxar textos de diverses línies, fitxers i imatges; les imatges es desen com a PNG temporals i s'insereixen com a camins entre cometes.
- Previsualització de Markdown i HTML al costat del text, actualitzada mentre escriviu (⇧⌘V o els botons de la part superior dreta de la pestanya).
  El Markdown es representa amb cmark-gfm, el motor que fa servir GitHub: taules, llistes de tasques, text ratllat i enllaços automàtics.
- Cerca arreu: premeu Shift dues vegades per trobar qualsevol fitxer del projecte per coincidència aproximada del nom.
- Reconeix fitxers de codi amb un catàleg de 915 noms de llenguatges i formats de fitxer, incloent-hi noms de fitxer, extensions compostes i intèrprets de scripts. S'hi inclouen tots els 297 components del Prism (291 gramàtiques independents i 6 auxiliars), que es carreguen quan cal. Els formats sense gramàtica fan servir un ressaltat de text bàsic.
- La interfície ofereix 108 llengües. Canvieu immediatament des del menú Llengua o seguiu la llengua del sistema. La tria es recorda; els fitxers oberts, les modificacions sense desar i les sessions de terminal continuen oberts. En àrab, hebreu i altres interfícies de dreta a esquerra, el codi, les previsualitzacions i la sortida del terminal es mantenen d'esquerra a dreta.
  Les traduccions s'escriuen directament a partir dels textos anglesos, tenint en compte el context de l'editor i el terminal. Els taulers del sistema segueixen la configuració de llengua del macOS. El catàleg no cobreix totes les llengües naturals ni tots els llenguatges de programació. Vegeu [Traducció del Sumi](CONTRIBUTING.md#translating-sumi).
- L'aparença clara i fosca segueix el sistema.

## Baixada

- [Versions](../../releases)
- [Compilació nocturna](../../releases/tag/nightly): es torna a compilar amb cada canvi a `main`.

Baixeu `Sumi.zip`, descomprimiu-lo i moveu el Sumi a Aplicacions. Una sola compilació funciona tant en Mac amb Apple silicon com amb Intel.

El Sumi no està signat amb un Apple Developer ID; per això, el macOS bloqueja la primera obertura. Obriu Configuració del Sistema › Privacitat i seguretat i feu clic a «Obre igualment», o executeu:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Requisits

macOS 14 o posterior. Per compilar cal Xcode 26 o posterior (Swift 6.2).

## Compilació des del codi font

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Obriu una carpeta com a projecte des de Fitxer › Obre… (⌘O) o des de la línia d'ordres:

```sh
open -a Sumi path/to/project
```

## Dreceres de teclat

| Acció | Drecera |
|---|---|
| Cerca arreu | ⇧⇧ o ⇧⌘O |
| Vista del projecte | ⌘1 |
| Terminal | ⌥F12 |
| Pestanya de terminal nova | ⌘T |
| Intercanvia el terminal i la vista del projecte | ⌃⌘T |
| Maximitza el terminal | ⇧⌘↩ |
| Previsualització de Markdown / HTML | ⇧⌘V |
| Selecciona a la vista del projecte | ⌥⌘1 |
| Pestanya següent / anterior | ⇧⌘] / ⇧⌘[ |
| Desa / Desa-ho tot | ⌘S / ⌥⌘S |

## Col·laboració

Són benvinguts els informes d'errors, les correccions i les traduccions. Llegiu [CONTRIBUTING.md](CONTRIBUTING.md).

## Llicència

MIT. El Sumi inclou SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) i el catàleg de llenguatges del GitHub Linguist (MIT); vegeu [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
