# Sumi

Un editore di testu ligeru per macOS, cuncipitu per travaglià cù l'agenti di prugrammazione AI. À fonte aperta (MIT).

Lanciate u vostru agente in u terminale integratu, cliccate nant'à i schedarii ch'ellu tocca per apreli, è leghjite u Markdown ch'ellu scrive cum'è pagine messe in forma.

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

## Funziunalità

- I percorsi di schedarii in u terminale sò ligami. Quandu un agente scrive `⎿ M src/app.ts` o `src/app.ts:42:7`, u percorsu diventa turchinu è un clic apre u schedariu à quella linea.
- A vista di u prughjettu hè à manca, l'editore à u centru è u terminale in fondu.
- Scambiate u terminale è a vista di u prughjettu (⌃⌘T) per mette un terminale à tutta altezza à manca. Ingrandite u terminale cù ⇧⌘↩.
- I schedarii sò salvati in autumaticu dopu una pausa di scrittura di 500 ms è prima di chjodeli. I cambiamenti esterni è i fiaschi di salvezza lascianu e vostre mudifiche in a linguetta, cù a pussibilità di salvà una copia.
- Chjode un terminale cù cumandi in corsu dumanda cunferma, ancu per i travagli in fondu è l'uscita da l'applicazione. Piattà u pannellu lascia e sessioni in corsu.
- I terminali adopranu Metal per difettu, cù l'interruttore «Disegnu cù GPU» in Vista. Circate in l'uscita cù ⌘F; e linguette nove ripiglianu u cartulare di travagliu attuale.
- Shift+Enter permette d'inserisce richieste nant'à parechje linee. Si ponu incollà testu multilinea, schedarii è immagini; l'immagini sò tenute cum'è PNG pruvisorii è inserite cum'è percorsi trà virgulette.
- L'anteprima Markdown è HTML hè accantu à u testu è s'aghjorna mentre scrivite (⇧⌘V, o i buttoni in cima à diritta di a linguetta).
  U Markdown hè resu cù cmark-gfm, u mutore adupratu da GitHub: tavule, liste di compiti, testu barratu è ligami autumatichi.
- Circà dapertuttu: appughjate Shift duie volte per truvà ogni schedariu di u prughjettu cù una ricerca apprussimativa di u nome.
- Ricunnosce i schedarii fonte cù un catalogu di 915 nomi di lingue è furmati, cumpresi nomi di schedarii, estensioni cumposte è interpreti di script. Tutti i 297 cumpunenti Prism (291 grammatiche autonome è 6 aiuti) sò inclusi è caricati à a dumanda. I furmati senza grammatica adopranu una messa in risaltu di testu di basa.
- L'interfaccia prupone 108 lingue. Aduprate u menù Lingua per cambià subitu, o seguitate a lingua di u sistema. A scelta hè ricurdata; i schedarii aperti, e mudifiche micca salvate è e sessioni di terminale fermanu aperti. In arabu, ebreu è altre interfacce da diritta à manca, u codice, l'anteprime è l'uscita di u terminale fermanu da manca à diritta.
  E traduzzioni sò scritte direttamente da i testi inglesi, tenendu contu di u cuntestu di l'editore è di u terminale. I pannelli di u sistema seguitanu i paràmetri di lingua di macOS. Stu catalogu ùn copre micca tutte e lingue naturali o di prugrammazione. Vede [Traduzzione di Sumi](CONTRIBUTING.md#translating-sumi).
- L'apparenza chjara è scura seguita u sistema.

## Scaricamentu

- [Ultima versione](../../releases/latest)
- [Custruzzione di notte](../../releases/tag/nightly): rifatta à ogni cambiamentu di `main`.

Scaricate `Sumi.zip`, scumprimetelu è spustate Sumi in Applications. Una sola custruzzione viaghja nant'à i Mac Apple silicon è Intel.

Sumi ùn hè micca firmatu cù un Apple Developer ID, dunque macOS blocca u primu lanciu. Aprite i paràmetri di u sistema › Cunfidenzialità è sicurità è cliccate «Apri quantunque», o lanciate:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Requisiti

macOS 14 o più recente. A custruzzione richiede Xcode 26 o più recente (Swift 6.2).

## Custruisce da u codice fonte

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Aprite un cartulare cum'è prughjettu da Schedariu › Apri… (⌘O), o da a linea di cumanda:

```sh
open -a Sumi path/to/project
```

## Accurtatoghji di tastiera

| Azzione | Accurtatoghju |
|---|---|
| Circà dapertuttu | ⇧⇧ o ⇧⌘O |
| Vista di u prughjettu | ⌘1 |
| Terminale | ⌥F12 |
| Nova linguetta di terminale | ⌘T |
| Scambià terminale è vista di u prughjettu | ⌃⌘T |
| Ingrandisce u terminale | ⇧⌘↩ |
| Anteprima Markdown / HTML | ⇧⌘V |
| Selezziunà in a vista di u prughjettu | ⌥⌘1 |
| Linguetta prossima / precedente | ⇧⌘] / ⇧⌘[ |
| Salvà / Salvà tuttu | ⌘S / ⌥⌘S |

## Cuntribuisce

I raporti d'errori, e currezzioni è e traduzzioni sò benvenuti. Leghjite [CONTRIBUTING.md](CONTRIBUTING.md).

## Licenza

MIT. Sumi include SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) è u catalogu di lingue GitHub Linguist (MIT); vede [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
