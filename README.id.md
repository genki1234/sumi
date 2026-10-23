# Sumi

Editor teks macOS yang ringan, dibuat untuk bekerja bersama agen pemrograman AI. Sumber terbuka (MIT).

Jalankan agen di terminal bawaan, klik berkas yang disentuhnya untuk membukanya, dan baca Markdown yang ditulisnya sebagai halaman yang sudah dirender.

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

- Jalur berkas di terminal berupa tautan. Saat agen pemrograman mencetak `⎿ M src/app.ts` atau `src/app.ts:42:7`, jalur menjadi biru dan satu klik membuka berkas pada baris tersebut.
- Pohon proyek di kiri, editor di tengah, terminal di bawah.
- Tukar posisi terminal dan pohon proyek (⌃⌘T) untuk menempatkan terminal setinggi jendela di kiri. Maksimalkan terminal dengan ⇧⌘↩.
- Berkas disimpan otomatis setelah jeda mengetik 500 ms dan sebelum ditutup. Perubahan eksternal dan kegagalan penyimpanan tetap mempertahankan edit Anda di tab, dengan pilihan menyimpan salinan.
- Menutup terminal dengan perintah yang sedang berjalan memerlukan konfirmasi, termasuk tugas latar belakang dan saat keluar dari aplikasi. Menyembunyikan panel tetap membiarkan sesi berjalan.
- Terminal memakai Metal secara bawaan, dengan sakelar Perenderan GPU di Tampilan. Cari keluaran dengan ⌘F; tab baru mewarisi direktori kerja saat ini.
- Shift+Enter mempertahankan masukan prompt multibaris. Penempelan mendukung teks multibaris, berkas, dan gambar; gambar disimpan sebagai PNG sementara dan disisipkan sebagai jalur di dalam tanda kutip.
- Pratinjau Markdown dan HTML di samping teks diperbarui saat mengetik (⇧⌘V atau tombol di kanan atas tab). Markdown dirender dengan cmark-gfm, perender yang dipakai GitHub: tabel, daftar tugas, coretan, dan tautan otomatis.
- Cari di Mana Saja: tekan Shift dua kali untuk menemukan berkas apa pun dalam proyek melalui pencocokan nama secara samar.
- Mengenali berkas sumber melalui katalog 915 nama bahasa dan format berkas, termasuk nama berkas, ekstensi gabungan, dan interpreter skrip. Semua 297 komponen Prism (291 tata bahasa mandiri dan 6 pembantu) disertakan dan dimuat sesuai kebutuhan. Format tanpa tata bahasa memakai penyorotan teks dasar.
- Antarmuka memiliki 108 pilihan bahasa. Gunakan menu Bahasa untuk langsung beralih atau mengikuti bahasa sistem. Pilihan diingat; berkas terbuka, edit yang belum disimpan, dan sesi terminal tetap terbuka. Antarmuka Arab, Ibrani, dan bahasa kanan-ke-kiri lainnya tetap menampilkan kode, pratinjau, dan keluaran terminal dari kiri ke kanan. Terjemahan ditulis langsung dari teks Inggris dengan konteks editor dan terminal. Panel sistem mengikuti pengaturan bahasa macOS. Katalog ini tidak mencakup semua bahasa alami atau pemrograman. Lihat [Menerjemahkan Sumi](CONTRIBUTING.md#translating-sumi).
- Tampilan terang dan gelap mengikuti sistem.

## Unduh

- [Rilis](../../releases)
- [Build malam](../../releases/tag/nightly): dibangun ulang pada setiap perubahan di `main`.

Unduh `Sumi.zip`, ekstrak, lalu pindahkan Sumi ke Applications. Satu build berjalan di Mac Apple silicon maupun Intel.

Sumi tidak ditandatangani dengan Apple Developer ID, sehingga macOS memblokir peluncuran pertama. Buka Pengaturan Sistem › Privasi & Keamanan, lalu klik Tetap Buka, atau jalankan:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Persyaratan

macOS 14 atau lebih baru. Pembangunan memerlukan Xcode 26 atau lebih baru (Swift 6.2).

## Bangun dari sumber

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Buka folder sebagai proyek dari Berkas › Buka… (⌘O), atau melalui baris perintah:

```sh
open -a Sumi path/to/project
```

## Pintasan papan ketik

| Tindakan | Pintasan |
|---|---|
| Cari di Mana Saja | ⇧⇧ atau ⇧⌘O |
| Pohon Proyek | ⌘1 |
| Terminal | ⌥F12 |
| Tab Terminal Baru | ⌘T |
| Tukar Terminal dan Proyek | ⌃⌘T |
| Maksimalkan Terminal | ⇧⌘↩ |
| Pratinjau Markdown / HTML | ⇧⌘V |
| Pilih di Pohon Proyek | ⌥⌘1 |
| Tab Berikutnya / Tab Sebelumnya | ⇧⌘] / ⇧⌘[ |
| Simpan / Simpan Semua | ⌘S / ⌥⌘S |

## Kontribusi

Laporan bug, perbaikan, dan terjemahan disambut baik. Baca [CONTRIBUTING.md](CONTRIBUTING.md).

## Lisensi

MIT. Sumi menyertakan SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT), dan katalog bahasa GitHub Linguist (MIT); lihat [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
