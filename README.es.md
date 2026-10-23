# Sumi

Un editor de texto ligero para macOS, diseñado para trabajar con agentes de programación con IA. De código abierto (MIT).

Ejecuta tu agente en el terminal integrado, abre con un clic los archivos con los que trabaja y lee el Markdown que escribe como páginas con formato.

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

## Funciones

- Las rutas de archivos del terminal son enlaces. Cuando un agente imprime `⎿ M src/app.ts` o `src/app.ts:42:7`, la ruta se vuelve azul y un clic abre el archivo en esa línea.
- Vista del proyecto a la izquierda, editor en el centro y terminal abajo.
- Intercambia el terminal y la vista del proyecto (⌃⌘T) para colocar a la izquierda un terminal de altura completa. Maximiza el terminal con ⇧⌘↩.
- Los archivos se guardan automáticamente tras una pausa de escritura de 500 ms y antes de cerrarse. Ante cambios externos o fallos al guardar, tus ediciones permanecen en la pestaña, con la opción de guardar una copia.
- Cerrar un terminal con comandos en ejecución pide confirmación, incluidos los trabajos en segundo plano y la salida de la aplicación. Ocultar el panel mantiene las sesiones en ejecución.
- Los terminales usan Metal de forma predeterminada, con un interruptor «Renderizado con GPU» en Visualización. Busca en la salida con ⌘F; las pestañas nuevas heredan el directorio de trabajo actual.
- Shift+Enter permite introducir instrucciones de varias líneas. Se pueden pegar textos de varias líneas, archivos e imágenes; las imágenes se conservan como PNG temporales y se insertan como rutas entre comillas.
- Vista previa de Markdown y HTML junto al texto, actualizada al escribir (⇧⌘V o los botones de la esquina superior derecha de la pestaña).
  Markdown se representa con cmark-gfm, el motor que usa GitHub: tablas, listas de tareas, texto tachado y enlaces automáticos.
- Buscar en todas partes: pulsa Shift dos veces para encontrar cualquier archivo del proyecto por coincidencia aproximada del nombre.
- Reconoce archivos de código mediante un catálogo de 915 nombres de lenguajes y formatos, incluidos nombres de archivos, extensiones compuestas e intérpretes de scripts. Incluye los 297 componentes de Prism (291 gramáticas independientes y 6 auxiliares), que se cargan cuando se necesitan. Los formatos sin gramática usan un resaltado de texto básico.
- La interfaz ofrece 108 idiomas. Usa el menú Idioma para cambiar al instante o seguir el idioma del sistema. La elección se recuerda; los archivos abiertos, las ediciones sin guardar y las sesiones de terminal permanecen abiertos. Las interfaces en árabe, hebreo y otros idiomas de derecha a izquierda mantienen el código, las vistas previas y la salida del terminal de izquierda a derecha.
  Las traducciones se escriben directamente a partir de los textos ingleses, con su contexto de editor y terminal. Los paneles del sistema siguen los ajustes de idioma de macOS. Este catálogo no cubre todos los idiomas naturales ni todos los lenguajes de programación. Consulta [Traducir Sumi](CONTRIBUTING.md#translating-sumi).
- La apariencia clara y oscura sigue al sistema.

## Descarga

- [Versiones](../../releases)
- [Compilación nocturna](../../releases/tag/nightly): se vuelve a compilar con cada cambio en `main`.

Descarga `Sumi.zip`, descomprímelo y mueve Sumi a Aplicaciones. Una sola compilación funciona en Mac con Apple silicon e Intel.

Sumi no está firmado con un Apple Developer ID, por lo que macOS bloquea el primer inicio. Abre Ajustes del Sistema › Privacidad y seguridad y haz clic en «Abrir igualmente», o ejecuta:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Requisitos

macOS 14 o posterior. Para compilar se necesita Xcode 26 o posterior (Swift 6.2).

## Compilar desde el código fuente

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Abre una carpeta como proyecto desde Archivo › Abrir… (⌘O) o desde la línea de comandos:

```sh
open -a Sumi path/to/project
```

## Atajos de teclado

| Acción | Atajo |
|---|---|
| Buscar en todas partes | ⇧⇧ o ⇧⌘O |
| Vista del proyecto | ⌘1 |
| Terminal | ⌥F12 |
| Nueva pestaña de terminal | ⌘T |
| Intercambiar terminal y vista del proyecto | ⌃⌘T |
| Maximizar terminal | ⇧⌘↩ |
| Vista previa de Markdown / HTML | ⇧⌘V |
| Seleccionar en la vista del proyecto | ⌥⌘1 |
| Pestaña siguiente / anterior | ⇧⌘] / ⇧⌘[ |
| Guardar / Guardar todo | ⌘S / ⌥⌘S |

## Colaborar

Se agradecen los informes de errores, las correcciones y las traducciones. Lee [CONTRIBUTING.md](CONTRIBUTING.md).

## Licencia

MIT. Sumi incluye SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) y el catálogo de lenguajes de GitHub Linguist (MIT); consulta [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
