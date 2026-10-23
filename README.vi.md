# Sumi

Trình soạn thảo văn bản nhẹ dành cho macOS, được thiết kế để làm việc cùng các tác nhân lập trình AI. Mã nguồn mở (MIT).

Chạy tác nhân trong terminal tích hợp, bấm vào các tệp mà tác nhân sửa để mở chúng và đọc Markdown do tác nhân viết dưới dạng trang đã được trình bày.

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

## Tính năng

- Đường dẫn tệp trong terminal là liên kết. Khi tác nhân lập trình in `⎿ M src/app.ts` hoặc `src/app.ts:42:7`, đường dẫn chuyển sang màu xanh; bấm vào sẽ mở tệp tại dòng tương ứng.
- Cây dự án ở bên trái, trình soạn thảo ở giữa và terminal ở dưới.
- Đổi chỗ terminal và cây dự án (⌃⌘T) để đặt terminal cao hết cửa sổ ở bên trái. Phóng to terminal bằng ⇧⌘↩.
- Tệp được lưu tự động sau khi ngừng gõ 500 ms và trước khi đóng. Khi có thay đổi từ bên ngoài hoặc lỗi lưu, các chỉnh sửa vẫn nằm trong thẻ và bạn có thể lưu một bản sao.
- Khi đóng terminal đang chạy lệnh, ứng dụng yêu cầu xác nhận, kể cả với tác vụ chạy nền và khi thoát ứng dụng. Ẩn bảng vẫn giữ các phiên tiếp tục chạy.
- Terminal mặc định dùng Metal, có thể chuyển bằng mục Kết xuất GPU trong menu Hiển thị. Tìm trong đầu ra bằng ⌘F; thẻ mới kế thừa thư mục làm việc hiện tại.
- Shift+Enter cho phép nhập nhiều dòng trong lời nhắc. Có thể dán văn bản nhiều dòng, tệp và hình ảnh; hình ảnh được giữ dưới dạng PNG tạm thời, rồi chèn đường dẫn trong dấu ngoặc kép.
- Bản xem trước Markdown và HTML hiện cạnh văn bản và cập nhật khi bạn gõ (⇧⌘V hoặc các nút ở góc trên bên phải của thẻ).
  Markdown được kết xuất bằng cmark-gfm, bộ kết xuất GitHub sử dụng, hỗ trợ bảng, danh sách công việc, chữ gạch ngang và liên kết tự động.
- Tìm mọi nơi: nhấn Shift hai lần để tìm bất kỳ tệp nào trong dự án bằng cách khớp tên gần đúng.
- Nhận dạng tệp nguồn bằng danh mục gồm 915 tên ngôn ngữ và định dạng tệp, dựa vào tên tệp, phần mở rộng ghép và trình thông dịch tập lệnh. Toàn bộ 297 thành phần Prism (291 bộ ngữ pháp độc lập và sáu thành phần hỗ trợ) được đóng gói sẵn và nạp khi cần. Định dạng không có bộ ngữ pháp dùng cách tô màu văn bản cơ bản.
- Giao diện có 108 lựa chọn ngôn ngữ. Dùng menu Ngôn ngữ để chuyển ngay hoặc theo ngôn ngữ hệ thống. Lựa chọn được ghi nhớ; các tệp đang mở, chỉnh sửa chưa lưu và phiên terminal được giữ nguyên. Trong giao diện tiếng Ả Rập, tiếng Do Thái và các ngôn ngữ viết từ phải sang trái khác, mã, bản xem trước và đầu ra terminal vẫn từ trái sang phải.
  Các bản dịch được viết trực tiếp từ văn bản tiếng Anh và ngữ cảnh sử dụng trong trình soạn thảo, terminal. Các bảng do hệ thống cung cấp theo cài đặt ngôn ngữ macOS. Danh mục này chưa bao gồm mọi ngôn ngữ tự nhiên hoặc ngôn ngữ lập trình. Xem [Dịch Sumi](CONTRIBUTING.md#translating-sumi).
- Giao diện sáng và tối theo hệ thống.

## Tải xuống

- [Các bản phát hành](../../releases)
- [Bản dựng nightly](../../releases/tag/nightly): được dựng lại mỗi khi `main` thay đổi.

Tải `Sumi.zip`, giải nén và chuyển Sumi vào Applications. Cùng một bản dựng chạy được trên cả Mac dùng Apple silicon và Intel.

Sumi chưa được ký bằng Apple Developer ID nên macOS chặn lần chạy đầu tiên. Mở Cài đặt hệ thống › Quyền riêng tư & Bảo mật rồi bấm Vẫn mở, hoặc chạy:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Yêu cầu

macOS 14 trở lên. Để dựng cần Xcode 26 trở lên (Swift 6.2).

## Dựng từ mã nguồn

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Mở một thư mục thành dự án từ Tệp › Mở… (⌘O) hoặc từ dòng lệnh:

```sh
open -a Sumi path/to/project
```

## Phím tắt

| Thao tác | Phím tắt |
|---|---|
| Tìm mọi nơi | ⇧⇧ hoặc ⇧⌘O |
| Cây dự án | ⌘1 |
| Terminal | ⌥F12 |
| Thẻ terminal mới | ⌘T |
| Đổi chỗ terminal và dự án | ⌃⌘T |
| Phóng to terminal | ⇧⌘↩ |
| Xem trước Markdown / HTML | ⇧⌘V |
| Chọn trong cây dự án | ⌥⌘1 |
| Thẻ tiếp theo / trước đó | ⇧⌘] / ⇧⌘[ |
| Lưu / Lưu tất cả | ⌘S / ⌥⌘S |

## Đóng góp

Hoan nghênh các báo lỗi, bản sửa và bản dịch. Đọc [CONTRIBUTING.md](CONTRIBUTING.md).

## Giấy phép

MIT. Sumi bao gồm SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) và danh mục ngôn ngữ GitHub Linguist (MIT); xem [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
