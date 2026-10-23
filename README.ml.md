# Sumi

AI കോഡിംഗ് ഏജന്റുകൾക്കൊപ്പം പ്രവർത്തിക്കാൻ രൂപകൽപ്പന ചെയ്ത, ഭാരം കുറഞ്ഞ macOS ടെക്സ്റ്റ് എഡിറ്റർ. തുറന്ന സോഴ്‌സ് (MIT).

ഉൾപ്പെടുത്തിയ ടെർമിനലിൽ നിങ്ങളുടെ ഏജന്റിനെ പ്രവർത്തിപ്പിക്കുക, അത് മാറ്റുന്ന ഫയലുകൾ ക്ലിക്ക് ചെയ്ത് തുറക്കുക, അത് എഴുതുന്ന Markdown രൂപപ്പെടുത്തിയ പേജുകളായി വായിക്കുക.

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

## സവിശേഷതകൾ

- ടെർമിനലിലെ ഫയൽ പാതകൾ ലിങ്കുകളാണ്. കോഡിംഗ് ഏജന്റ് `⎿ M src/app.ts` അല്ലെങ്കിൽ `src/app.ts:42:7` പ്രിന്റ് ചെയ്യുമ്പോൾ പാത നീലയാകും; ക്ലിക്ക് ചെയ്താൽ ആ വരിയിൽ ഫയൽ തുറക്കും.
- ഇടത് വശത്ത് പ്രോജക്റ്റ് ട്രീ, നടുവിൽ എഡിറ്റർ, താഴെ ടെർമിനൽ.
- ഇടത് വശത്ത് മുഴുവൻ ഉയരമുള്ള ടെർമിനൽ ലഭിക്കാൻ ടെർമിനലിന്റെയും പ്രോജക്റ്റ് ട്രീയുടെയും സ്ഥാനം മാറ്റുക (⌃⌘T). ⇧⌘↩ ഉപയോഗിച്ച് ടെർമിനൽ പരമാവധി വലുതാക്കുക.
- ടൈപ്പിംഗ് 500 ms നിർത്തിയശേഷവും അടയ്ക്കുന്നതിന് മുമ്പും ഫയലുകൾ സ്വയം സൂക്ഷിക്കും. പുറത്തുനിന്നുള്ള മാറ്റമോ സൂക്ഷിക്കൽ പരാജയമോ ഉണ്ടായാൽ നിങ്ങളുടെ തിരുത്തലുകൾ ടാബിൽ നിലനിൽക്കും; പകർപ്പ് സൂക്ഷിക്കാനുള്ള ഓപ്ഷനും ലഭിക്കും.
- കമാൻഡുകൾ പ്രവർത്തിക്കുന്ന ടെർമിനൽ അടയ്ക്കുമ്പോൾ സ്ഥിരീകരണം ചോദിക്കും; പശ്ചാത്തല ജോലികളും ആപ്പ് വിടുന്നതും ഇതിൽ ഉൾപ്പെടുന്നു. പാനൽ മറയ്ക്കുമ്പോൾ സെഷനുകൾ പ്രവർത്തിച്ചുകൊണ്ടിരിക്കും.
- ടെർമിനലുകൾ സ്ഥിരസ്ഥിതിയായി Metal ഉപയോഗിക്കുന്നു; കാഴ്ച മെനുവിൽ GPU റെൻഡറിംഗ് സ്വിച്ച് ഉണ്ട്. ⌘F ഉപയോഗിച്ച് ഔട്ട്പുട്ടിൽ തിരയുക; പുതിയ ടാബുകൾ ഇപ്പോഴത്തെ പ്രവർത്തന ഡയറക്ടറി സ്വീകരിക്കും.
- Shift+Enter ഒന്നിലധികം വരികളുള്ള പ്രോംപ്റ്റ് ഇൻപുട്ട് നിലനിർത്തുന്നു. ഒന്നിലധികം വരികളുള്ള വാചകം, ഫയലുകൾ, ചിത്രങ്ങൾ എന്നിവ ഒട്ടിക്കാം; ചിത്രങ്ങൾ താൽക്കാലിക PNG ആയി സൂക്ഷിച്ച് ഉദ്ധരണിചിഹ്നങ്ങളുള്ള പാതകളായി ചേർക്കും.
- വാചകത്തിനടുത്തുള്ള Markdown, HTML മുൻകാഴ്ച ടൈപ്പ് ചെയ്യുമ്പോൾ പുതുക്കും (⇧⌘V അല്ലെങ്കിൽ ടാബിന്റെ മുകളിൽ വലതുവശത്തെ ബട്ടണുകൾ). Markdown പ്രദർശിപ്പിക്കാൻ GitHub ഉപയോഗിക്കുന്ന cmark-gfm ആണ് ഉപയോഗിക്കുന്നത്: പട്ടികകൾ, പ്രവർത്തനപ്പട്ടികകൾ, കുറുകെ വരയിട്ട വാചകം, സ്വയമേവയുള്ള ലിങ്കുകൾ.
- എല്ലായിടത്തും തിരയുക: പേരിന്റെ ഏകദേശ പൊരുത്തത്തിലൂടെ പ്രോജക്റ്റിലെ ഏത് ഫയലും കണ്ടെത്താൻ Shift രണ്ടുതവണ അമർത്തുക.
- ഭാഷകളുടെയും ഫയൽ ഫോർമാറ്റുകളുടെയും 915 പേരുകളുടെ പട്ടികയിലൂടെ സോഴ്‌സ് ഫയലുകൾ തിരിച്ചറിയുന്നു; ഫയൽ പേരുകൾ, സംയുക്ത എക്സ്റ്റൻഷനുകൾ, സ്ക്രിപ്റ്റ് ഇന്റർപ്രെറ്ററുകൾ എന്നിവയും ഉൾപ്പെടുന്നു. എല്ലാ 297 Prism ഘടകങ്ങളും (291 സ്വതന്ത്ര വ്യാകരണങ്ങളും 6 സഹായികളും) ഉൾപ്പെടുത്തിയിട്ടുണ്ട്; ആവശ്യപ്പെടുമ്പോൾ ലോഡ് ചെയ്യും. വ്യാകരണമില്ലാത്ത ഫോർമാറ്റുകൾ അടിസ്ഥാന ടെക്സ്റ്റ് ഹൈലൈറ്റിംഗ് ഉപയോഗിക്കും.
- ഇന്റർഫേസിൽ 108 ഭാഷാ ഓപ്ഷനുകളുണ്ട്. ഉടൻ മാറാനോ സിസ്റ്റം ഭാഷ പിന്തുടരാനോ ഭാഷ മെനു ഉപയോഗിക്കുക. തിരഞ്ഞെടുപ്പ് ഓർത്തുവയ്ക്കും; തുറന്ന ഫയലുകൾ, സൂക്ഷിക്കാത്ത തിരുത്തലുകൾ, ടെർമിനൽ സെഷനുകൾ എന്നിവ തുറന്നുതന്നെയിരിക്കും. അറബി, ഹീബ്രു, മറ്റ് വലത്തുനിന്ന് ഇടത്തേക്കുള്ള ഇന്റർഫേസുകളിലും കോഡ്, മുൻകാഴ്ച, ടെർമിനൽ ഔട്ട്പുട്ട് എന്നിവ ഇടത്തുനിന്ന് വലത്തേക്കായിരിക്കും. എഡിറ്ററിന്റെയും ടെർമിനലിന്റെയും സന്ദർഭം പരിഗണിച്ച് ഇംഗ്ലീഷ് വാചകങ്ങളിൽനിന്ന് നേരിട്ടാണ് പരിഭാഷകൾ എഴുതിയിരിക്കുന്നത്. സിസ്റ്റം പാനലുകൾ macOS ഭാഷാ ക്രമീകരണങ്ങൾ പിന്തുടരുന്നു. എല്ലാ മനുഷ്യഭാഷകളെയും പ്രോഗ്രാമിംഗ് ഭാഷകളെയും ഈ പട്ടിക ഉൾക്കൊള്ളുന്നില്ല. [Sumi പരിഭാഷപ്പെടുത്തൽ](CONTRIBUTING.md#translating-sumi) കാണുക.
- വെളിച്ചവും ഇരുണ്ടതുമായ രൂപം സിസ്റ്റം പിന്തുടരും.

## ഡൗൺലോഡ്

- [ഏറ്റവും പുതിയ പതിപ്പ്](../../releases/latest)
- [രാത്രി ബിൽഡ്](../../releases/tag/nightly): `main` ലെ ഓരോ മാറ്റത്തിനും വീണ്ടും നിർമ്മിക്കുന്നു.

`Sumi.zip` ഡൗൺലോഡ് ചെയ്ത് അഴിച്ചെടുക്കുക, Sumiയെ Applications ലേക്ക് മാറ്റുക. ഒരേ ബിൽഡ് Apple silicon, Intel Mac എന്നിവയിൽ പ്രവർത്തിക്കും.

Sumiയിൽ Apple Developer ID ഒപ്പില്ലാത്തതിനാൽ macOS ആദ്യ തുറക്കൽ തടയും. സിസ്റ്റം ക്രമീകരണങ്ങൾ › സ്വകാര്യതയും സുരക്ഷയും തുറന്ന് എന്തായാലും തുറക്കുക എന്ന ഓപ്ഷൻ തിരഞ്ഞെടുക്കുക, അല്ലെങ്കിൽ ഇത് പ്രവർത്തിപ്പിക്കുക:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## ആവശ്യകതകൾ

macOS 14 അല്ലെങ്കിൽ പുതിയത്. നിർമ്മിക്കാൻ Xcode 26 അല്ലെങ്കിൽ പുതിയത് (Swift 6.2) വേണം.

## സോഴ്‌സിൽനിന്ന് നിർമ്മിക്കുക

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ഫയൽ › തുറക്കുക… (⌘O) വഴിയോ കമാൻഡ് ലൈനിൽനിന്നോ ഫോൾഡർ പ്രോജക്റ്റായി തുറക്കുക:

```sh
open -a Sumi path/to/project
```

## കീബോർഡ് കുറുക്കുവഴികൾ

| പ്രവർത്തനം | കുറുക്കുവഴി |
|---|---|
| എല്ലായിടത്തും തിരയുക | ⇧⇧ അല്ലെങ്കിൽ ⇧⌘O |
| പ്രോജക്റ്റ് ട്രീ | ⌘1 |
| ടെർമിനൽ | ⌥F12 |
| പുതിയ ടെർമിനൽ ടാബ് | ⌘T |
| ടെർമിനലും പ്രോജക്റ്റും സ്ഥാനം മാറ്റുക | ⌃⌘T |
| ടെർമിനൽ പരമാവധി വലുതാക്കുക | ⇧⌘↩ |
| Markdown / HTML മുൻകാഴ്ച | ⇧⌘V |
| പ്രോജക്റ്റ് ട്രീയിൽ തിരഞ്ഞെടുക്കുക | ⌥⌘1 |
| അടുത്ത ടാബ് / മുമ്പത്തെ ടാബ് | ⇧⌘] / ⇧⌘[ |
| സൂക്ഷിക്കുക / എല്ലാം സൂക്ഷിക്കുക | ⌘S / ⌥⌘S |

## സംഭാവനകൾ

ബഗ് റിപ്പോർട്ടുകളും പരിഹാരങ്ങളും പരിഭാഷകളും സ്വാഗതം ചെയ്യുന്നു. [CONTRIBUTING.md](CONTRIBUTING.md) വായിക്കുക.

## ലൈസൻസ്

MIT. Sumiയിൽ SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT), GitHub Linguist ഭാഷാ പട്ടിക (MIT) എന്നിവ ഉൾപ്പെടുന്നു; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) കാണുക.
