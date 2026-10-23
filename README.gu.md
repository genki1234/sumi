# Sumi

AI કોડિંગ એજન્ટો સાથે કામ કરવા માટે બનાવેલું હળવું macOS લખાણ સંપાદક. મુક્ત સ્રોત (MIT).

અંદરના ટર્મિનલમાં તમારો એજન્ટ ચલાવો, તે જે ફાઇલો પર કામ કરે તે ક્લિક કરીને ખોલો અને તેણે લખેલું Markdown ગોઠવાયેલા પાનાં તરીકે વાંચો.

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

## સુવિધાઓ

- ટર્મિનલમાં ફાઇલના પાથ લિંક હોય છે. કોડિંગ એજન્ટ `⎿ M src/app.ts` અથવા `src/app.ts:42:7` બતાવે ત્યારે પાથ વાદળી થાય છે અને ક્લિક કરતાં ફાઇલ તે લાઇન પર ખૂલે છે.
- ડાબે પ્રોજેક્ટ દૃશ્ય, વચ્ચે સંપાદક અને નીચે ટર્મિનલ.
- ટર્મિનલ અને પ્રોજેક્ટ દૃશ્યની જગ્યા બદલો (⌃⌘T) જેથી ડાબે આખી ઊંચાઈનું ટર્મિનલ મળે. ⇧⌘↩ વડે ટર્મિનલ મોટું કરો.
- લખવામાં 500 msનો વિરામ આવે ત્યારે અને બંધ કરતાં પહેલાં ફાઇલો આપમેળે સચવાય છે. બહારથી થયેલા ફેરફારો અથવા સાચવવામાં નિષ્ફળતા વખતે તમારા ફેરફારો ટૅબમાં રહે છે અને નકલ સાચવવાનો વિકલ્પ મળે છે.
- આદેશો ચાલુ હોય તે ટર્મિનલ બંધ કરવા પુષ્ટિ માગે છે; તેમાં પૃષ્ઠભૂમિનાં કામ અને એપમાંથી બહાર નીકળવું પણ સામેલ છે. પેનલ છુપાવવાથી સત્રો ચાલુ રહે છે.
- ટર્મિનલ મૂળભૂત રીતે Metal વાપરે છે; દૃશ્ય મેનુમાં «GPU વડે ચિત્રણ» સ્વિચ છે. ⌘F વડે આઉટપુટમાં શોધો; નવી ટૅબ હાલની કાર્યકારી ડિરેક્ટરી લે છે.
- Shift+Enter વડે અનેક લાઇનોનું પ્રોમ્પ્ટ લખી શકાય છે. અનેક લાઇનોનું લખાણ, ફાઇલો અને છબીઓ પેસ્ટ કરી શકાય છે; છબીઓ અસ્થાયી PNG તરીકે રહે છે અને તેમના પાથ અવતરણચિહ્નોમાં દાખલ થાય છે.
- લખાણની બાજુમાં Markdown અને HTMLનું પૂર્વાવલોકન લખતાં જ બદલાય છે (⇧⌘V અથવા ટૅબના ઉપર જમણે આવેલા બટનો).
  Markdown દર્શાવવા GitHub વાપરે છે તે cmark-gfm વપરાય છે: કોષ્ટકો, કામની યાદીઓ, વચ્ચેથી કાપેલું લખાણ અને આપમેળે બનતી લિંકો.
- બધે શોધો: પ્રોજેક્ટની કોઈપણ ફાઇલ નામના અંદાજિત મેળથી શોધવા Shift બે વાર દબાવો.
- ભાષા અને ફાઇલ-ફોર્મેટનાં 915 નામોની સૂચિથી સ્રોત ફાઇલો ઓળખે છે; તેમાં ફાઇલનાં નામ, સંયુક્ત એક્સ્ટેન્શન અને સ્ક્રિપ્ટ ઇન્ટરપ્રિટર સામેલ છે. Prismના બધા 297 ઘટકો (291 સ્વતંત્ર વ્યાકરણ અને 6 સહાયક) સાથે આવે છે અને જરૂર પડે ત્યારે લોડ થાય છે. વ્યાકરણ વગરના ફોર્મેટમાં સામાન્ય લખાણ હાઇલાઇટિંગ વપરાય છે.
- ઇન્ટરફેસમાં 108 ભાષાના વિકલ્પો છે. ભાષા મેનુથી તરત બદલો અથવા સિસ્ટમની ભાષા અનુસરો. પસંદગી યાદ રહે છે; ખુલ્લી ફાઇલો, ન સાચવેલા ફેરફારો અને ટર્મિનલ સત્રો ખુલ્લાં રહે છે. અરબી, હિબ્રૂ અને અન્ય જમણેથી ડાબે ઇન્ટરફેસમાં પણ કોડ, પૂર્વાવલોકન અને ટર્મિનલ આઉટપુટ ડાબેથી જમણે રહે છે.
  સંપાદક અને ટર્મિનલનો સંદર્ભ ધ્યાનમાં રાખીને અંગ્રેજી લખાણમાંથી સીધા અનુવાદ લખાય છે. સિસ્ટમની પેનલો macOSની ભાષા સેટિંગ અનુસરે છે. આ સૂચિ બધી માનવ ભાષા અથવા પ્રોગ્રામિંગ ભાષાને આવરી લેતી નથી. [Sumiનો અનુવાદ](CONTRIBUTING.md#translating-sumi) જુઓ.
- આછું અને ઘેરું દેખાવ સિસ્ટમને અનુસરે છે.

## ડાઉનલોડ

- [પ્રકાશનો](../../releases)
- [રાત્રિ બિલ્ડ](../../releases/tag/nightly): `main`ના દરેક ફેરફાર પર ફરી બને છે.

`Sumi.zip` ડાઉનલોડ કરી ખોલો અને Sumiને Applicationsમાં ખસેડો. એક જ બિલ્ડ Apple silicon અને Intel Mac બંને પર ચાલે છે.

Sumi પર Apple Developer IDથી સહી કરેલી નથી, તેથી macOS પહેલી વાર ચલાવતાં અટકાવે છે. સિસ્ટમ સેટિંગ્સ › ગોપનીયતા અને સુરક્ષા ખોલી «તેમ છતાં ખોલો» ક્લિક કરો અથવા ચલાવો:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## જરૂરિયાતો

macOS 14 અથવા નવું. બિલ્ડ કરવા Xcode 26 અથવા નવું (Swift 6.2) જોઈએ.

## સ્રોતમાંથી બિલ્ડ

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

ફાઇલ › ખોલો… (⌘O)થી ફોલ્ડરને પ્રોજેક્ટ તરીકે ખોલો અથવા કમાન્ડ લાઇનથી:

```sh
open -a Sumi path/to/project
```

## કીબોર્ડ શૉર્ટકટ

| કાર્ય | શૉર્ટકટ |
|---|---|
| બધે શોધો | ⇧⇧ અથવા ⇧⌘O |
| પ્રોજેક્ટ દૃશ્ય | ⌘1 |
| ટર્મિનલ | ⌥F12 |
| નવી ટર્મિનલ ટૅબ | ⌘T |
| ટર્મિનલ અને પ્રોજેક્ટ દૃશ્યની જગ્યા બદલો | ⌃⌘T |
| ટર્મિનલ મોટું કરો | ⇧⌘↩ |
| Markdown / HTML પૂર્વાવલોકન | ⇧⌘V |
| પ્રોજેક્ટ દૃશ્યમાં પસંદ કરો | ⌥⌘1 |
| આગળની / પહેલાંની ટૅબ | ⇧⌘] / ⇧⌘[ |
| સાચવો / બધું સાચવો | ⌘S / ⌥⌘S |

## યોગદાન

ભૂલોની જાણ, સુધારા અને અનુવાદ આવકાર્ય છે. [CONTRIBUTING.md](CONTRIBUTING.md) વાંચો.

## પરવાનો

MIT. Sumiમાં SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) અને GitHub Linguistની ભાષા સૂચિ (MIT) છે; [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) જુઓ.
