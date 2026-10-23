# Sumi

Lagan uređivač teksta za macOS, izrađen za rad uz agente za programiranje s umjetnom inteligencijom. Otvorenog koda (MIT).

Pokrenite agenta u ugrađenom terminalu, kliknite datoteke koje mijenja da biste ih otvorili i čitajte njegov Markdown kao prikazane stranice.

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

## Značajke

- Putanje datoteka u terminalu su poveznice. Kada agent ispiše `⎿ M src/app.ts` ili `src/app.ts:42:7`, putanja postaje plava, a klik otvara datoteku na tom retku.
- Prikaz projekta lijevo, uređivač u sredini, terminal na dnu.
- Zamijenite mjesta terminala i prikaza projekta (⌃⌘T) za terminal pune visine s lijeve strane. Maksimizirajte ga prečacem ⇧⌘↩.
- Datoteke se automatski spremaju nakon stanke u tipkanju od 500 ms i prije zatvaranja. Vanjske promjene i neuspješno spremanje zadržavaju vaše izmjene u kartici, uz mogućnost spremanja kopije.
- Zatvaranje terminala s pokrenutim naredbama traži potvrdu, uključujući poslove u pozadini i izlazak iz aplikacije. Skrivanje ploče ne prekida sesije.
- Terminali zadano koriste Metal, uz mogućnost Iscrtavanje pomoću GPU-a u izborniku Prikaz. Pretražite izlaz prečacem ⌘F; nove kartice nasljeđuju trenutačni radni direktorij.
- Shift+Enter čuva višeredni unos upita. Lijepljenje podržava višeredni tekst, datoteke i slike; slike se čuvaju kao privremeni PNG-ovi i umeću kao putanje u navodnicima.
- Pretpregled Markdowna i HTML-a uz tekst osvježava se tijekom tipkanja (⇧⌘V ili gumbi gore desno na kartici). Markdown prikazuje cmark-gfm, isti mehanizam koji koristi GitHub: tablice, popisi zadataka, precrtavanje i automatske poveznice.
- Traži svugdje: dvaput pritisnite Shift za neizrazito traženje bilo koje datoteke u projektu prema nazivu.
- Izvorne datoteke prepoznaju se katalogom od 915 naziva jezika i formata, uključujući nazive datoteka, složene nastavke i interpretere skripti. Svih 297 komponenti Prisma (291 samostalna gramatika i 6 pomoćnih komponenti) uključeno je i učitava se prema potrebi. Formati bez gramatike koriste osnovno isticanje teksta.
- Sučelje nudi 108 jezika. Izbornikom Jezik odmah promijenite jezik ili pratite jezik sustava. Odabir se pamti; otvorene datoteke, nespremljene izmjene i sesije terminala ostaju otvorene. U arapskom, hebrejskom i drugim sučeljima zdesna nalijevo kod, pretpregled i izlaz terminala ostaju slijeva nadesno. Prijevodi su napisani izravno iz engleskih tekstova uz kontekst uređivača i terminala. Sistemski paneli prate jezične postavke macOS-a. Katalog ne obuhvaća svaki prirodni ni programski jezik. Pogledajte [Prevođenje Sumija](CONTRIBUTING.md#translating-sumi).
- Svijetli i tamni izgled prate sustav.

## Preuzimanje

- [Izdanja](../../releases)
- [Noćna verzija](../../releases/tag/nightly): ponovno se izrađuje pri svakoj promjeni grane `main`.

Preuzmite `Sumi.zip`, raspakirajte ga i premjestite Sumi u Applications. Ista verzija radi na Macovima s Apple silicon i Intel procesorima.

Sumi nije potpisan Apple Developer ID-om, pa macOS blokira prvo pokretanje. Otvorite Postavke sustava › Privatnost i sigurnost te kliknite Svejedno otvori ili pokrenite:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Preduvjeti

macOS 14 ili noviji. Za izgradnju je potreban Xcode 26 ili noviji (Swift 6.2).

## Izgradnja iz izvornog koda

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Otvorite mapu kao projekt putem Datoteka › Otvori… (⌘O) ili naredbenim retkom:

```sh
open -a Sumi path/to/project
```

## Tipkovnički prečaci

| Radnja | Prečac |
|---|---|
| Traži svugdje | ⇧⇧ ili ⇧⌘O |
| Prikaz projekta | ⌘1 |
| Terminal | ⌥F12 |
| Nova kartica terminala | ⌘T |
| Zamijeni mjesta terminala i projekta | ⌃⌘T |
| Maksimiziraj terminal | ⇧⌘↩ |
| Pretpregled Markdowna / HTML-a | ⇧⌘V |
| Odaberi u prikazu projekta | ⌥⌘1 |
| Sljedeća kartica / Prethodna kartica | ⇧⌘] / ⇧⌘[ |
| Spremi / Spremi sve | ⌘S / ⌥⌘S |

## Doprinosi

Prijave grešaka, ispravci i prijevodi su dobrodošli. Pročitajte [CONTRIBUTING.md](CONTRIBUTING.md).

## Licenca

MIT. Sumi uključuje SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) i jezični katalog GitHub Linguist (MIT); pogledajte [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
