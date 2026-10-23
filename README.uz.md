# Sumi

AI kod yozish agentlari bilan ishlash uchun yaratilgan yengil macOS matn muharriri. Ochiq manbali (MIT).

Agentni ichki terminalda ishga tushiring, u o‘zgartirgan fayllarni bosib oching va u yozgan Markdown matnini bezatilgan sahifalar sifatida o‘qing.

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

## Imkoniyatlar

- Terminaldagi fayl yo‘llari havolalardir. Agent `⎿ M src/app.ts` yoki `src/app.ts:42:7` chiqarsa, yo‘l ko‘karadi; bosish faylni o‘sha satrda ochadi.
- Loyiha ko‘rinishi chapda, muharrir o‘rtada, terminal pastda.
- Terminal va loyiha ko‘rinishining o‘rnini almashtiring (⌃⌘T), shunda terminal chapda to‘liq balandlikni egallaydi. Terminalni ⇧⌘↩ bilan kattalashtiring.
- Fayllar yozishda 500 ms tanaffusdan so‘ng va yopilishdan oldin avtomatik saqlanadi. Tashqi o‘zgarishlar yoki saqlash xatosida tahrirlaringiz varaqda qoladi, nusxasini saqlash mumkin.
- Buyruqlar ishlayotgan terminalni yopish tasdiq so‘raydi, jumladan fondagi ishlar va ilovadan chiqishda ham. Panelni yashirish seanslarni to‘xtatmaydi.
- Terminallar odatda Metal ishlatadi; GPU orqali chizish kaliti Ko‘rinish menyusida. Chiqishda ⌘F bilan qidiring; yangi varaqlar joriy ish jildini oladi.
- Shift+Enter ko‘p satrli so‘rov kiritishni saqlaydi. Ko‘p satrli matn, fayl va rasmlarni joylash mumkin; rasmlar vaqtincha PNG sifatida turadi, yo‘llari esa qo‘shtirnoqda kiritiladi.
- Markdown va HTML oldindan ko‘rinishi matn yonida bo‘lib, yozganingizda yangilanadi (⇧⌘V yoki varaqning o‘ng yuqori tugmalari). Markdown GitHub ishlatadigan cmark-gfm bilan chiziladi: jadvallar, vazifa ro‘yxatlari, ustidan chizilgan matn va avtomatik havolalar.
- Hamma joyda qidirish: Shift’ni ikki marta bosib, loyihadagi istalgan faylni taxminiy nom mosligi bilan toping.
- Manba fayllarini 915 til va fayl formati nomi katalogi orqali taniydi; fayl nomlari, murakkab kengaytmalar va skript interpretatorlari ham kiradi. Barcha 297 Prism qismi (291 mustaqil grammatika va 6 yordamchi) kiritilgan va zaruratda yuklanadi. Grammatikasiz formatlar asosiy matn ajratishdan foydalanadi.
- Interfeysda 108 til tanlovi bor. Til menyusida darhol o‘zgartiring yoki tizim tiliga ergashing. Tanlov esda qoladi; ochiq fayllar, saqlanmagan tahrirlar va terminal seanslari ochiq qoladi. Arab, ibroniy va boshqa o‘ngdan chapga interfeyslarda kod, oldindan ko‘rish va terminal chiqishi chapdan o‘ngga qoladi. Tarjimalar muharrir va terminal mazmunini hisobga olib inglizcha matnlardan bevosita yozilgan. Tizim panellari macOS til sozlamalariga ergashadi. Katalog barcha tabiiy yoki dasturlash tillarini qamramaydi. [Sumi tarjimasi](CONTRIBUTING.md#translating-sumi)ni ko‘ring.
- Yorug‘ va qorong‘i ko‘rinish tizimga ergashadi.

## Yuklab olish

- [Eng so‘nggi nashr](../../releases/latest)
- [Tungi yig‘ilma](../../releases/tag/nightly): `main` har o‘zgarganda qayta yig‘iladi.

`Sumi.zip`ni yuklab oling, arxivdan chiqaring va Sumi’ni Applications’ga ko‘chiring. Bitta yig‘ilma Apple silicon va Intel Mac’larda ishlaydi.

Sumi Apple Developer ID bilan imzolanmagan, shuning uchun macOS birinchi ochilishni to‘sadi. Tizim sozlamalari › Maxfiylik va xavfsizlikni ochib, Baribir ochish tugmasini bosing yoki bajaring:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Talablar

macOS 14 yoki yangiroq. Yig‘ish uchun Xcode 26 yoki yangiroq kerak (Swift 6.2).

## Manbadan yig‘ish

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Fayl › Ochish… (⌘O) orqali jildni loyiha sifatida yoki buyruq satridan oching:

```sh
open -a Sumi path/to/project
```

## Klaviatura yorliqlari

| Amal | Yorliq |
|---|---|
| Hamma joyda qidirish | ⇧⇧ / ⇧⌘O |
| Loyiha ko‘rinishi | ⌘1 |
| Terminal | ⌥F12 |
| Yangi terminal varag‘i | ⌘T |
| Terminal va loyiha o‘rnini almashtirish | ⌃⌘T |
| Terminalni kattalashtirish | ⇧⌘↩ |
| Markdown / HTML — Oldindan ko‘rishni ochish yoki yashirish | ⇧⌘V |
| Loyiha ko‘rinishida tanlash | ⌥⌘1 |
| Keyingi varaq / Oldingi varaq | ⇧⌘] / ⇧⌘[ |
| Saqlash / Hammasini saqlash | ⌘S / ⌥⌘S |

## Hissa qo‘shish

Xato hisobotlari, tuzatishlar va tarjimalar qabul qilinadi. [CONTRIBUTING.md](CONTRIBUTING.md)ni o‘qing.

## Litsenziya

MIT. Sumi tarkibida SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) va GitHub Linguist til katalogi (MIT) bor; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)ni ko‘ring.
