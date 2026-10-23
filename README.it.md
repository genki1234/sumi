# Sumi

Un editor di testo leggero per macOS, progettato per lavorare insieme agli agenti di programmazione IA. Open source (MIT).

Esegui il tuo agente nel terminale integrato, fai clic sui file che modifica per aprirli e leggi il Markdown che scrive come pagine formattate.

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

## Funzionalità

- I percorsi dei file nel terminale sono collegamenti. Quando un agente stampa `⎿ M src/app.ts` o `src/app.ts:42:7`, il percorso diventa blu e un clic apre il file alla riga indicata.
- Albero del progetto a sinistra, editor al centro, terminale in basso.
- Scambia il terminale e l'albero del progetto (⌃⌘T) per avere un terminale a tutta altezza a sinistra. Ingrandiscilo con ⇧⌘↩.
- I file vengono salvati automaticamente dopo una pausa di digitazione di 500 ms e prima della chiusura. In caso di modifiche esterne o errori di salvataggio, le tue modifiche restano nella scheda, con la possibilità di salvare una copia.
- La chiusura di un terminale con comandi in esecuzione richiede conferma, anche per i processi in background e all'uscita dall'applicazione. Nascondere il pannello mantiene attive le sessioni.
- I terminali usano Metal per impostazione predefinita, con l'opzione Rendering GPU nel menu Vista. Cerca nell'output con ⌘F; le nuove schede ereditano la directory di lavoro corrente.
- Shift+Enter conserva l'immissione di prompt su più righe. È possibile incollare testo su più righe, file e immagini; le immagini vengono mantenute come PNG temporanei e inserite come percorsi tra virgolette.
- L'anteprima Markdown e HTML accanto al testo si aggiorna mentre scrivi (⇧⌘V o i pulsanti in alto a destra nella scheda). Markdown è visualizzato con cmark-gfm, il motore usato da GitHub: tabelle, elenchi di attività, testo barrato e collegamenti automatici.
- Cerca ovunque: premi Shift due volte per trovare qualsiasi file del progetto con una ricerca approssimativa del nome.
- Riconosce i file sorgente usando un catalogo di 915 nomi di linguaggi e formati, inclusi nomi di file, estensioni composte e interpreti di script. Tutti i 297 componenti Prism (291 grammatiche autonome e 6 componenti ausiliari) sono inclusi e caricati quando servono. I formati senza grammatica usano un'evidenziazione del testo di base.
- L'interfaccia offre 108 lingue. Usa il menu Lingua per cambiare subito o seguire la lingua del sistema. La scelta viene ricordata; file aperti, modifiche non salvate e sessioni terminale restano aperti. Nelle interfacce arabe, ebraiche e in altre lingue da destra a sinistra, codice, anteprime e output del terminale restano da sinistra a destra. Le traduzioni sono scritte direttamente dai testi inglesi, considerando il contesto dell'editor e del terminale. I pannelli di sistema seguono le impostazioni linguistiche di macOS. Il catalogo non copre ogni lingua naturale o linguaggio di programmazione. Vedi [Tradurre Sumi](CONTRIBUTING.md#translating-sumi).
- L'aspetto chiaro e scuro segue il sistema.

## Download

- [Ultima versione](../../releases/latest)
- [Build notturna](../../releases/tag/nightly): ricompilata a ogni modifica di `main`.

Scarica `Sumi.zip`, decomprimilo e sposta Sumi in Applications. Un'unica build funziona sui Mac Apple silicon e Intel.

Sumi non è firmato con un Apple Developer ID, quindi macOS blocca il primo avvio. Apri Impostazioni di Sistema › Privacy e sicurezza e fai clic su Apri comunque, oppure esegui:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Requisiti

macOS 14 o successivo. Per compilare servono Xcode 26 o successivo (Swift 6.2).

## Compilare dai sorgenti

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Apri una cartella come progetto da File › Apri… (⌘O), oppure dalla riga di comando:

```sh
open -a Sumi path/to/project
```

## Abbreviazioni da tastiera

| Azione | Abbreviazione |
|---|---|
| Cerca ovunque | ⇧⇧ o ⇧⌘O |
| Albero del progetto | ⌘1 |
| Terminale | ⌥F12 |
| Nuova scheda terminale | ⌘T |
| Scambia terminale e progetto | ⌃⌘T |
| Ingrandisci terminale | ⇧⌘↩ |
| Anteprima Markdown / HTML | ⇧⌘V |
| Seleziona nell'albero del progetto | ⌥⌘1 |
| Scheda successiva / Scheda precedente | ⇧⌘] / ⇧⌘[ |
| Salva / Salva tutto | ⌘S / ⌥⌘S |

## Contribuire

Segnalazioni di bug, correzioni e traduzioni sono benvenute. Leggi [CONTRIBUTING.md](CONTRIBUTING.md).

## Licenza

MIT. Sumi include SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) e il catalogo dei linguaggi GitHub Linguist (MIT); vedi [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
