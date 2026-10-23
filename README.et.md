# Sumi

Kerge macOS-i tekstiredaktor, mis on loodud töötama koos tehisintellekti programmeerimisagentidega. Avatud lähtekoodiga (MIT).

Käivita agent sisseehitatud terminalis, ava tema kasutatavad failid klõpsuga ja loe tema kirjutatud Markdowni vormindatud lehtedena.

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

## Võimalused

- Terminalis olevad failiteed on lingid. Kui programmeerimisagent väljastab `⎿ M src/app.ts` või `src/app.ts:42:7`, muutub tee siniseks ning klõps avab faili vastaval real.
- Projektivaade vasakul, redaktor keskel ja terminal all.
- Vaheta terminali ja projektivaate kohad (⌃⌘T), et asetada vasakule täiskõrguses terminal. Maksimeeri terminal klahvidega ⇧⌘↩.
- Failid salvestatakse automaatselt pärast 500 ms pikkust kirjutamispausi ja enne sulgemist. Väliste muudatuste või salvestusvigade korral jäävad sinu muudatused kaardile ning saad salvestada koopia.
- Töötavate käskudega terminali sulgemine küsib kinnitust, sealhulgas taustatööde ja rakendusest väljumise korral. Paneeli peitmisel jätkavad seansid tööd.
- Terminalid kasutavad vaikimisi Metalit; menüüs Vaade on lüliti „GPU-ga renderdamine”. Otsi väljundist klahvidega ⌘F; uued kaardid pärivad praeguse töökataloogi.
- Shift+Enter võimaldab sisestada mitmerealisi juhiseid. Kleepida saab mitmerealist teksti, faile ja pilte; pildid säilitatakse ajutiste PNG-dena ning lisatakse jutumärkides teedena.
- Markdowni ja HTML-i eelvaade teksti kõrval uueneb kirjutamise ajal (⇧⌘V või kaardi paremas ülanurgas olevad nupud).
  Markdowni renderdab cmark-gfm, mida kasutab ka GitHub: tabelid, ülesandeloendid, läbikriipsutatud tekst ja automaatsed lingid.
- Otsi kõikjalt: vajuta kaks korda Shift, et leida projekti mis tahes fail ligikaudse nimeotsinguga.
- Tuvastab lähtefaile 915 keele- ja failivormingu nimega kataloogi abil, mis hõlmab failinimesid, liitlaiendeid ja skriptitõlke. Kaasas on kõik 297 Prismi komponenti (291 iseseisvat grammatikat ja 6 abikomponenti), mis laaditakse vajaduse korral. Grammatikata vormingud kasutavad lihtsat teksti esiletõstmist.
- Kasutajaliidesel on 108 keelevalikut. Vaheta kohe menüüst Keel või järgi süsteemikeelt. Valik jäetakse meelde; avatud failid, salvestamata muudatused ja terminaliseansid jäävad avatuks. Araabia, heebrea ja teiste paremalt vasakule liideste korral jäävad kood, eelvaated ja terminaliväljund vasakult paremale.
  Tõlked kirjutatakse otse ingliskeelsete tekstide põhjal, arvestades redaktori ja terminali konteksti. Süsteemipaneelid järgivad macOS-i keeleseadeid. Kataloog ei hõlma kõiki loomulikke ega programmeerimiskeeli. Vaata [Sumi tõlkimine](CONTRIBUTING.md#translating-sumi).
- Hele ja tume välimus järgivad süsteemi.

## Allalaadimine

- [Uusim väljalase](../../releases/latest)
- [Öine järk](../../releases/tag/nightly): ehitatakse uuesti iga `main`-i muudatusega.

Laadi alla `Sumi.zip`, paki lahti ja teisalda Sumi kausta Applications. Sama järk töötab nii Apple siliconi kui ka Inteliga Macides.

Sumi pole Apple Developer ID-ga allkirjastatud, mistõttu macOS blokeerib esimese käivitamise. Ava Süsteemiseaded › Privaatsus ja turvalisus ning klõpsa „Ava siiski” või käivita:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Nõuded

macOS 14 või uuem. Ehitamiseks on vaja Xcode 26 või uuemat (Swift 6.2).

## Lähtekoodist ehitamine

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Ava kaust projektina menüüst Fail › Ava… (⌘O) või käsurealt:

```sh
open -a Sumi path/to/project
```

## Klaviatuuri otseteed

| Toiming | Otsetee |
|---|---|
| Otsi kõikjalt | ⇧⇧ või ⇧⌘O |
| Projektivaade | ⌘1 |
| Terminal | ⌥F12 |
| Uus terminalikaart | ⌘T |
| Vaheta terminali ja projektivaate kohad | ⌃⌘T |
| Maksimeeri terminal | ⇧⌘↩ |
| Markdowni / HTML-i eelvaade | ⇧⌘V |
| Vali projektivaates | ⌥⌘1 |
| Järgmine / eelmine kaart | ⇧⌘] / ⇧⌘[ |
| Salvesta / Salvesta kõik | ⌘S / ⌥⌘S |

## Panustamine

Veateated, parandused ja tõlked on teretulnud. Loe [CONTRIBUTING.md](CONTRIBUTING.md).

## Litsents

MIT. Sumi sisaldab SwiftTermi (MIT), cmark-gfm-i (BSD-2-Clause), Prismi (MIT) ja GitHub Linguisti keelekataloogi (MIT); vaata [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
