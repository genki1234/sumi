# Sumi

Penyunting teks macOS yang ringan, direka untuk digunakan bersama ejen pengekodan AI. Sumber terbuka (MIT).

Jalankan ejen anda dalam terminal terbina dalam, klik fail yang diubahnya untuk membukanya dan baca Markdown yang ditulisnya sebagai halaman berformat.

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

## Ciri-ciri

- Laluan fail dalam terminal ialah pautan. Apabila ejen pengekodan memaparkan `⎿ M src/app.ts` atau `src/app.ts:42:7`, laluan bertukar biru dan satu klik membuka fail pada baris tersebut.
- Paparan projek di sebelah kiri, penyunting di tengah dan terminal di bawah.
- Tukar kedudukan terminal dan paparan projek (⌃⌘T) untuk mendapatkan terminal setinggi penuh di sebelah kiri. Maksimumkan terminal dengan ⇧⌘↩.
- Fail disimpan secara automatik selepas jeda menaip selama 500 ms dan sebelum ditutup. Jika berlaku perubahan luaran atau kegagalan menyimpan, suntingan anda kekal dalam tab dan anda boleh menyimpan salinan.
- Menutup terminal yang mempunyai arahan sedang berjalan memerlukan pengesahan, termasuk kerja latar belakang dan ketika keluar daripada aplikasi. Menyembunyikan panel membiarkan sesi terus berjalan.
- Terminal menggunakan Metal secara lalai, dengan pilihan Pemaparan GPU dalam menu Paparan. Cari dalam output dengan ⌘F; tab baharu mewarisi direktori kerja semasa.
- Shift+Enter membolehkan input berbilang baris dalam prom. Penampalan menyokong teks berbilang baris, fail dan imej; imej disimpan sebagai PNG sementara dan laluannya dimasukkan dalam tanda petikan.
- Pratonton Markdown dan HTML dipaparkan bersebelahan teks dan dikemas kini semasa anda menaip (⇧⌘V atau butang di penjuru kanan atas tab).
  Markdown dipaparkan dengan cmark-gfm, enjin yang digunakan GitHub, dengan sokongan jadual, senarai tugasan, teks bergaris potong dan pautan automatik.
- Cari di Mana-mana: tekan Shift dua kali untuk mencari sebarang fail dalam projek melalui padanan nama anggaran.
- Mengenal pasti fail sumber dengan katalog 915 nama bahasa dan format fail, berdasarkan nama fail, sambungan gabungan dan pentafsir skrip. Semua 297 komponen Prism (291 tatabahasa kendiri dan enam komponen bantuan) disertakan dan dimuatkan apabila diperlukan. Format tanpa tatabahasa menggunakan pewarnaan teks asas.
- Antara muka menawarkan 108 pilihan bahasa. Gunakan menu Bahasa untuk bertukar serta-merta atau mengikut bahasa sistem. Pilihan diingati; fail terbuka, suntingan belum disimpan dan sesi terminal dikekalkan. Dalam antara muka Arab, Ibrani dan bahasa lain yang ditulis dari kanan ke kiri, kod, pratonton dan output terminal kekal dari kiri ke kanan.
  Terjemahan ditulis terus daripada teks bahasa Inggeris dan konteksnya dalam penyunting serta terminal. Panel yang disediakan sistem mengikut tetapan bahasa macOS. Katalog ini tidak meliputi semua bahasa semula jadi atau bahasa pengaturcaraan. Lihat [Menterjemah Sumi](CONTRIBUTING.md#translating-sumi).
- Rupa cerah dan gelap mengikut sistem.

## Muat turun

- [Keluaran terkini](../../releases/latest)
- [Binaan nightly](../../releases/tag/nightly): dibina semula pada setiap perubahan kepada `main`.

Muat turun `Sumi.zip`, nyahmampatkannya dan pindahkan Sumi ke Applications. Binaan yang sama berjalan pada Mac Apple silicon dan Intel.

Sumi tidak ditandatangani dengan Apple Developer ID, jadi macOS menyekat pelancaran pertama. Buka System Settings › Privacy & Security dan klik Open Anyway, atau jalankan:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Keperluan

macOS 14 atau lebih baharu. Pembinaan memerlukan Xcode 26 atau lebih baharu (Swift 6.2).

## Bina daripada kod sumber

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Buka folder sebagai projek melalui Fail › Buka… (⌘O), atau melalui baris arahan:

```sh
open -a Sumi path/to/project
```

## Pintasan papan kekunci

| Tindakan | Pintasan |
|---|---|
| Cari di Mana-mana | ⇧⇧ atau ⇧⌘O |
| Paparan Projek | ⌘1 |
| Terminal | ⌥F12 |
| Tab Terminal Baharu | ⌘T |
| Tukar Kedudukan Terminal dan Projek | ⌃⌘T |
| Maksimumkan Terminal | ⇧⌘↩ |
| Pratonton Markdown / HTML | ⇧⌘V |
| Pilih dalam Paparan Projek | ⌥⌘1 |
| Tab seterusnya / sebelumnya | ⇧⌘] / ⇧⌘[ |
| Simpan / Simpan Semua | ⌘S / ⌥⌘S |

## Menyumbang

Laporan pepijat, pembetulan dan terjemahan dialu-alukan. Baca [CONTRIBUTING.md](CONTRIBUTING.md).

## Lesen

MIT. Sumi menyertakan SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) dan katalog bahasa GitHub Linguist (MIT); lihat [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
