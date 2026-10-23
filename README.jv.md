# Sumi

Editor teks macOS sing entheng, digawe kanggo makarya bareng agen pamrograman AI. Sumber kabuka (MIT).

Lakokake agen ing terminal bawaan, klik berkas sing diowahi kanggo mbukak, lan waca Markdown sing ditulis minangka kaca sing wis ditata.

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

- Path berkas ing terminal dadi pranala. Nalika agen pamrograman nulis `⎿ M src/app.ts` utawa `src/app.ts:42:7`, path dadi biru lan bisa diklik kanggo mbukak berkas ing larik kasebut.
- Wit proyek ing kiwa, editor ing tengah, terminal ing ngisor.
- Ijolake terminal lan wit proyek (⌃⌘T) supaya terminal sakdhuwure jendhela ana ing kiwa. Gedhekake terminal sakabehe nganggo ⇧⌘↩.
- Berkas disimpen otomatis sawise leren ngetik 500 ms lan sadurunge ditutup. Owahan saka njaba lan gagal nyimpen njaga suntingan sampeyan ing tab, kanthi pilihan nyimpen salinan.
- Nutup terminal sing isih nglakokake printah mbutuhake konfirmasi, kalebu tugas latar mburi lan nalika metu saka aplikasi. Ndhelikake panel tetep njaga sesi mlaku.
- Terminal nggunakake Metal minangka gawan, kanthi saklar Panggambaran GPU ing Tampilan. Goleki output nganggo ⌘F; tab anyar marisi direktori kerja saiki.
- Shift+Enter njaga input prompt pirang-pirang larik. Tempel ndhukung teks pirang-pirang larik, berkas, lan gambar; gambar disimpen dadi PNG sauntara lan dilebokake minangka path ing tandha petik.
- Pratinjau Markdown lan HTML ing jejere teks dianyari nalika ngetik (⇧⌘V utawa tombol ing pojok tengen ndhuwur tab). Markdown ditampilake nganggo cmark-gfm, piranti sing digunakake GitHub: tabel, dhaptar tugas, teks dicoret, lan pranala otomatis.
- Goleki ing Endi Wae: pencet Shift kaping pindho kanggo nemokake berkas apa wae ing proyek nganggo telusuran jeneng sing ora kudu pas.
- Ngenali berkas sumber nganggo katalog 915 jeneng basa lan format berkas, kalebu jeneng berkas, ekstensi majemuk, lan interpreter skrip. Kabeh 297 komponen Prism (291 tata basa mandhiri lan 6 pambiyantu) disedhiyakake lan dimuat yen dibutuhake. Format tanpa tata basa nganggo panyorotan teks dhasar.
- Antarmuka duwe 108 pilihan basa. Gunakake menu Basa kanggo langsung ngalih utawa manut basa sistem. Pilihan dielingi; berkas kabuka, suntingan sing durung disimpen, lan sesi terminal tetep kabuka. Ing antarmuka Arab, Ibrani, lan basa liya sing saka tengen menyang kiwa, kode, pratinjau, lan output terminal tetep saka kiwa menyang tengen. Terjemahan ditulis langsung saka teks Inggris kanthi konteks editor lan terminal. Panel sistem manut setelan basa macOS. Katalog iki ora nyakup saben basa alami utawa pamrograman. Deleng [Nerjemahake Sumi](CONTRIBUTING.md#translating-sumi).
- Tampilan padhang lan peteng manut sistem.

## Undhuh

- [Rilis paling anyar](../../releases/latest)
- [Build wengi](../../releases/tag/nightly): dibangun maneh saben ana owahan ing `main`.

Undhuh `Sumi.zip`, ekstrak, banjur pindhahake Sumi menyang Applications. Siji build bisa mlaku ing Mac Apple silicon lan Intel.

Sumi ora ditandatangani nganggo Apple Developer ID, mula macOS ngalangi bukaan kapisan. Bukak Setelan Sistem › Privasi lan Keamanan, banjur klik Tetep Bukak, utawa lakokake:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Syarat

macOS 14 utawa luwih anyar. Mbangun mbutuhake Xcode 26 utawa luwih anyar (Swift 6.2).

## Mbangun saka sumber

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Bukak folder minangka proyek saka Berkas › Bukak… (⌘O), utawa saka baris printah:

```sh
open -a Sumi path/to/project
```

## Trabasan papan tombol

| Tumindak | Trabasan |
|---|---|
| Goleki ing Endi Wae | ⇧⇧ utawa ⇧⌘O |
| Wit Proyek | ⌘1 |
| Terminal | ⌥F12 |
| Tab Terminal Anyar | ⌘T |
| Ijolake Terminal lan Proyek | ⌃⌘T |
| Gedhekake Terminal Sakabehe | ⇧⌘↩ |
| Pratinjau Markdown / HTML | ⇧⌘V |
| Pilih ing Wit Proyek | ⌥⌘1 |
| Tab Sabanjure / Tab Sadurunge | ⇧⌘] / ⇧⌘[ |
| Simpen / Simpen Kabeh | ⌘S / ⌥⌘S |

## Kontribusi

Laporan bug, dandan, lan terjemahan ditampa. Waca [CONTRIBUTING.md](CONTRIBUTING.md).

## Lisensi

MIT. Sumi ngemot SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT), lan katalog basa GitHub Linguist (MIT); deleng [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
