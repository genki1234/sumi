# Sumi

Lekki edytor tekstu dla macOS, stworzony do pracy z agentami programistycznymi AI. Otwarte oprogramowanie (MIT).

Uruchom agenta we wbudowanym terminalu, klikaj modyfikowane przez niego pliki, aby je otwierać, i czytaj tworzony przez niego Markdown jako sformatowane strony.

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

## Funkcje

- Ścieżki plików w terminalu są odnośnikami. Gdy agent wypisze `⎿ M src/app.ts` lub `src/app.ts:42:7`, ścieżka staje się niebieska, a kliknięcie otwiera plik we wskazanym wierszu.
- Widok projektu znajduje się po lewej, edytor pośrodku, a terminal na dole.
- Zamień miejscami terminal i widok projektu (⌃⌘T), aby terminal zajmował całą wysokość po lewej stronie. Maksymalizuj terminal skrótem ⇧⌘↩.
- Pliki zapisują się automatycznie po 500 ms przerwy w pisaniu oraz przed zamknięciem. Zewnętrzne zmiany i błędy zapisu pozostawiają Twoje edycje w karcie; możesz zapisać ich kopię.
- Zamknięcie terminala z uruchomionymi poleceniami wymaga potwierdzenia. Dotyczy to także zadań w tle i zamykania aplikacji. Ukrycie panelu pozostawia sesje uruchomione.
- Terminale domyślnie korzystają z Metal. Opcja Renderowanie przez GPU w menu Widok pozwala zmienić ten tryb. Przeszukuj wyjście skrótem ⌘F; nowe karty dziedziczą bieżący katalog roboczy.
- Shift+Enter umożliwia wpisywanie wielowierszowych poleceń. Wklejać można wielowierszowy tekst, pliki i obrazy; obrazy są przechowywane jako tymczasowe pliki PNG, a ich ścieżki wstawiane są w cudzysłowach.
- Podgląd Markdown i HTML jest wyświetlany obok tekstu i aktualizowany podczas pisania (⇧⌘V lub przyciski w prawym górnym rogu karty).
  Markdown jest renderowany przez cmark-gfm, silnik używany przez GitHub: obsługuje tabele, listy zadań, przekreślenia i automatyczne odnośniki.
- Szukaj wszędzie: naciśnij Shift dwa razy, aby znaleźć dowolny plik w projekcie przez przybliżone dopasowanie nazwy.
- Pliki źródłowe są rozpoznawane za pomocą katalogu 915 nazw języków i formatów plików, na podstawie nazw plików, złożonych rozszerzeń i interpreterów skryptów. Wszystkie 297 komponentów Prism (291 samodzielnych gramatyk i sześć komponentów pomocniczych) są dołączone i wczytywane na żądanie. Formaty bez gramatyki korzystają z podstawowego kolorowania tekstu.
- Interfejs oferuje 108 języków. Menu Język pozwala przełączyć język od razu lub stosować język systemu. Wybór jest zapamiętywany; otwarte pliki, niezapisane edycje i sesje terminala pozostają otwarte. W interfejsach arabskim, hebrajskim i innych pisanych od prawej do lewej kod, podglądy i wyjście terminala zachowują kierunek od lewej do prawej.
  Tłumaczenia są tworzone bezpośrednio na podstawie angielskich tekstów i ich kontekstu w edytorze i terminalu. Panele udostępniane przez system stosują ustawienia języka macOS. Katalog nie obejmuje wszystkich języków naturalnych ani języków programowania. Zobacz [Tłumaczenie Sumi](CONTRIBUTING.md#translating-sumi).
- Jasny i ciemny wygląd są zgodne z ustawieniami systemu.

## Pobieranie

- [Najnowsze wydanie](../../releases/latest)
- [Wersja nightly](../../releases/tag/nightly): budowana po każdej zmianie w `main`.

Pobierz `Sumi.zip`, rozpakuj i przenieś Sumi do folderu Aplikacje. Ta sama wersja działa na Macach z układami Apple silicon i procesorami Intel.

Sumi nie jest podpisane identyfikatorem Apple Developer ID, dlatego macOS blokuje pierwsze uruchomienie. Otwórz Ustawienia systemowe › Prywatność i ochrona i kliknij Otwórz mimo to albo wykonaj:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Wymagania

macOS 14 lub nowszy. Budowanie wymaga Xcode 26 lub nowszego (Swift 6.2).

## Budowanie ze źródeł

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Otwórz folder jako projekt przez Plik › Otwórz… (⌘O) lub z wiersza poleceń:

```sh
open -a Sumi path/to/project
```

## Skróty klawiaturowe

| Czynność | Skrót |
|---|---|
| Szukaj wszędzie | ⇧⇧ lub ⇧⌘O |
| Widok projektu | ⌘1 |
| Terminal | ⌥F12 |
| Nowa karta terminala | ⌘T |
| Zamień miejscami terminal i projekt | ⌃⌘T |
| Maksymalizuj terminal | ⇧⌘↩ |
| Podgląd Markdown / HTML | ⇧⌘V |
| Zaznacz w widoku projektu | ⌥⌘1 |
| Następna / poprzednia karta | ⇧⌘] / ⇧⌘[ |
| Zapisz / Zapisz wszystko | ⌘S / ⌥⌘S |

## Współtworzenie

Zgłoszenia błędów, poprawki i tłumaczenia są mile widziane. Przeczytaj [CONTRIBUTING.md](CONTRIBUTING.md).

## Licencja

MIT. Sumi zawiera SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) i katalog języków GitHub Linguist (MIT); zobacz [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
