# Sumi

Ένας ελαφρύς επεξεργαστής κειμένου για macOS, σχεδιασμένος για συνεργασία με πράκτορες προγραμματισμού AI. Ανοιχτού κώδικα (MIT).

Εκτελέστε τον πράκτορά σας στο ενσωματωμένο τερματικό, ανοίξτε με κλικ τα αρχεία με τα οποία εργάζεται και διαβάστε το Markdown που γράφει ως μορφοποιημένες σελίδες.

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

## Δυνατότητες

- Οι διαδρομές αρχείων στο τερματικό είναι σύνδεσμοι. Όταν ένας πράκτορας εμφανίσει `⎿ M src/app.ts` ή `src/app.ts:42:7`, η διαδρομή γίνεται μπλε και ένα κλικ ανοίγει το αρχείο στη συγκεκριμένη γραμμή.
- Προβολή έργου αριστερά, επεξεργαστής στο κέντρο και τερματικό κάτω.
- Εναλλάξτε τις θέσεις τερματικού και προβολής έργου (⌃⌘T) για να τοποθετήσετε αριστερά ένα τερματικό πλήρους ύψους. Μεγιστοποιήστε το με ⇧⌘↩.
- Τα αρχεία αποθηκεύονται αυτόματα μετά από παύση πληκτρολόγησης 500 ms και πριν κλείσουν. Σε εξωτερικές αλλαγές ή αποτυχία αποθήκευσης, οι αλλαγές σας παραμένουν στην καρτέλα, με δυνατότητα αποθήκευσης αντιγράφου.
- Το κλείσιμο τερματικού με ενεργές εντολές ζητά επιβεβαίωση, συμπεριλαμβανομένων εργασιών παρασκηνίου και τερματισμού της εφαρμογής. Η απόκρυψη του πλαισίου αφήνει τις συνεδρίες ενεργές.
- Τα τερματικά χρησιμοποιούν από προεπιλογή Metal, με διακόπτη «Απόδοση με GPU» στην Προβολή. Αναζητήστε στην έξοδο με ⌘F· οι νέες καρτέλες κληρονομούν τον τρέχοντα κατάλογο εργασίας.
- Το Shift+Enter επιτρέπει εισαγωγή προτροπών πολλών γραμμών. Υποστηρίζεται επικόλληση κειμένου πολλών γραμμών, αρχείων και εικόνων· οι εικόνες διατηρούνται ως προσωρινά PNG και εισάγονται ως διαδρομές μέσα σε εισαγωγικά.
- Προεπισκόπηση Markdown και HTML δίπλα στο κείμενο, με ενημέρωση καθώς πληκτρολογείτε (⇧⌘V ή τα κουμπιά επάνω δεξιά στην καρτέλα).
  Το Markdown αποδίδεται με cmark-gfm, τη μηχανή που χρησιμοποιεί το GitHub: πίνακες, λίστες εργασιών, διαγραμμένο κείμενο και αυτόματοι σύνδεσμοι.
- Αναζήτηση παντού: πατήστε Shift δύο φορές για να βρείτε οποιοδήποτε αρχείο του έργου με κατά προσέγγιση αντιστοίχιση ονόματος.
- Αναγνωρίζει αρχεία πηγαίου κώδικα με κατάλογο 915 ονομάτων γλωσσών και μορφών αρχείων, περιλαμβάνοντας ονόματα αρχείων, σύνθετες επεκτάσεις και διερμηνείς σεναρίων. Περιλαμβάνονται και φορτώνονται κατ' απαίτηση και τα 297 στοιχεία Prism (291 αυτόνομες γραμματικές και 6 βοηθητικά). Οι μορφές χωρίς γραμματική χρησιμοποιούν βασική επισήμανση κειμένου.
- Η διεπαφή προσφέρει 108 επιλογές γλώσσας. Αλλάξτε αμέσως από το μενού Γλώσσα ή ακολουθήστε τη γλώσσα του συστήματος. Η επιλογή απομνημονεύεται· τα ανοιχτά αρχεία, οι μη αποθηκευμένες αλλαγές και οι συνεδρίες τερματικού παραμένουν ανοιχτά. Οι αραβικές, εβραϊκές και άλλες διεπαφές από δεξιά προς αριστερά διατηρούν κώδικα, προεπισκοπήσεις και έξοδο τερματικού από αριστερά προς δεξιά.
  Οι μεταφράσεις γράφονται απευθείας από τα αγγλικά κείμενα, λαμβάνοντας υπόψη το πλαίσιο του επεξεργαστή και του τερματικού. Τα πλαίσια του συστήματος ακολουθούν τις ρυθμίσεις γλώσσας του macOS. Ο κατάλογος δεν καλύπτει όλες τις φυσικές γλώσσες ή γλώσσες προγραμματισμού. Δείτε [Μετάφραση του Sumi](CONTRIBUTING.md#translating-sumi).
- Η φωτεινή και σκοτεινή εμφάνιση ακολουθούν το σύστημα.

## Λήψη

- [Τελευταία έκδοση](../../releases/latest)
- [Νυχτερινή μεταγλώττιση](../../releases/tag/nightly): δημιουργείται ξανά σε κάθε αλλαγή στο `main`.

Κατεβάστε το `Sumi.zip`, αποσυμπιέστε το και μετακινήστε το Sumi στις Εφαρμογές. Η ίδια μεταγλώττιση λειτουργεί σε Mac με Apple silicon και Intel.

Το Sumi δεν είναι υπογεγραμμένο με Apple Developer ID, οπότε το macOS αποκλείει την πρώτη εκκίνηση. Ανοίξτε Ρυθμίσεις συστήματος › Απόρρητο και ασφάλεια και πατήστε «Άνοιγμα οπωσδήποτε» ή εκτελέστε:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Απαιτήσεις

macOS 14 ή νεότερο. Η μεταγλώττιση απαιτεί Xcode 26 ή νεότερο (Swift 6.2).

## Μεταγλώττιση από τον πηγαίο κώδικα

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Ανοίξτε έναν φάκελο ως έργο από Αρχείο › Άνοιγμα… (⌘O) ή από τη γραμμή εντολών:

```sh
open -a Sumi path/to/project
```

## Συντομεύσεις πληκτρολογίου

| Ενέργεια | Συντόμευση |
|---|---|
| Αναζήτηση παντού | ⇧⇧ ή ⇧⌘O |
| Προβολή έργου | ⌘1 |
| Τερματικό | ⌥F12 |
| Νέα καρτέλα τερματικού | ⌘T |
| Εναλλαγή θέσεων τερματικού και προβολής έργου | ⌃⌘T |
| Μεγιστοποίηση τερματικού | ⇧⌘↩ |
| Προεπισκόπηση Markdown / HTML | ⇧⌘V |
| Επιλογή στην προβολή έργου | ⌥⌘1 |
| Επόμενη / προηγούμενη καρτέλα | ⇧⌘] / ⇧⌘[ |
| Αποθήκευση / Αποθήκευση όλων | ⌘S / ⌥⌘S |

## Συνεισφορά

Αναφορές σφαλμάτων, διορθώσεις και μεταφράσεις είναι ευπρόσδεκτες. Διαβάστε το [CONTRIBUTING.md](CONTRIBUTING.md).

## Άδεια

MIT. Το Sumi περιλαμβάνει SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) και τον κατάλογο γλωσσών GitHub Linguist (MIT)· δείτε [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
