# Sumi

Yapay zekâ kodlama ajanlarıyla birlikte çalışmak için tasarlanmış hafif bir macOS metin düzenleyicisi. Açık kaynak (MIT).

Ajanınızı yerleşik terminalde çalıştırın, değiştirdiği dosyaları tıklayarak açın ve yazdığı Markdown metinlerini biçimlendirilmiş sayfalar olarak okuyun.

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

## Özellikler

- Terminaldeki dosya yolları bağlantıdır. Bir kodlama ajanı `⎿ M src/app.ts` veya `src/app.ts:42:7` yazdırdığında yol mavi olur ve tıklandığında dosya belirtilen satırda açılır.
- Proje görünümü solda, düzenleyici ortada, terminal alttadır.
- Sol tarafta tam yükseklikte bir terminal kullanmak için terminal ile proje görünümünün yerini değiştirin (⌃⌘T). ⇧⌘↩ ile terminali büyütün.
- Dosyalar, yazmaya 500 ms ara verildiğinde ve kapatılmadan önce otomatik kaydedilir. Dışarıdan yapılan değişikliklerde veya kaydetme hatalarında düzenlemeleriniz sekmede kalır ve bir kopya kaydedebilirsiniz.
- Çalışan komutlar bulunan terminali kapatmak onay gerektirir. Buna arka plan işleri ve uygulamadan çıkış da dahildir. Paneli gizlemek oturumları durdurmaz.
- Terminaller varsayılan olarak Metal kullanır; Görünüm menüsündeki GPU ile İşleme seçeneğiyle değiştirilebilir. ⌘F ile çıktıda arama yapın; yeni sekmeler geçerli çalışma dizinini devralır.
- Shift+Enter, istem alanına birden fazla satır girmeyi sağlar. Çok satırlı metin, dosya ve görüntü yapıştırılabilir; görüntüler geçici PNG dosyaları olarak tutulur ve yolları tırnak içinde eklenir.
- Markdown ve HTML önizlemesi metnin yanında görünür ve siz yazarken güncellenir (⇧⌘V veya sekmenin sağ üstündeki düğmeler).
  Markdown, GitHub’ın da kullandığı cmark-gfm ile işlenir; tabloları, görev listelerini, üstü çizili metni ve otomatik bağlantıları destekler.
- Her Yerde Ara: projedeki herhangi bir dosyayı yaklaşık ad eşleşmesiyle bulmak için Shift’e iki kez basın.
- Dosya adları, bileşik uzantılar ve betik yorumlayıcılarından yararlanarak 915 dil ve dosya biçimi adı içeren bir katalogla kaynak dosyaları tanır. Prism’in 297 bileşeninin tamamı (291 bağımsız dil bilgisi tanımı ve altı yardımcı bileşen) birlikte gelir ve gerektiğinde yüklenir. Dil bilgisi tanımı olmayan biçimler temel metin renklendirmesi kullanır.
- Arayüzde 108 dil seçeneği vardır. Dil menüsünden anında değiştirin veya sistem dilini izleyin. Seçim hatırlanır; açık dosyalar, kaydedilmemiş düzenlemeler ve terminal oturumları korunur. Arapça, İbranice ve sağdan sola yazılan diğer arayüzlerde kod, önizlemeler ve terminal çıktısı soldan sağa kalır.
  Çeviriler, İngilizce metinler ve düzenleyici ile terminaldeki kullanım bağlamları temel alınarak doğrudan yazılır. Sistemin sağladığı paneller macOS dil ayarlarını izler. Bu katalog tüm doğal dilleri veya programlama dillerini kapsamaz. [Sumi’yi çevirme](CONTRIBUTING.md#translating-sumi) bölümüne bakın.
- Açık ve koyu görünüm sistemi izler.

## İndirme

- [Son sürüm](../../releases/latest)
- [Nightly derlemesi](../../releases/tag/nightly): `main` dalındaki her değişiklikte yeniden derlenir.

`Sumi.zip` dosyasını indirin, açın ve Sumi’yi Uygulamalar’a taşıyın. Aynı derleme hem Apple silicon hem Intel Mac’lerde çalışır.

Sumi bir Apple Developer ID ile imzalanmadığından macOS ilk açılışı engeller. Sistem Ayarları › Gizlilik ve Güvenlik bölümünü açıp Yine de Aç’ı tıklayın veya şu komutu çalıştırın:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Gereksinimler

macOS 14 veya sonrası. Derlemek için Xcode 26 veya sonrası (Swift 6.2) gerekir.

## Kaynaktan derleme

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Dosya › Aç… (⌘O) menüsünden veya komut satırından bir klasörü proje olarak açın:

```sh
open -a Sumi path/to/project
```

## Klavye kestirmeleri

| İşlem | Kestirme |
|---|---|
| Her Yerde Ara | ⇧⇧ veya ⇧⌘O |
| Proje Görünümü | ⌘1 |
| Terminal | ⌥F12 |
| Yeni Terminal Sekmesi | ⌘T |
| Terminal ile Projenin Yerini Değiştir | ⌃⌘T |
| Terminali Büyüt | ⇧⌘↩ |
| Markdown / HTML önizlemesi | ⇧⌘V |
| Proje Görünümünde Seç | ⌥⌘1 |
| Sonraki / önceki sekme | ⇧⌘] / ⇧⌘[ |
| Kaydet / Tümünü Kaydet | ⌘S / ⌥⌘S |

## Katkıda bulunma

Hata bildirimleri, düzeltmeler ve çeviriler memnuniyetle karşılanır. [CONTRIBUTING.md](CONTRIBUTING.md) dosyasını okuyun.

## Lisans

MIT. Sumi; SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) ve GitHub Linguist dil kataloğunu (MIT) içerir. [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) dosyasına bakın.
