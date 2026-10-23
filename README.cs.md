# Sumi

Lehký textový editor pro macOS určený pro práci s programovacími AI agenty. S otevřeným zdrojovým kódem (MIT).

Spusťte agenta ve vestavěném terminálu, kliknutím otevírejte soubory, se kterými pracuje, a čtěte jím napsaný Markdown jako naformátované stránky.

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

## Funkce

- Cesty k souborům v terminálu jsou odkazy. Když agent vypíše `⎿ M src/app.ts` nebo `src/app.ts:42:7`, cesta zmodrá a kliknutí otevře soubor na daném řádku.
- Zobrazení projektu vlevo, editor uprostřed a terminál dole.
- Prohoďte terminál a zobrazení projektu (⌃⌘T) a umístěte terminál vlevo na celou výšku. Terminál maximalizujete pomocí ⇧⌘↩.
- Soubory se automaticky ukládají po 500 ms bez psaní a před zavřením. Při vnějších změnách nebo chybách ukládání zůstávají vaše úpravy v panelu a můžete uložit kopii.
- Zavření terminálu se spuštěnými příkazy vyžaduje potvrzení, včetně úloh na pozadí a ukončení aplikace. Skrytí panelu ponechá relace spuštěné.
- Terminály ve výchozím nastavení používají Metal; v nabídce Zobrazení je přepínač „Vykreslování přes GPU“. Výstup prohledáte pomocí ⌘F; nové panely přebírají aktuální pracovní adresář.
- Shift+Enter umožňuje víceřádkové zadávání pokynů. Vkládat lze víceřádkový text, soubory i obrázky; obrázky se uchovávají jako dočasné PNG a vkládají se jako cesty v uvozovkách.
- Náhled Markdownu a HTML vedle textu se aktualizuje při psaní (⇧⌘V nebo tlačítka vpravo nahoře v panelu).
  Markdown vykresluje cmark-gfm, který používá i GitHub: tabulky, seznamy úkolů, přeškrtnutý text a automatické odkazy.
- Hledat všude: dvojím stisknutím Shift najdete libovolný soubor projektu pomocí přibližné shody názvu.
- Rozpoznává zdrojové soubory podle katalogu 915 názvů jazyků a formátů, včetně názvů souborů, složených přípon a interpretů skriptů. Součástí je všech 297 komponent Prism (291 samostatných gramatik a 6 pomocných komponent), načítaných podle potřeby. Formáty bez gramatiky používají základní zvýraznění textu.
- Rozhraní nabízí 108 jazyků. Nabídka Jazyk umožňuje okamžité přepnutí nebo použití jazyka systému. Volba se pamatuje; otevřené soubory, neuložené úpravy i relace terminálu zůstávají otevřené. V arabském, hebrejském a dalších rozhraních zprava doleva zůstávají kód, náhledy a výstup terminálu zleva doprava.
  Překlady vznikají přímo z anglických textů s ohledem na kontext editoru a terminálu. Systémové panely se řídí nastavením jazyka macOS. Katalog nezahrnuje všechny přirozené a programovací jazyky. Viz [Překládání Sumi](CONTRIBUTING.md#translating-sumi).
- Světlý a tmavý vzhled se řídí systémem.

## Stažení

- [Vydání](../../releases)
- [Noční sestavení](../../releases/tag/nightly): vytváří se při každé změně v `main`.

Stáhněte `Sumi.zip`, rozbalte jej a přesuňte Sumi do Aplikací. Jediné sestavení funguje na Macích s Apple silicon i Intel.

Sumi není podepsán pomocí Apple Developer ID, a proto macOS blokuje první spuštění. Otevřete Nastavení systému › Soukromí a zabezpečení a klikněte na „Přesto otevřít“, nebo spusťte:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Požadavky

macOS 14 nebo novější. Sestavení vyžaduje Xcode 26 nebo novější (Swift 6.2).

## Sestavení ze zdrojového kódu

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Otevřete složku jako projekt přes Soubor › Otevřít… (⌘O) nebo z příkazového řádku:

```sh
open -a Sumi path/to/project
```

## Klávesové zkratky

| Akce | Zkratka |
|---|---|
| Hledat všude | ⇧⇧ nebo ⇧⌘O |
| Zobrazení projektu | ⌘1 |
| Terminál | ⌥F12 |
| Nový panel terminálu | ⌘T |
| Prohodit terminál a zobrazení projektu | ⌃⌘T |
| Maximalizovat terminál | ⇧⌘↩ |
| Náhled Markdown / HTML | ⇧⌘V |
| Vybrat v zobrazení projektu | ⌥⌘1 |
| Další / předchozí panel | ⇧⌘] / ⇧⌘[ |
| Uložit / Uložit vše | ⌘S / ⌥⌘S |

## Přispívání

Uvítáme hlášení chyb, opravy i překlady. Přečtěte si [CONTRIBUTING.md](CONTRIBUTING.md).

## Licence

MIT. Sumi obsahuje SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) a katalog jazyků GitHub Linguist (MIT); viz [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
