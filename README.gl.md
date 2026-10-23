# Sumi

Un editor de texto lixeiro para macOS, deseñado para traballar con axentes de programación con IA. De código aberto (MIT).

Executa o teu axente no terminal integrado, abre cun clic os ficheiros cos que traballa e le o Markdown que escribe como páxinas con formato.

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

## Funcións

- As rutas de ficheiros do terminal son ligazóns. Cando un axente escribe `⎿ M src/app.ts` ou `src/app.ts:42:7`, a ruta vólvese azul e un clic abre o ficheiro nesa liña.
- Vista do proxecto á esquerda, editor no centro e terminal abaixo.
- Intercambia o terminal e a vista do proxecto (⌃⌘T) para colocar á esquerda un terminal de altura completa. Maximiza o terminal con ⇧⌘↩.
- Os ficheiros gárdanse automaticamente tras unha pausa de escritura de 500 ms e antes de pecharse. Ante cambios externos ou erros ao gardar, as túas modificacións quedan na lapela coa opción de gardar unha copia.
- Pechar un terminal con ordes en execución pide confirmación, incluíndo tarefas en segundo plano e a saída da aplicación. Agochar o panel mantén as sesións en execución.
- Os terminais usan Metal de xeito predeterminado, cun interruptor «Renderización con GPU» en Vista. Busca na saída con ⌘F; as novas lapelas herdan o directorio de traballo actual.
- Shift+Enter permite introducir instrucións de varias liñas. Pódense pegar textos de varias liñas, ficheiros e imaxes; as imaxes consérvanse como PNG temporais e insírense como rutas entre comiñas.
- Vista previa de Markdown e HTML xunto ao texto, actualizada mentres escribes (⇧⌘V ou os botóns da esquina superior dereita da lapela).
  Markdown represéntase con cmark-gfm, o motor que usa GitHub: táboas, listas de tarefas, texto riscado e ligazóns automáticas.
- Buscar en todas partes: preme Shift dúas veces para atopar calquera ficheiro do proxecto por coincidencia aproximada do nome.
- Recoñece ficheiros de código cun catálogo de 915 nomes de linguaxes e formatos, incluíndo nomes de ficheiros, extensións compostas e intérpretes de scripts. Inclúe os 297 compoñentes de Prism (291 gramáticas independentes e 6 auxiliares), que se cargan cando se precisan. Os formatos sen gramática usan un resaltado de texto básico.
- A interface ofrece 108 idiomas. Usa o menú Idioma para cambiar ao instante ou seguir o idioma do sistema. A elección lémbrase; os ficheiros abertos, as modificacións sen gardar e as sesións de terminal seguen abertos. As interfaces en árabe, hebreo e outros idiomas de dereita a esquerda manteñen o código, as vistas previas e a saída do terminal de esquerda a dereita.
  As traducións escríbense directamente a partir dos textos ingleses, co seu contexto de editor e terminal. Os paneis do sistema seguen os axustes de idioma de macOS. O catálogo non cobre todas as linguas naturais nin todas as linguaxes de programación. Consulta [Traducir Sumi](CONTRIBUTING.md#translating-sumi).
- A aparencia clara e escura segue o sistema.

## Descarga

- [Versións](../../releases)
- [Compilación nocturna](../../releases/tag/nightly): volve compilarse con cada cambio en `main`.

Descarga `Sumi.zip`, descomprime e move Sumi a Aplicacións. Unha soa compilación funciona en Mac con Apple silicon e Intel.

Sumi non está asinado cun Apple Developer ID, polo que macOS bloquea o primeiro inicio. Abre Axustes do Sistema › Privacidade e seguridade e preme «Abrir igualmente», ou executa:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Requisitos

macOS 14 ou posterior. Para compilar cómpre Xcode 26 ou posterior (Swift 6.2).

## Compilar desde o código fonte

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Abre un cartafol como proxecto desde Ficheiro › Abrir… (⌘O) ou desde a liña de ordes:

```sh
open -a Sumi path/to/project
```

## Atallos de teclado

| Acción | Atallo |
|---|---|
| Buscar en todas partes | ⇧⇧ ou ⇧⌘O |
| Vista do proxecto | ⌘1 |
| Terminal | ⌥F12 |
| Nova lapela de terminal | ⌘T |
| Intercambiar terminal e vista do proxecto | ⌃⌘T |
| Maximizar o terminal | ⇧⌘↩ |
| Vista previa de Markdown / HTML | ⇧⌘V |
| Seleccionar na vista do proxecto | ⌥⌘1 |
| Seguinte lapela / lapela anterior | ⇧⌘] / ⇧⌘[ |
| Gardar / Gardar todo | ⌘S / ⌥⌘S |

## Colaborar

Agradécense os informes de erros, as correccións e as traducións. Le [CONTRIBUTING.md](CONTRIBUTING.md).

## Licenza

MIT. Sumi inclúe SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) e o catálogo de linguaxes de GitHub Linguist (MIT); consulta [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
