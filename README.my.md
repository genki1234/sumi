# Sumi

AI ကုဒ်ရေးအေးဂျင့်များနှင့် တွဲဖက်အလုပ်လုပ်ရန် ဖန်တီးထားသော ပေါ့ပါးသည့် macOS စာသားတည်းဖြတ်ကိရိယာ။ ပွင့်လင်းရင်းမြစ် (MIT) ဖြစ်သည်။

အသင့်ပါသော တာမီနယ်တွင် အေးဂျင့်ကို လည်ပတ်ပါ၊ ၎င်းပြင်သည့်ဖိုင်များကို နှိပ်၍ဖွင့်ပါ၊ ၎င်းရေးသည့် Markdown ကို ပုံဖော်ပြီးသား စာမျက်နှာများအဖြစ် ဖတ်ပါ။

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

## လုပ်ဆောင်ချက်များ

- တာမီနယ်ရှိ ဖိုင်လမ်းကြောင်းများသည် လင့်ခ်များဖြစ်သည်။ ကုဒ်ရေးအေးဂျင့်က `⎿ M src/app.ts` သို့မဟုတ် `src/app.ts:42:7` ထုတ်ပြလျှင် လမ်းကြောင်းပြာလာပြီး နှိပ်လိုက်လျှင် ထိုစာကြောင်း၌ ဖိုင်ဖွင့်သည်။
- ပရောဂျက်ဖိုင်ပင်ကို ဘယ်ဘက်၊ တည်းဖြတ်ကိရိယာကို အလယ်၊ တာမီနယ်ကို အောက်တွင် ထားသည်။
- ဘယ်ဘက်တွင် အမြင့်အပြည့်တာမီနယ်ရရန် တာမီနယ်နှင့် ပရောဂျက်ဖိုင်ပင်နေရာကို လဲပါ (⌃⌘T)။ ⇧⌘↩ ဖြင့် တာမီနယ်ကို အကြီးဆုံးချဲ့ပါ။
- စာရိုက်ခြင်း 500 ms နားပြီးနောက်နှင့် မပိတ်မီ ဖိုင်များကို အလိုအလျောက်သိမ်းသည်။ ပြင်ပမှ ပြောင်းလဲမှု သို့မဟုတ် သိမ်းမရမှုဖြစ်လျှင် သင်ပြင်ထားသည်များ တက်ဘ်ထဲတွင် ကျန်နေပြီး မိတ္တူသိမ်းရန် ရွေးချယ်နိုင်သည်။
- အမိန့်များလည်ပတ်နေသော တာမီနယ်ကို ပိတ်လျှင် အတည်ပြုချက်တောင်းသည်။ နောက်ခံအလုပ်များနှင့် အက်ပ်မှထွက်ခြင်းလည်း အပါအဝင်ဖြစ်သည်။ အကန့်ကို ဖျောက်သော်လည်း ဆက်ရှင်များ ဆက်လည်ပတ်သည်။
- တာမီနယ်များသည် ပုံမှန်အားဖြင့် Metal သုံးပြီး မြင်ကွင်း တွင် GPU ဖြင့် ပုံဖော်ခြင်း အဖွင့်အပိတ်ရှိသည်။ ထွက်လာသောစာသားကို ⌘F ဖြင့် ရှာပါ။ တက်ဘ်အသစ်များသည် လက်ရှိအလုပ်လုပ်ရာဖိုင်တွဲကို ဆက်သုံးသည်။
- Shift+Enter သည် စာကြောင်းစုံ ညွှန်ကြားချက်ထည့်သွင်းမှုကို ထိန်းထားသည်။ စာကြောင်းစုံစာသား၊ ဖိုင်များနှင့် ပုံများကို ကူးထည့်နိုင်သည်။ ပုံများကို ယာယီ PNG များအဖြစ် ထားပြီး ကိုးကားအမှတ်အတွင်းရှိ လမ်းကြောင်းများအဖြစ် ထည့်ပေးသည်။
- စာသားဘေးတွင် Markdown နှင့် HTML အစမ်းမြင်ကွင်းရှိပြီး စာရိုက်နေစဉ် ပြောင်းလဲပေးသည် (⇧⌘V သို့မဟုတ် တက်ဘ်အပေါ်ညာဘက်ခလုတ်များ)။ Markdown ကို GitHub သုံးသည့် cmark-gfm ဖြင့် ပုံဖော်သည်။ ဇယားများ၊ လုပ်စရာစာရင်းများ၊ မျဉ်းဖြတ်စာသားနှင့် အလိုအလျောက်လင့်ခ်များ ပါဝင်သည်။
- နေရာတိုင်းရှာရန်။ ပရောဂျက်ရှိ မည်သည့်ဖိုင်ကိုမဆို အမည်အနီးစပ်ဆုံးကိုက်ညီမှုဖြင့် ရှာရန် Shift နှစ်ချက်နှိပ်ပါ။
- ဘာသာစကားနှင့် ဖိုင်ပုံစံအမည် 915 မျိုးရှိ စာရင်းဖြင့် ရင်းမြစ်ကုဒ်ဖိုင်များကို ခွဲခြားသည်။ ဖိုင်အမည်များ၊ ပေါင်းစပ်ဖိုင်နောက်ဆက်များနှင့် စခရစ်ဘာသာပြန်ပရိုဂရမ်များလည်း ပါဝင်သည်။ Prism အစိတ်အပိုင်း 297 ခုစလုံး (သီးခြားသဒ္ဒါ 291 ခုနှင့် အကူ 6 ခု) ပါရှိပြီး လိုအပ်မှတင်သည်။ သဒ္ဒါမရှိသည့်ပုံစံများတွင် အခြေခံစာသားအရောင်ခွဲခြင်း သုံးသည်။
- မျက်နှာပြင်တွင် ဘာသာစကား 108 မျိုး ရွေးနိုင်သည်။ ဘာသာစကား မီနူးဖြင့် ချက်ချင်းပြောင်းပါ သို့မဟုတ် စနစ်ဘာသာစကားကို လိုက်ပါ။ ရွေးချယ်မှုကို မှတ်ထားပြီး ဖွင့်ထားသောဖိုင်များ၊ မသိမ်းရသေးသောပြင်ဆင်မှုများနှင့် တာမီနယ်ဆက်ရှင်များ ဆက်ဖွင့်ထားသည်။ အာရဗီ၊ ဟီဘရူးနှင့် အခြားညာမှဘယ်မျက်နှာပြင်များတွင် ကုဒ်၊ အစမ်းမြင်ကွင်းနှင့် တာမီနယ်ထွက်စာသားတို့သည် ဘယ်မှညာအတိုင်း ရှိနေသည်။ ဘာသာပြန်များကို တည်းဖြတ်ကိရိယာနှင့် တာမီနယ်အသုံးပြုသည့် အခြေအနေအလိုက် အင်္ဂလိပ်စာသားမှ တိုက်ရိုက်ရေးထားသည်။ စနစ်အကန့်များသည် macOS ဘာသာစကားသတ်မှတ်ချက်ကို လိုက်သည်။ ဤစာရင်းတွင် လူသုံးဘာသာစကားနှင့် ပရိုဂရမ်ဘာသာစကားအားလုံး မပါဝင်ပါ။ [Sumi ဘာသာပြန်ခြင်း](CONTRIBUTING.md#translating-sumi) ကို ကြည့်ပါ။
- အလင်းနှင့် အမှောင်အသွင်သည် စနစ်အတိုင်း ပြောင်းသည်။

## ဒေါင်းလုဒ်

- [နောက်ဆုံးထုတ်ဗားရှင်း](../../releases/latest)
- [ညစဉ်ဘီလ်ဒ်](../../releases/tag/nightly): `main` ပြောင်းလဲမှုတိုင်းတွင် ပြန်တည်ဆောက်သည်။

`Sumi.zip` ကို ဒေါင်းလုဒ်လုပ်၊ ဖြည်ပြီး Sumi ကို Applications သို့ ရွှေ့ပါ။ ဘီလ်ဒ်တစ်ခုတည်းကို Apple silicon နှင့် Intel Mac နှစ်မျိုးလုံးတွင် သုံးနိုင်သည်။

Sumi တွင် Apple Developer ID လက်မှတ်မရှိသဖြင့် macOS က ပထမအကြိမ်ဖွင့်ခြင်းကို တားသည်။ စနစ်သတ်မှတ်ချက်များ › ကိုယ်ရေးအချက်အလက်နှင့် လုံခြုံရေးသို့ သွားပြီး မည်သို့ပင်ဖြစ်စေဖွင့်မည့်ခလုတ်ကို နှိပ်ပါ သို့မဟုတ် ဤအမိန့်ကို လုပ်ဆောင်ပါ။

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## လိုအပ်ချက်များ

macOS 14 သို့မဟုတ် ပိုသစ်သောဗားရှင်း။ တည်ဆောက်ရန် Xcode 26 သို့မဟုတ် ပိုသစ်သောဗားရှင်း (Swift 6.2) လိုသည်။

## ရင်းမြစ်ကုဒ်မှ တည်ဆောက်ခြင်း

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ဖိုင် › ဖွင့်ရန်… (⌘O) မှဖြစ်စေ အမိန့်လိုင်းမှဖြစ်စေ ဖိုင်တွဲကို ပရောဂျက်အဖြစ် ဖွင့်ပါ။

```sh
open -a Sumi path/to/project
```

## ကီးဘုတ်အတိုကောက်များ

| လုပ်ဆောင်ချက် | အတိုကောက် |
|---|---|
| နေရာတိုင်းရှာရန် | ⇧⇧ သို့မဟုတ် ⇧⌘O |
| ပရောဂျက်ဖိုင်ပင် | ⌘1 |
| တာမီနယ် | ⌥F12 |
| တာမီနယ်တက်ဘ်အသစ် | ⌘T |
| တာမီနယ်နှင့် ပရောဂျက်နေရာ လဲရန် | ⌃⌘T |
| တာမီနယ်ကို အကြီးဆုံးချဲ့ရန် | ⇧⌘↩ |
| Markdown / HTML အစမ်းမြင်ကွင်း | ⇧⌘V |
| ပရောဂျက်ဖိုင်ပင်တွင် ရွေးရန် | ⌥⌘1 |
| နောက်တက်ဘ် / ယခင်တက်ဘ် | ⇧⌘] / ⇧⌘[ |
| သိမ်းရန် / အားလုံးသိမ်းရန် | ⌘S / ⌥⌘S |

## ပါဝင်ကူညီခြင်း

ချို့ယွင်းချက်အစီရင်ခံစာ၊ ပြင်ဆင်ချက်နှင့် ဘာသာပြန်များကို ကြိုဆိုပါသည်။ [CONTRIBUTING.md](CONTRIBUTING.md) ကို ဖတ်ပါ။

## လိုင်စင်

MIT။ Sumi တွင် SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) နှင့် GitHub Linguist ဘာသာစကားစာရင်း (MIT) ပါဝင်သည်။ [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) ကို ကြည့်ပါ။
