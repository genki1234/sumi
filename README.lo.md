# Sumi

ໂປຣແກຣມແກ້ໄຂຂໍ້ຄວາມ macOS ທີ່ເບົາ ສ້າງເພື່ອເຮັດວຽກຮ່ວມກັບຕົວແທນຂຽນໂຄດ AI. ເປີດລະຫັດຕົ້ນສະບັບ (MIT).

ໃຊ້ຕົວແທນໃນເທີມິນອລທີ່ມີໃນໂປຣແກຣມ, ຄລິກໄຟລ໌ທີ່ມັນປ່ຽນເພື່ອເປີດ, ແລະອ່ານ Markdown ທີ່ມັນຂຽນເປັນໜ້າທີ່ຈັດຮູບແບບແລ້ວ.

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

## ຄຸນສົມບັດ

- ເສັ້ນທາງໄຟລ໌ໃນເທີມິນອລເປັນລິ້ງ. ເມື່ອຕົວແທນຂຽນໂຄດສະແດງ `⎿ M src/app.ts` ຫຼື `src/app.ts:42:7`, ເສັ້ນທາງຈະເປັນສີຟ້າ ແລະຄລິກເພື່ອເປີດໄຟລ໌ທີ່ແຖວນັ້ນໄດ້.
- ຕົ້ນໄມ້ໂຄງການຢູ່ຊ້າຍ, ຕົວແກ້ໄຂຢູ່ກາງ, ເທີມິນອລຢູ່ລຸ່ມ.
- ສະຫຼັບເທີມິນອລກັບຕົ້ນໄມ້ໂຄງການ (⌃⌘T) ເພື່ອໃຫ້ເທີມິນອລເຕັມຄວາມສູງຢູ່ຊ້າຍ. ຂະຫຍາຍໃຫ້ເຕັມດ້ວຍ ⇧⌘↩.
- ໄຟລ໌ບັນທຶກອັດຕະໂນມັດຫຼັງຢຸດພິມ 500 ms ແລະກ່ອນປິດ. ການປ່ຽນຈາກພາຍນອກຫຼືການບັນທຶກລົ້ມເຫຼວຈະຮັກສາການແກ້ໄຂໃນແຖບ ໂດຍມີທາງເລືອກບັນທຶກສຳເນົາ.
- ການປິດເທີມິນອລທີ່ມີຄຳສັ່ງກຳລັງເຮັດວຽກຈະຖາມຢືນຢັນ, ລວມທັງວຽກເບື້ອງຫຼັງແລະການອອກຈາກແອັບ. ການເຊື່ອງແຜງປ່ອຍໃຫ້ເຊດຊັນເຮັດວຽກຕໍ່.
- ເທີມິນອລໃຊ້ Metal ຕາມຄ່າເລີ່ມຕົ້ນ, ມີສະວິດ ວາດພາບດ້ວຍ GPU ໃນ ມຸມມອງ. ຄົ້ນຫາຜົນອອກດ້ວຍ ⌘F; ແຖບໃໝ່ຮັບເອົາໂຟນເດີເຮັດວຽກປັດຈຸບັນ.
- Shift+Enter ຮັກສາການປ້ອນຄຳຂໍຫຼາຍແຖວ. ການວາງຮອງຮັບຂໍ້ຄວາມຫຼາຍແຖວ, ໄຟລ໌ ແລະຮູບພາບ; ຮູບພາບເກັບເປັນ PNG ຊົ່ວຄາວ ແລະແຊກເປັນເສັ້ນທາງໃນເຄື່ອງໝາຍວົງຢືມ.
- ຕົວຢ່າງ Markdown ແລະ HTML ຂ້າງຂໍ້ຄວາມປັບປຸງເມື່ອພິມ (⇧⌘V ຫຼືປຸ່ມດ້ານເທິງຂວາຂອງແຖບ). Markdown ສະແດງດ້ວຍ cmark-gfm ທີ່ GitHub ໃຊ້: ຕາຕະລາງ, ລາຍການວຽກ, ຂໍ້ຄວາມຂີດທັບ ແລະລິ້ງອັດຕະໂນມັດ.
- ຄົ້ນຫາທຸກບ່ອນ: ກົດ Shift ສອງຄັ້ງເພື່ອຊອກຫາໄຟລ໌ໃດໆໃນໂຄງການດ້ວຍການຈັບຄູ່ຊື່ໃກ້ຄຽງ.
- ຮັບຮູ້ໄຟລ໌ຕົ້ນສະບັບຈາກລາຍການຊື່ພາສາແລະຮູບແບບໄຟລ໌ 915 ລາຍການ, ລວມທັງຊື່ໄຟລ໌, ນາມສະກຸນປະສົມ ແລະຕົວແປສະຄຣິບ. ສ່ວນປະກອບ Prism ທັງໝົດ 297 (ໄວຍາກອນເອກະລາດ 291 ແລະຕົວຊ່ວຍ 6) ລວມມາພ້ອມແລະໂຫຼດເມື່ອຕ້ອງການ. ຮູບແບບບໍ່ມີໄວຍາກອນໃຊ້ການເນັ້ນຂໍ້ຄວາມພື້ນຖານ.
- ໜ້າຕາໂປຣແກຣມມີ 108 ພາສາ. ໃຊ້ເມນູ ພາສາ ປ່ຽນທັນທີ ຫຼືຕາມພາສາລະບົບ. ລະບົບຈື່ຈຳການເລືອກ; ໄຟລ໌ເປີດ, ການແກ້ໄຂທີ່ບໍ່ທັນບັນທຶກ ແລະເຊດຊັນເທີມິນອລຍັງເປີດຢູ່. ໃນພາສາອາຣັບ, ເຮັບເຣີ ແລະໜ້າຕາຈາກຂວາໄປຊ້າຍອື່ນໆ, ໂຄດ, ຕົວຢ່າງ ແລະຜົນອອກເທີມິນອລຍັງຈາກຊ້າຍໄປຂວາ. ຄຳແປຂຽນໂດຍກົງຈາກຂໍ້ຄວາມອັງກິດໂດຍຄຳນຶງເຖິງບໍລິບົດຕົວແກ້ໄຂແລະເທີມິນອລ. ແຜງລະບົບຕາມການຕັ້ງພາສາ macOS. ລາຍການນີ້ບໍ່ຄອບຄຸມທຸກພາສາມະນຸດຫຼືພາສາຂຽນໂປຣແກຣມ. ເບິ່ງ [ການແປ Sumi](CONTRIBUTING.md#translating-sumi).
- ຮູບແບບສະຫວ່າງແລະມືດຕາມລະບົບ.

## ດາວໂຫຼດ

- [ລາຍການລຸ້ນ](../../releases)
- [ຮຸ່ນກາງຄືນ](../../releases/tag/nightly): ສ້າງໃໝ່ທຸກການປ່ຽນໃນ `main`.

ດາວໂຫຼດ `Sumi.zip`, ແຕກໄຟລ໌ ແລະຍ້າຍ Sumi ໄປ Applications. ຮຸ່ນດຽວເຮັດວຽກໄດ້ໃນ Mac Apple silicon ແລະ Intel.

Sumi ບໍ່ມີລາຍເຊັນ Apple Developer ID, ດັ່ງນັ້ນ macOS ຈຶ່ງບລັອກການເປີດຄັ້ງທຳອິດ. ເປີດການຕັ້ງຄ່າລະບົບ › ຄວາມເປັນສ່ວນຕົວແລະຄວາມປອດໄພ ແລະຄລິກເປີດຕໍ່ໄປ ຫຼືໃຊ້:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## ຄວາມຕ້ອງການ

macOS 14 ຫຼືໃໝ່ກວ່າ. ການສ້າງຕ້ອງການ Xcode 26 ຫຼືໃໝ່ກວ່າ (Swift 6.2).

## ສ້າງຈາກລະຫັດຕົ້ນສະບັບ

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ເປີດໂຟນເດີເປັນໂຄງການຈາກ ໄຟລ໌ › ເປີດ… (⌘O) ຫຼືຈາກແຖວຄຳສັ່ງ:

```sh
open -a Sumi path/to/project
```

## ປຸ່ມລັດແປ້ນພິມ

| ການກະທຳ | ປຸ່ມລັດ |
|---|---|
| ຄົ້ນຫາທຸກບ່ອນ | ⇧⇧ ຫຼື ⇧⌘O |
| ຕົ້ນໄມ້ໂຄງການ | ⌘1 |
| ເທີມິນອລ | ⌥F12 |
| ແຖບເທີມິນອລໃໝ່ | ⌘T |
| ສະຫຼັບຕຳແໜ່ງເທີມິນອລແລະໂຄງການ | ⌃⌘T |
| ຂະຫຍາຍເທີມິນອລໃຫ້ເຕັມ | ⇧⌘↩ |
| ຕົວຢ່າງ Markdown / HTML | ⇧⌘V |
| ເລືອກໃນຕົ້ນໄມ້ໂຄງການ | ⌥⌘1 |
| ແຖບຕໍ່ໄປ / ແຖບກ່ອນໜ້າ | ⇧⌘] / ⇧⌘[ |
| ບັນທຶກ / ບັນທຶກທັງໝົດ | ⌘S / ⌥⌘S |

## ການຮ່ວມສ່ວນ

ຍິນດີຮັບລາຍງານຂໍ້ຜິດພາດ, ການແກ້ໄຂ ແລະຄຳແປ. ອ່ານ [CONTRIBUTING.md](CONTRIBUTING.md).

## ໃບອະນຸຍາດ

MIT. Sumi ລວມ SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) ແລະລາຍການພາສາ GitHub Linguist (MIT); ເບິ່ງ [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
