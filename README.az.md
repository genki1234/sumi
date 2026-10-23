# Sumi

AI kodlaşdırma agentləri ilə işləmək üçün hazırlanmış yüngül macOS mətn redaktoru. Açıq mənbəlidir (MIT).

Agentinizi daxili terminalda işə salın, işlədiyi fayllara klikləyərək onları açın və yazdığı Markdown mətnini tərtib edilmiş səhifələr kimi oxuyun.

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

## İmkanlar

- Terminaldakı fayl yolları keçiddir. Kodlaşdırma agenti `⎿ M src/app.ts` və ya `src/app.ts:42:7` yazdıqda yol mavi olur; klik faylı həmin sətirdə açır.
- Layihə görünüşü solda, redaktor mərkəzdə, terminal aşağıdadır.
- Solda tam hündürlüklü terminal yerləşdirmək üçün terminal və layihə görünüşünün yerini dəyişin (⌃⌘T). Terminalı ⇧⌘↩ ilə böyüdün.
- Yazmağa 500 ms fasilə verəndə və bağlamazdan əvvəl fayllar avtomatik saxlanılır. Xarici dəyişiklik və ya saxlama xətası baş verərsə, düzəlişləriniz vərəqdə qalır və nüsxə saxlamaq imkanı verilir.
- Əmrlər işləyən terminalı bağlayarkən təsdiq tələb olunur. Bura arxa plan işləri və tətbiqdən çıxış da daxildir. Paneli gizlətmək seansları dayandırmır.
- Terminallar standart olaraq Metal istifadə edir; Görünüş menyusunda «GPU ilə çəkmə» keçidi var. Çıxışda ⌘F ilə axtarın; yeni vərəqlər cari iş qovluğunu götürür.
- Shift+Enter çoxsətirli sorğu daxil etməyə imkan verir. Çoxsətirli mətn, fayl və şəkillər yapışdırıla bilər; şəkillər müvəqqəti PNG kimi saxlanılır və yolları dırnaq içində daxil edilir.
- Markdown və HTML önizləməsi mətnin yanında göstərilir və yazdıqca yenilənir (⇧⌘V və ya vərəqin sağ yuxarısındakı düymələr).
  Markdown GitHub-un da istifadə etdiyi cmark-gfm ilə göstərilir: cədvəllər, tapşırıq siyahıları, üstündən xətt çəkilmiş mətn və avtomatik keçidlər.
- Hər yerdə axtar: layihədəki istənilən faylı adın təxmini uyğunluğu ilə tapmaq üçün Shift düyməsini iki dəfə basın.
- Mənbə fayllarını 915 dil və fayl formatı adından ibarət kataloqla tanıyır. Buraya fayl adları, mürəkkəb uzantılar və skript interpretatorları daxildir. Bütün 297 Prism komponenti (291 müstəqil qrammatika və 6 köməkçi) paketə daxildir və lazım olduqda yüklənir. Qrammatikası olmayan formatlarda sadə mətn vurğulaması işlədilir.
- İnterfeysdə 108 dil seçimi var. Dil menyusundan dərhal keçid edin və ya sistem dilini izləyin. Seçim yadda saxlanılır; açıq fayllar, saxlanılmamış düzəlişlər və terminal seansları açıq qalır. Ərəb, ivrit və digər sağdan sola interfeyslərdə kod, önizləmə və terminal çıxışı soldan sağa qalır.
  Tərcümələr redaktor və terminaldakı mənaları nəzərə alınaraq birbaşa ingiliscə mətnlərdən yazılır. Sistem panelləri macOS dil ayarlarını izləyir. Bu kataloq bütün təbii və proqramlaşdırma dillərini əhatə etmir. [Sumi-nin tərcüməsi](CONTRIBUTING.md#translating-sumi) bölməsinə baxın.
- Açıq və tünd görünüş sistemə uyğun dəyişir.

## Endirmə

- [Buraxılışlar](../../releases)
- [Gecə yığımı](../../releases/tag/nightly): `main` hər dəyişəndə yenidən yığılır.

`Sumi.zip` faylını endirin, arxivdən çıxarın və Sumi-ni Applications qovluğuna köçürün. Eyni yığım həm Apple silicon, həm də Intel Mac-larda işləyir.

Sumi Apple Developer ID ilə imzalanmayıb, buna görə macOS ilk işə salınmanı bloklayır. Sistem ayarları › Məxfilik və təhlükəsizlik bölməsini açıb «Yenə də aç» düyməsinə klikləyin və ya bu əmri işlədin:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Tələblər

macOS 14 və ya daha yeni versiya. Yığmaq üçün Xcode 26 və ya daha yeni versiya (Swift 6.2) lazımdır.

## Mənbədən yığmaq

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Fayl › Aç… (⌘O) vasitəsilə qovluğu layihə kimi açın və ya əmr sətrindən istifadə edin:

```sh
open -a Sumi path/to/project
```

## Klaviatura qısayolları

| Əməl | Qısayol |
|---|---|
| Hər yerdə axtar | ⇧⇧ və ya ⇧⌘O |
| Layihə görünüşü | ⌘1 |
| Terminal | ⌥F12 |
| Yeni terminal vərəqi | ⌘T |
| Terminal və layihə görünüşünün yerini dəyiş | ⌃⌘T |
| Terminalı böyüt | ⇧⌘↩ |
| Markdown / HTML önizləməsi | ⇧⌘V |
| Layihə görünüşündə seç | ⌥⌘1 |
| Növbəti / əvvəlki vərəq | ⇧⌘] / ⇧⌘[ |
| Saxla / Hamısını saxla | ⌘S / ⌥⌘S |

## Töhfə vermək

Xəta hesabatları, düzəlişlər və tərcümələr qəbul olunur. [CONTRIBUTING.md](CONTRIBUTING.md) faylını oxuyun.

## Lisenziya

MIT. Sumi-yə SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) və GitHub Linguist dil kataloqu (MIT) daxildir; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) faylına baxın.
