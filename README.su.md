# Sumi

Éditor téks macOS anu hampang, dirancang pikeun gawé bareng agén AI panyusun kode. Sumber kabuka (MIT).

Jalankeun agén anjeun dina terminal bawaan, klik berkas anu dirobahna pikeun muka, sarta baca Markdown anu ditulisna minangka kaca anu geus dirapihkeun.

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

## Fitur

- Jalur berkas dina terminal jadi tautan. Nalika agén nembongkeun `⎿ M src/app.ts` atawa `src/app.ts:42:7`, jalurna jadi biru; klik pikeun muka berkas dina baris éta.
- Tampilan proyék di kénca, éditor di tengah, terminal di handap.
- Tukeur posisi terminal jeung tampilan proyék (⌃⌘T) supaya terminal jangkung pinuh aya di kénca. Gedékeun terminal ku ⇧⌘↩.
- Berkas otomatis disimpen sanggeus eureun ngetik salila 500 ms sarta saméméh ditutup. Lamun aya parobahan ti luar atawa gagal nyimpen, éditan tetep dina tab, kalayan pilihan nyimpen salinan.
- Nutup terminal anu keur ngajalankeun paréntah ménta konfirmasi, kaasup pagawéan latar jeung kaluar tina aplikasi. Nyumputkeun panel ngajaga sési tetep jalan.
- Terminal maké Metal sacara bawaan; saklar Rendering ku GPU aya dina Témbongkeun. Téangan kaluaran ku ⌘F; tab anyar nuturkeun diréktori gawé ayeuna.
- Shift+Enter ngajaga input pamundut sababaraha baris. Témpél ngarojong téks sababaraha baris, berkas, jeung gambar; gambar disimpen jadi PNG samentara sarta jalurna diasupkeun dina tanda petik.
- Pratinjau Markdown jeung HTML aya gigireun téks, diropéa nalika ngetik (⇧⌘V atawa tombol di luhur katuhu tab). Markdown dirénder ku cmark-gfm anu dipaké GitHub: tabél, daptar tugas, téks dicorét, jeung tautan otomatis.
- Téangan di mana waé: pencét Shift dua kali pikeun manggihan sagala berkas proyék ngaliwatan ngaran anu kurang leuwih cocog.
- Mikawanoh berkas sumber ku katalog 915 ngaran basa jeung format, kaasup ngaran berkas, éksténsi gabungan, jeung interpréter skrip. Kabéh 297 komponén Prism (291 tata basa mandiri jeung 6 pangrojong) dibuntel sarta dimuat lamun diperlukeun. Format tanpa tata basa maké panyorotan téks dasar.
- Antarbeungeut boga 108 pilihan basa. Paké ménu Basa pikeun langsung ngaganti atawa nuturkeun basa sistem. Pilihan diinget; berkas kabuka, éditan can disimpen, jeung sési terminal tetep kabuka. Dina Arab, Ibrani, jeung antarbeungeut katuhu-ka-kénca séjénna, kode, pratinjau, jeung kaluaran terminal tetep kénca-ka-katuhu. Tarjamahan ditulis langsung tina téks Inggris kalayan kontéks éditor jeung terminal. Panel sistem nuturkeun setélan basa macOS. Katalog ieu henteu ngawengku sakabéh basa alami atawa pamrograman. Tingali [Narjamahkeun Sumi](CONTRIBUTING.md#translating-sumi).
- Tampilan caang jeung poék nuturkeun sistem.

## Unduh

- [Rilis panganyarna](../../releases/latest)
- [Wangunan peuting](../../releases/tag/nightly): diwangun deui dina unggal parobahan `main`.

Unduh `Sumi.zip`, ékstrak, tuluy pindahkeun Sumi ka Applications. Hiji wangunan jalan dina Mac Apple silicon jeung Intel.

Sumi henteu ditandatanganan ku Apple Developer ID, jadi macOS ngahalangan bubuka munggaran. Buka Setélan Sistem › Privasi jeung Kaamanan sarta klik Buka Baé, atawa jalankeun:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Sarat

macOS 14 atawa leuwih anyar. Ngawangun merlukeun Xcode 26 atawa leuwih anyar (Swift 6.2).

## Ngawangun tina sumber

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Buka polder jadi proyék tina Berkas › Buka… (⌘O), atawa tina baris paréntah:

```sh
open -a Sumi path/to/project
```

## Potong kompas kibor

| Lampah | Potong kompas |
|---|---|
| Téangan di mana waé | ⇧⇧ / ⇧⌘O |
| Tampilan proyék | ⌘1 |
| Terminal | ⌥F12 |
| Tab terminal anyar | ⌘T |
| Tukeur posisi terminal jeung proyék | ⌃⌘T |
| Gedékeun terminal | ⇧⌘↩ |
| Markdown / HTML — Témbongkeun atawa sumputkeun pratinjau | ⇧⌘V |
| Pilih dina tampilan proyék | ⌥⌘1 |
| Tab salajengna / Tab saméméhna | ⇧⌘] / ⇧⌘[ |
| Simpen / Simpen kabéh | ⌘S / ⌥⌘S |

## Kontribusi

Laporan kasalahan, perbaikan, jeung tarjamahan ditarima. Baca [CONTRIBUTING.md](CONTRIBUTING.md).

## Lisénsi

MIT. Sumi ngawengku SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT), jeung katalog basa GitHub Linguist (MIT); tingali [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
