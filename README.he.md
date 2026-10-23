# Sumi

עורך טקסט קל ל־macOS, שנבנה לעבודה לצד סוכני תכנות מבוססי בינה מלאכותית. קוד פתוח (MIT).

הפעילו את הסוכן במסוף המובנה, לחצו על הקבצים שבהם הוא עובד כדי לפתוח אותם, וקראו את ה־Markdown שהוא כותב כדפים מעוצבים.

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

## תכונות

- נתיבי קבצים במסוף הם קישורים. כאשר סוכן תכנות מדפיס `⎿ M src/app.ts` או `src/app.ts:42:7`, הנתיב הופך לכחול ולחיצה פותחת את הקובץ באותה שורה.
- תצוגת הפרויקט משמאל, העורך במרכז והמסוף למטה.
- החליפו את מיקומי המסוף ותצוגת הפרויקט (⌃⌘T) כדי להציב משמאל מסוף בגובה מלא. הגדילו את המסוף באמצעות ⇧⌘↩.
- קבצים נשמרים אוטומטית אחרי הפסקת הקלדה של 500 ms ולפני סגירה. בשינויים חיצוניים או בכשל בשמירה, העריכות שלכם נשארות בלשונית, עם אפשרות לשמור עותק.
- סגירת מסוף עם פקודות פעילות דורשת אישור, כולל משימות ברקע ויציאה מהיישום. הסתרת הלוח משאירה את ההפעלות פעילות.
- מסופים משתמשים ב־Metal כברירת מחדל, עם מתג „ציור באמצעות GPU” בתפריט תצוגה. חפשו בפלט באמצעות ⌘F; לשוניות חדשות מקבלות את תיקיית העבודה הנוכחית.
- Shift+Enter מאפשר הזנת הנחיות בכמה שורות. אפשר להדביק טקסט רב־שורות, קבצים ותמונות; תמונות נשמרות כקובצי PNG זמניים ומוכנסות כנתיבים במירכאות.
- תצוגה מקדימה של Markdown ו־HTML לצד הטקסט, שמתעדכנת תוך כדי הקלדה (⇧⌘V או הכפתורים בפינה הימנית העליונה של הלשונית).
  Markdown מוצג באמצעות cmark-gfm, המנוע שבו משתמש GitHub: טבלאות, רשימות משימות, טקסט מחוק וקישורים אוטומטיים.
- חפש בכל מקום: לחצו על Shift פעמיים כדי למצוא כל קובץ בפרויקט באמצעות התאמה מקורבת של השם.
- מזהה קובצי מקור בעזרת קטלוג של 915 שמות שפות ותבניות קבצים, הכולל שמות קבצים, סיומות מורכבות ומפרשי סקריפטים. כל 297 רכיבי Prism (291 דקדוקים עצמאיים ו־6 רכיבי עזר) כלולים ונטענים לפי הצורך. תבניות ללא דקדוק משתמשות בהדגשת טקסט בסיסית.
- הממשק מציע 108 אפשרויות שפה. החליפו מיד דרך תפריט שפה או עקבו אחר שפת המערכת. הבחירה נשמרת; קבצים פתוחים, עריכות שלא נשמרו והפעלות מסוף נשארים פתוחים. בממשקים בערבית, בעברית ובשפות אחרות מימין לשמאל, הקוד, התצוגות המקדימות ופלט המסוף נשארים משמאל לימין.
  התרגומים נכתבים ישירות מהטקסטים באנגלית, בהתאם להקשר שלהם בעורך ובמסוף. לוחות מערכת פועלים לפי הגדרות השפה של macOS. הקטלוג אינו מכסה את כל השפות הטבעיות או שפות התכנות. ראו [תרגום Sumi](CONTRIBUTING.md#translating-sumi).
- מראה בהיר וכהה עוקבים אחר המערכת.

## הורדה

- [הגרסה האחרונה](../../releases/latest)
- [בנייה לילית](../../releases/tag/nightly): נבנית מחדש בכל שינוי ב־`main`.

הורידו את `Sumi.zip`, חלצו אותו והעבירו את Sumi לתיקיית היישומים. אותה בנייה פועלת במחשבי Mac עם Apple silicon ועם Intel.

Sumi אינו חתום באמצעות Apple Developer ID, ולכן macOS חוסם את ההפעלה הראשונה. פתחו הגדרות המערכת › פרטיות ואבטחה ולחצו על „פתח בכל זאת”, או הפעילו:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## דרישות

macOS 14 ומעלה. לבנייה נדרש Xcode 26 ומעלה (Swift 6.2).

## בנייה מקוד המקור

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

פתחו תיקייה כפרויקט דרך קובץ › פתח… (⌘O), או משורת הפקודה:

```sh
open -a Sumi path/to/project
```

## קיצורי מקלדת

| פעולה | קיצור |
|---|---|
| חפש בכל מקום | ⇧⇧ או ⇧⌘O |
| תצוגת הפרויקט | ⌘1 |
| מסוף | ⌥F12 |
| לשונית מסוף חדשה | ⌘T |
| החלפת מיקומי המסוף ותצוגת הפרויקט | ⌃⌘T |
| הגדלת המסוף | ⇧⌘↩ |
| תצוגה מקדימה של Markdown / HTML | ⇧⌘V |
| בחירה בתצוגת הפרויקט | ⌥⌘1 |
| הלשונית הבאה / הקודמת | ⇧⌘] / ⇧⌘[ |
| שמור / שמור הכול | ⌘S / ⌥⌘S |

## תרומה

דיווחי תקלות, תיקונים ותרגומים יתקבלו בברכה. קראו את [CONTRIBUTING.md](CONTRIBUTING.md).

## רישיון

MIT. Sumi כולל את SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) ואת קטלוג השפות של GitHub Linguist (MIT); ראו [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
