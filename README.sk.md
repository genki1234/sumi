# Sumi

Ľahký textový editor pre macOS určený na spoluprácu s programovacími agentmi AI. Otvorený zdrojový kód (MIT).

Spustite agenta vo vstavanom termináli, kliknutím otvárajte súbory, ktoré mení, a čítajte ním napísaný Markdown ako vykreslené stránky.

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

## Funkcie

- Cesty k súborom v termináli sú odkazy. Keď agent vypíše `⎿ M src/app.ts` alebo `src/app.ts:42:7`, cesta zmodrie a kliknutím otvoríte súbor na danom riadku.
- Strom projektu vľavo, editor uprostred, terminál dole.
- Vymeňte terminál a strom projektu (⌃⌘T), aby bol terminál vľavo na celú výšku. Maximalizujte ho pomocou ⇧⌘↩.
- Súbory sa automaticky ukladajú po prestávke v písaní dlhej 500 ms a pred zatvorením. Pri vonkajších zmenách a zlyhaniach ukladania zostanú úpravy na karte; môžete uložiť kópiu.
- Zatvorenie terminálu s bežiacimi príkazmi vyžaduje potvrdenie, aj pri úlohách na pozadí a ukončení aplikácie. Skrytie panela ponechá relácie spustené.
- Terminály predvolene používajú Metal; prepínač Vykresľovanie cez GPU je v ponuke Zobraziť. Výstup prehľadáte cez ⌘F; nové karty preberajú aktuálny pracovný priečinok.
- Shift+Enter zachová viacriadkové zadávanie pokynov. Vložiť možno viacriadkový text, súbory a obrázky; obrázky sa uchovajú ako dočasné PNG a vložia sa ich cesty v úvodzovkách.
- Náhľad Markdown a HTML vedľa textu sa aktualizuje počas písania (⇧⌘V alebo tlačidlá vpravo hore na karte). Markdown vykresľuje cmark-gfm používaný na GitHube: tabuľky, zoznamy úloh, prečiarknutie a automatické odkazy.
- Hľadať všade: stlačte Shift dvakrát a nájdite ľubovoľný súbor projektu podľa približnej zhody názvu.
- Zdrojové súbory rozpoznáva katalóg 915 názvov jazykov a formátov vrátane názvov súborov, zložených prípon a interpretov skriptov. Všetkých 297 komponentov Prism (291 samostatných gramatík a 6 pomocných komponentov) je pribalených a načítavajú sa podľa potreby. Formáty bez gramatiky používajú základné zvýraznenie textu.
- Rozhranie ponúka 108 jazykov. V ponuke Jazyk ho okamžite zmeníte alebo použijete jazyk systému. Voľba sa pamätá; otvorené súbory, neuložené úpravy a relácie terminálu zostávajú otvorené. V arabskom, hebrejskom a ďalších rozhraniach sprava doľava zostáva kód, náhľad a výstup terminálu zľava doprava. Preklady sú napísané priamo z anglických textov s ohľadom na editor a terminál. Systémové panely používajú jazykové nastavenia macOS. Katalóg nezahŕňa každý prirodzený ani programovací jazyk. Pozrite [Preklad Sumi](CONTRIBUTING.md#translating-sumi).
- Svetlý a tmavý vzhľad sa riadia systémom.

## Stiahnutie

- [Najnovšie vydanie](../../releases/latest)
- [Nočná zostava](../../releases/tag/nightly): zostavuje sa pri každej zmene `main`.

Stiahnite `Sumi.zip`, rozbaľte ho a presuňte Sumi do Aplikácií. Jedna zostava funguje na Macoch s Apple silicon aj Intel.

Sumi nie je podpísané pomocou Apple Developer ID, preto macOS zablokuje prvé spustenie. Otvorte Systémové nastavenia › Súkromie a bezpečnosť a kliknite na Napriek tomu otvoriť alebo spustite:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Požiadavky

macOS 14 alebo novší. Zostavenie vyžaduje Xcode 26 alebo novší (Swift 6.2).

## Zostavenie zo zdrojového kódu

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Otvorte priečinok ako projekt cez Súbor › Otvoriť… (⌘O) alebo z príkazového riadka:

```sh
open -a Sumi path/to/project
```

## Klávesové skratky

| Akcia | Skratka |
|---|---|
| Hľadať všade | ⇧⇧ / ⇧⌘O |
| Strom projektu | ⌘1 |
| Terminál | ⌥F12 |
| Nová karta terminálu | ⌘T |
| Vymeniť terminál a projekt | ⌃⌘T |
| Maximalizovať terminál | ⇧⌘↩ |
| Markdown / HTML — Prepnúť náhľad | ⇧⌘V |
| Vybrať v strome projektu | ⌥⌘1 |
| Ďalšia karta / Predošlá karta | ⇧⌘] / ⇧⌘[ |
| Uložiť / Uložiť všetko | ⌘S / ⌥⌘S |

## Prispievanie

Hlásenia chýb, opravy a preklady sú vítané. Prečítajte si [CONTRIBUTING.md](CONTRIBUTING.md).

## Licencia

MIT. Sumi obsahuje SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) a katalóg jazykov GitHub Linguist (MIT); pozrite [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
