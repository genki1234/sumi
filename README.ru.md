# Sumi

Лёгкий текстовый редактор для macOS, созданный для работы с ИИ-агентами программирования. Открытый исходный код (MIT).

Запускайте агента во встроенном терминале, открывайте изменённые им файлы щелчком и читайте написанный им Markdown в виде оформленных страниц.

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

## Возможности

- Пути к файлам в терминале работают как ссылки. Когда агент выводит `⎿ M src/app.ts` или `src/app.ts:42:7`, путь становится синим; щелчок открывает файл на указанной строке.
- Дерево проекта слева, редактор в центре, терминал внизу.
- Поменяйте местами терминал и дерево проекта (⌃⌘T), чтобы разместить терминал слева на всю высоту. Разверните терминал сочетанием ⇧⌘↩.
- Файлы сохраняются автоматически после паузы ввода в 500 мс и перед закрытием. При внешних изменениях и ошибках сохранения ваши правки остаются во вкладке; можно сохранить копию.
- При закрытии терминала с работающими командами запрашивается подтверждение, в том числе для фоновых заданий и при завершении приложения. Скрытие панели не останавливает сеансы.
- Терминалы по умолчанию используют Metal; переключатель «Отрисовка на GPU» находится в меню «Вид». Поиск по выводу — ⌘F; новые вкладки наследуют текущую рабочую папку.
- Shift+Enter сохраняет многострочный ввод запроса. Можно вставлять многострочный текст, файлы и изображения; изображения сохраняются как временные PNG, а их пути вставляются в кавычках.
- Предпросмотр Markdown и HTML рядом с текстом обновляется при вводе (⇧⌘V или кнопки справа вверху вкладки). Для Markdown используется cmark-gfm, как на GitHub: таблицы, списки задач, зачёркивание и автоматические ссылки.
- Поиск везде: дважды нажмите Shift, чтобы найти любой файл проекта по приблизительному совпадению имени.
- Исходные файлы распознаются по каталогу из 915 названий языков и форматов, включая имена файлов, составные расширения и интерпретаторы скриптов. Все 297 компонентов Prism (291 самостоятельная грамматика и 6 вспомогательных компонентов) включены и загружаются по запросу. Для форматов без грамматики используется базовая подсветка текста.
- Интерфейс предлагает 108 языков. Меню «Язык» позволяет мгновенно переключиться или следовать языку системы. Выбор запоминается; открытые файлы, несохранённые правки и сеансы терминала остаются открытыми. В арабском, иврите и других интерфейсах справа налево код, предпросмотр и вывод терминала сохраняют направление слева направо. Переводы написаны непосредственно по английским строкам с учётом контекста редактора и терминала. Системные панели следуют языковым настройкам macOS. Каталог не охватывает все естественные языки и языки программирования. См. [Перевод Sumi](CONTRIBUTING.md#translating-sumi).
- Светлое и тёмное оформление следуют системе.

## Скачать

- [Последний выпуск](../../releases/latest)
- [Ночная сборка](../../releases/tag/nightly): пересобирается при каждом изменении `main`.

Скачайте `Sumi.zip`, распакуйте и переместите Sumi в «Программы». Одна сборка работает на Mac с Apple silicon и Intel.

Sumi не подписан Apple Developer ID, поэтому macOS блокирует первый запуск. Откройте «Системные настройки» › «Конфиденциальность и безопасность» и нажмите «Всё равно открыть» либо выполните:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Требования

macOS 14 или новее. Для сборки нужен Xcode 26 или новее (Swift 6.2).

## Сборка из исходного кода

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Откройте папку как проект через «Файл» › «Открыть…» (⌘O) или из командной строки:

```sh
open -a Sumi path/to/project
```

## Сочетания клавиш

| Действие | Сочетание |
|---|---|
| Поиск везде | ⇧⇧ / ⇧⌘O |
| Дерево проекта | ⌘1 |
| Терминал | ⌥F12 |
| Новая вкладка терминала | ⌘T |
| Поменять местами терминал и проект | ⌃⌘T |
| Развернуть терминал | ⇧⌘↩ |
| Markdown / HTML — Переключить предпросмотр | ⇧⌘V |
| Выделить в дереве проекта | ⌥⌘1 |
| Следующая вкладка / Предыдущая вкладка | ⇧⌘] / ⇧⌘[ |
| Сохранить / Сохранить все | ⌘S / ⌥⌘S |

## Участие в разработке

Приветствуются сообщения об ошибках, исправления и переводы. Прочитайте [CONTRIBUTING.md](CONTRIBUTING.md).

## Лицензия

MIT. Sumi включает SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) и каталог языков GitHub Linguist (MIT); см. [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
