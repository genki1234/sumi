# Sumi

ตัวแก้ไขข้อความขนาดเบาสำหรับ macOS ที่ออกแบบให้ทำงานร่วมกับเอเจนต์ AI เขียนโค้ด เป็นโอเพนซอร์ส (MIT)

เรียกใช้เอเจนต์ในเทอร์มินัลที่มีในตัว คลิกไฟล์ที่เอเจนต์แก้ไขเพื่อเปิด และอ่าน Markdown ที่เขียนเป็นหน้าที่จัดรูปแบบแล้ว

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

## คุณสมบัติ

- พาธไฟล์ในเทอร์มินัลเป็นลิงก์ เมื่อเอเจนต์แสดง `⎿ M src/app.ts` หรือ `src/app.ts:42:7` พาธจะเป็นสีน้ำเงิน คลิกเพื่อเปิดไฟล์ที่บรรทัดนั้น
- มุมมองโปรเจกต์อยู่ซ้าย ตัวแก้ไขอยู่กลาง เทอร์มินัลอยู่ล่าง
- สลับเทอร์มินัลกับมุมมองโปรเจกต์ (⌃⌘T) เพื่อวางเทอร์มินัลเต็มความสูงไว้ด้านซ้าย ขยายเทอร์มินัลด้วย ⇧⌘↩
- ไฟล์จะบันทึกอัตโนมัติเมื่อหยุดพิมพ์ 500 ms และก่อนปิด เมื่อไฟล์ถูกเปลี่ยนจากภายนอกหรือบันทึกไม่สำเร็จ การแก้ไขยังอยู่ในแท็บและมีตัวเลือกให้บันทึกสำเนา
- การปิดเทอร์มินัลที่มีคำสั่งทำงานอยู่จะขอการยืนยัน รวมถึงงานเบื้องหลังและการออกจากแอป การซ่อนแผงจะปล่อยให้เซสชันทำงานต่อ
- เทอร์มินัลใช้ Metal เป็นค่าเริ่มต้น โดยมีสวิตช์แสดงผลด้วย GPU ในเมนูมุมมอง ค้นหาในผลลัพธ์ด้วย ⌘F แท็บใหม่จะใช้ไดเรกทอรีทำงานปัจจุบันต่อ
- Shift+Enter รักษาการป้อนพรอมป์ต์หลายบรรทัด การวางรองรับข้อความหลายบรรทัด ไฟล์ และภาพ โดยเก็บภาพเป็น PNG ชั่วคราวและแทรกพาธในเครื่องหมายคำพูด
- ตัวอย่าง Markdown และ HTML อยู่ข้างข้อความและอัปเดตขณะพิมพ์ (⇧⌘V หรือปุ่มมุมขวาบนของแท็บ) Markdown แสดงด้วย cmark-gfm ที่ GitHub ใช้ รองรับตาราง รายการงาน ข้อความขีดฆ่า และลิงก์อัตโนมัติ
- ค้นหาทุกที่: กด Shift สองครั้งเพื่อค้นหาไฟล์ใดก็ได้ในโปรเจกต์ด้วยชื่อที่ใกล้เคียง
- รู้จักไฟล์ซอร์สผ่านแค็ตตาล็อกชื่อภาษาและรูปแบบไฟล์ 915 ชื่อ รวมชื่อไฟล์ นามสกุลผสม และตัวแปลสคริปต์ มีองค์ประกอบ Prism ครบทั้ง 297 ส่วน (ไวยากรณ์อิสระ 291 ส่วนและตัวช่วย 6 ส่วน) โหลดเมื่อต้องการ รูปแบบที่ไม่มีไวยากรณ์ใช้การเน้นข้อความพื้นฐาน
- ส่วนติดต่อมีตัวเลือกภาษา 108 ภาษา เปลี่ยนทันทีในเมนูภาษา หรือใช้ภาษาของระบบ ระบบจำการเลือกไว้ โดยไฟล์ที่เปิด การแก้ไขที่ยังไม่บันทึก และเซสชันเทอร์มินัลยังเปิดอยู่ ในภาษาอาหรับ ฮีบรู และส่วนติดต่อจากขวาไปซ้ายอื่น ๆ โค้ด ตัวอย่าง และผลลัพธ์เทอร์มินัลยังคงจากซ้ายไปขวา คำแปลเขียนตรงจากข้อความภาษาอังกฤษโดยคำนึงถึงบริบทของตัวแก้ไขและเทอร์มินัล แผงของระบบใช้การตั้งค่าภาษาของ macOS แค็ตตาล็อกไม่ได้ครอบคลุมภาษาธรรมชาติหรือภาษาโปรแกรมทุกภาษา ดู [การแปล Sumi](CONTRIBUTING.md#translating-sumi)
- รูปลักษณ์สว่างและมืดเปลี่ยนตามระบบ

## ดาวน์โหลด

- [รุ่นที่เผยแพร่](../../releases)
- [รุ่นรายคืน](../../releases/tag/nightly): สร้างใหม่ทุกครั้งที่ `main` เปลี่ยน

ดาวน์โหลด `Sumi.zip` แตกไฟล์ แล้วย้าย Sumi ไปยังแอปพลิเคชัน รุ่นเดียวใช้ได้ทั้ง Mac ที่ใช้ Apple silicon และ Intel

Sumi ไม่ได้ลงนามด้วย Apple Developer ID จึงถูก macOS บล็อกเมื่อเปิดครั้งแรก เปิดการตั้งค่าระบบ › ความเป็นส่วนตัวและความปลอดภัย แล้วคลิกเปิดต่อไป หรือเรียกใช้:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## ข้อกำหนด

macOS 14 ขึ้นไป การสร้างต้องใช้ Xcode 26 ขึ้นไป (Swift 6.2)

## สร้างจากซอร์ส

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

เปิดโฟลเดอร์เป็นโปรเจกต์จากไฟล์ › เปิด… (⌘O) หรือจากบรรทัดคำสั่ง:

```sh
open -a Sumi path/to/project
```

## ปุ่มลัดแป้นพิมพ์

| การกระทำ | ปุ่มลัด |
|---|---|
| ค้นหาทุกที่ | ⇧⇧ / ⇧⌘O |
| มุมมองโปรเจกต์ | ⌘1 |
| เทอร์มินัล | ⌥F12 |
| แท็บเทอร์มินัลใหม่ | ⌘T |
| สลับตำแหน่งเทอร์มินัลกับโปรเจกต์ | ⌃⌘T |
| ขยายเทอร์มินัล | ⇧⌘↩ |
| Markdown / HTML — แสดงหรือซ่อนตัวอย่าง | ⇧⌘V |
| เลือกในมุมมองโปรเจกต์ | ⌥⌘1 |
| แท็บถัดไป / แท็บก่อนหน้า | ⇧⌘] / ⇧⌘[ |
| บันทึก / บันทึกทั้งหมด | ⌘S / ⌥⌘S |

## การมีส่วนร่วม

ยินดีรับรายงานข้อผิดพลาด การแก้ไข และคำแปล อ่าน [CONTRIBUTING.md](CONTRIBUTING.md)

## สัญญาอนุญาต

MIT โดย Sumi มี SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) และแค็ตตาล็อกภาษา GitHub Linguist (MIT) ดู [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)
