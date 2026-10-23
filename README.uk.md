# Sumi

Легкий текстовий редактор для macOS, створений для роботи з агентами ШІ для програмування. Відкритий код (MIT).

Запускайте агента у вбудованому терміналі, відкривайте змінювані ним файли клацанням і читайте написаний ним Markdown як оформлені сторінки.

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

## Можливості

- Шляхи до файлів у терміналі є посиланнями. Коли агент виводить `⎿ M src/app.ts` або `src/app.ts:42:7`, шлях стає синім; клацання відкриває файл на відповідному рядку.
- Дерево проєкту ліворуч, редактор посередині, термінал унизу.
- Поміняйте місцями термінал і дерево проєкту (⌃⌘T), щоб термінал займав усю висоту ліворуч. Розгорніть термінал за допомогою ⇧⌘↩.
- Файли зберігаються автоматично після паузи введення в 500 ms і перед закриттям. За зовнішніх змін або помилок збереження ваші правки лишаються у вкладці; можна зберегти копію.
- Закриття термінала з активними командами потребує підтвердження, зокрема за фонових завдань і під час завершення програми. Приховування панелі залишає сеанси активними.
- Термінали типово використовують Metal; перемикач «Відтворення через GPU» є в меню «Вигляд». Шукайте у виводі за допомогою ⌘F; нові вкладки успадковують поточну робочу папку.
- Shift+Enter зберігає багаторядкове введення запитів. Можна вставляти багаторядковий текст, файли та зображення; зображення зберігаються як тимчасові PNG, а їхні шляхи вставляються в лапках.
- Перегляд Markdown і HTML поряд із текстом оновлюється під час введення (⇧⌘V або кнопки вгорі праворуч на вкладці). Markdown відтворює cmark-gfm, який використовує GitHub: таблиці, списки завдань, закреслення та автоматичні посилання.
- Шукати всюди: натисніть Shift двічі, щоб знайти будь-який файл проєкту за приблизним збігом назви.
- Розпізнає вихідні файли за каталогом 915 назв мов і форматів, включно з назвами файлів, складеними розширеннями та інтерпретаторами скриптів. Усі 297 компонентів Prism (291 самостійна граматика та 6 допоміжних компонентів) включено й завантажуються за потреби. Формати без граматики використовують базове підсвічування тексту.
- Інтерфейс має 108 мовних варіантів. Меню «Мова» дозволяє миттєво перемкнутися або дотримуватися мови системи. Вибір запам’ятовується; відкриті файли, незбережені правки та сеанси термінала лишаються відкритими. В арабському, івритському й інших інтерфейсах справа наліво код, перегляд і вивід термінала лишаються зліва направо. Переклади написано безпосередньо з англійських рядків з урахуванням редактора й термінала. Системні панелі дотримуються мовних налаштувань macOS. Каталог не охоплює всі природні мови й мови програмування. Див. [Переклад Sumi](CONTRIBUTING.md#translating-sumi).
- Світлий і темний вигляд відповідають системі.

## Завантаження

- [Останній випуск](../../releases/latest)
- [Нічна збірка](../../releases/tag/nightly): перебудовується після кожної зміни `main`.

Завантажте `Sumi.zip`, розпакуйте та перемістіть Sumi до «Програми». Одна збірка працює на Mac з Apple silicon та Intel.

Sumi не підписано Apple Developer ID, тому macOS блокує перший запуск. Відкрийте «Системні параметри» › «Приватність і безпека» й натисніть «Однаково відкрити» або виконайте:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Вимоги

macOS 14 або новіша. Для збирання потрібен Xcode 26 або новіший (Swift 6.2).

## Збирання з вихідного коду

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Відкрийте папку як проєкт через «Файл» › «Відкрити…» (⌘O) або з командного рядка:

```sh
open -a Sumi path/to/project
```

## Клавіатурні скорочення

| Дія | Скорочення |
|---|---|
| Шукати всюди | ⇧⇧ / ⇧⌘O |
| Дерево проєкту | ⌘1 |
| Термінал | ⌥F12 |
| Нова вкладка термінала | ⌘T |
| Поміняти місцями термінал і проєкт | ⌃⌘T |
| Розгорнути термінал | ⇧⌘↩ |
| Markdown / HTML — Увімкнути або сховати перегляд | ⇧⌘V |
| Вибрати в дереві проєкту | ⌥⌘1 |
| Наступна вкладка / Попередня вкладка | ⇧⌘] / ⇧⌘[ |
| Зберегти / Зберегти все | ⌘S / ⌥⌘S |

## Участь у розробці

Вітаються повідомлення про помилки, виправлення й переклади. Прочитайте [CONTRIBUTING.md](CONTRIBUTING.md).

## Ліцензія

MIT. Sumi містить SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) і каталог мов GitHub Linguist (MIT); див. [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
