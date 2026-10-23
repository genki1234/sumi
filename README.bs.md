# Sumi

Lagan uređivač teksta za macOS, napravljen za rad s AI agentima za programiranje. Otvorenog koda (MIT).

Pokrenite agenta u ugrađenom terminalu, kliknite na datoteke s kojima radi da ih otvorite i čitajte Markdown koji piše kao oblikovane stranice.

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

## Mogućnosti

- Putanje datoteka u terminalu su veze. Kada agent ispiše `⎿ M src/app.ts` ili `src/app.ts:42:7`, putanja postaje plava, a klik otvara datoteku na tom redu.
- Prikaz projekta je lijevo, uređivač u sredini, a terminal na dnu.
- Zamijenite mjesta terminala i prikaza projekta (⌃⌘T) da terminal pune visine postavite lijevo. Povećajte terminal pomoću ⇧⌘↩.
- Datoteke se automatski čuvaju nakon pauze u pisanju od 500 ms i prije zatvaranja. Vanjske promjene i neuspjelo čuvanje ostavljaju vaše izmjene u kartici, uz mogućnost čuvanja kopije.
- Zatvaranje terminala s pokrenutim naredbama traži potvrdu, uključujući pozadinske zadatke i izlazak iz aplikacije. Skrivanje ploče ostavlja sesije aktivnim.
- Terminali podrazumijevano koriste Metal, uz prekidač „Iscrtavanje pomoću GPU-a” u meniju Prikaz. Pretražujte izlaz pomoću ⌘F; nove kartice nasljeđuju trenutni radni direktorij.
- Shift+Enter omogućava unos upita u više redova. Lijepljenje podržava višeredni tekst, datoteke i slike; slike se čuvaju kao privremeni PNG i umeću kao putanje pod navodnicima.
- Pregled Markdowna i HTML-a nalazi se pored teksta i osvježava se dok pišete (⇧⌘V ili dugmad gore desno u kartici).
  Markdown prikazuje cmark-gfm, koji koristi i GitHub: tabele, liste zadataka, precrtani tekst i automatske veze.
- Traži svuda: pritisnite Shift dvaput da pronađete bilo koju datoteku projekta po približnom podudaranju naziva.
- Prepoznaje izvorne datoteke pomoću kataloga od 915 naziva jezika i formata, uključujući nazive datoteka, složene nastavke i interpretere skripti. Svih 297 Prism komponenti (291 samostalna gramatika i 6 pomoćnih komponenti) uključeno je i učitava se po potrebi. Formati bez gramatike koriste osnovno isticanje teksta.
- Interfejs nudi 108 jezika. Meni Jezik omogućava trenutno prebacivanje ili praćenje sistemskog jezika. Izbor se pamti; otvorene datoteke, nesačuvane izmjene i sesije terminala ostaju otvorene. Arapski, hebrejski i drugi interfejsi zdesna nalijevo zadržavaju kod, pregled i izlaz terminala slijeva nadesno.
  Prijevodi se pišu direktno iz engleskih tekstova, uz kontekst uređivača i terminala. Sistemske ploče slijede jezičke postavke macOS-a. Ovaj katalog ne obuhvata svaki prirodni ili programski jezik. Pogledajte [Prevođenje aplikacije Sumi](CONTRIBUTING.md#translating-sumi).
- Svijetli i tamni izgled prate sistem.

## Preuzimanje

- [Najnovije izdanje](../../releases/latest)
- [Noćna verzija](../../releases/tag/nightly): ponovo se gradi pri svakoj promjeni u `main`.

Preuzmite `Sumi.zip`, raspakujte ga i premjestite Sumi u Applications. Jedna verzija radi na Mac računarima s Apple silicon i Intel procesorima.

Sumi nije potpisan pomoću Apple Developer ID-a, pa macOS blokira prvo pokretanje. Otvorite Sistemske postavke › Privatnost i sigurnost i kliknite „Ipak otvori” ili pokrenite:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Zahtjevi

macOS 14 ili noviji. Za izgradnju je potreban Xcode 26 ili noviji (Swift 6.2).

## Izgradnja iz izvornog koda

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Otvorite fasciklu kao projekat kroz Datoteka › Otvori… (⌘O) ili iz naredbenog retka:

```sh
open -a Sumi path/to/project
```

## Prečice na tastaturi

| Radnja | Prečica |
|---|---|
| Traži svuda | ⇧⇧ ili ⇧⌘O |
| Prikaz projekta | ⌘1 |
| Terminal | ⌥F12 |
| Nova kartica terminala | ⌘T |
| Zamijeni mjesta terminala i prikaza projekta | ⌃⌘T |
| Povećaj terminal | ⇧⌘↩ |
| Pregled Markdowna / HTML-a | ⇧⌘V |
| Odaberi u prikazu projekta | ⌥⌘1 |
| Sljedeća / prethodna kartica | ⇧⌘] / ⇧⌘[ |
| Sačuvaj / Sačuvaj sve | ⌘S / ⌥⌘S |

## Doprinos

Prijave grešaka, ispravke i prijevodi su dobrodošli. Pročitajte [CONTRIBUTING.md](CONTRIBUTING.md).

## Licenca

MIT. Sumi uključuje SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) i katalog jezika GitHub Linguist (MIT); pogledajte [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
