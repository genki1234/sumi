# Sumi

Um editor de texto leve para macOS, concebido para trabalhar com agentes de programação de IA. Código aberto (MIT).

Execute o seu agente no terminal integrado, abra com um clique os ficheiros que ele modifica e leia o Markdown que escreve como páginas formatadas.

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

## Funcionalidades

- Os caminhos de ficheiros no terminal são ligações. Quando um agente de programação apresenta `⎿ M src/app.ts` ou `src/app.ts:42:7`, o caminho fica azul e um clique abre o ficheiro nessa linha.
- A árvore do projeto fica à esquerda, o editor ao centro e o terminal na parte inferior.
- Troque o terminal e a árvore do projeto (⌃⌘T) para colocar um terminal com toda a altura à esquerda. Maximize o terminal com ⇧⌘↩.
- Os ficheiros são guardados automaticamente após uma pausa de 500 ms na escrita e antes de fechar. Se houver alterações externas ou falhas ao guardar, as suas edições ficam no separador e pode guardar uma cópia.
- Fechar um terminal com comandos em execução pede confirmação, incluindo tarefas em segundo plano e ao sair da aplicação. Ocultar o painel mantém as sessões em execução.
- Os terminais usam Metal por predefinição, com a opção Renderização por GPU no menu Visualização. Pesquise na saída com ⌘F; os novos separadores herdam a pasta de trabalho atual.
- Shift+Enter permite introduzir quebras de linha no pedido. Pode colar texto com várias linhas, ficheiros e imagens; as imagens são mantidas como PNG temporários e inseridas como caminhos entre aspas.
- A pré-visualização de Markdown e HTML aparece ao lado do texto e é atualizada à medida que escreve (⇧⌘V ou os botões no canto superior direito do separador).
  O Markdown é apresentado com cmark-gfm, o motor utilizado pelo GitHub, com tabelas, listas de tarefas, texto rasurado e ligações automáticas.
- Procurar em todo o lado: prima Shift duas vezes para encontrar qualquer ficheiro do projeto por correspondência aproximada do nome.
- Reconhece ficheiros de código através de um catálogo de 915 nomes de linguagens e formatos, usando nomes de ficheiros, extensões compostas e interpretadores de scripts. Todos os 297 componentes do Prism (291 gramáticas independentes e seis componentes auxiliares) estão incluídos e são carregados quando necessário. Os formatos sem gramática usam uma coloração de texto básica.
- A interface tem 108 opções de idioma. Use o menu Idioma para mudar imediatamente ou seguir o idioma do sistema. A escolha é guardada; os ficheiros abertos, as edições por guardar e as sessões do terminal são mantidos. Nas interfaces em árabe, hebraico e outros idiomas escritos da direita para a esquerda, o código, as pré-visualizações e a saída do terminal continuam da esquerda para a direita.
  As traduções são escritas diretamente a partir dos textos em inglês e do respetivo contexto no editor e no terminal. Os painéis fornecidos pelo sistema seguem as definições de idioma do macOS. Este catálogo não abrange todos os idiomas naturais nem todas as linguagens de programação. Consulte [Traduzir o Sumi](CONTRIBUTING.md#translating-sumi).
- A aparência clara ou escura segue o sistema.

## Transferir

- [Versão mais recente](../../releases/latest)
- [Compilação nightly](../../releases/tag/nightly): recompilada sempre que há uma alteração em `main`.

Transfira `Sumi.zip`, descomprima-o e mova o Sumi para Aplicações. A mesma versão funciona em Macs com Apple silicon e Intel.

O Sumi não está assinado com um Apple Developer ID, pelo que o macOS bloqueia a primeira abertura. Abra Definições do Sistema › Privacidade e segurança e clique em Abrir mesmo assim, ou execute:

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Requisitos

macOS 14 ou posterior. A compilação exige Xcode 26 ou posterior (Swift 6.2).

## Compilar a partir do código-fonte

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Abra uma pasta como projeto em Ficheiro › Abrir… (⌘O), ou na linha de comandos:

```sh
open -a Sumi path/to/project
```

## Atalhos de teclado

| Ação | Atalho |
|---|---|
| Procurar em todo o lado | ⇧⇧ ou ⇧⌘O |
| Vista do projeto | ⌘1 |
| Terminal | ⌥F12 |
| Novo separador de terminal | ⌘T |
| Trocar terminal e projeto | ⌃⌘T |
| Maximizar terminal | ⇧⌘↩ |
| Pré-visualização de Markdown / HTML | ⇧⌘V |
| Selecionar na vista do projeto | ⌥⌘1 |
| Separador seguinte / anterior | ⇧⌘] / ⇧⌘[ |
| Guardar / Guardar tudo | ⌘S / ⌥⌘S |

## Contribuir

São bem-vindos relatos de problemas, correções e traduções. Leia [CONTRIBUTING.md](CONTRIBUTING.md).

## Licença

MIT. O Sumi inclui SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) e o catálogo de linguagens do GitHub Linguist (MIT); consulte [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
