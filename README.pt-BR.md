# Sumi

Um editor de texto leve para macOS, feito para trabalhar com agentes de programação de IA. Código aberto (MIT).

Execute seu agente no terminal integrado, clique nos arquivos que ele modifica para abri-los e leia o Markdown que ele escreve como páginas formatadas.

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

## Recursos

- Os caminhos de arquivos no terminal são links. Quando um agente de programação exibe `⎿ M src/app.ts` ou `src/app.ts:42:7`, o caminho fica azul e um clique abre o arquivo naquela linha.
- A árvore do projeto fica à esquerda, o editor no centro e o terminal na parte inferior.
- Troque o terminal e a árvore do projeto de lugar (⌃⌘T) para ter um terminal ocupando toda a altura à esquerda. Maximize o terminal com ⇧⌘↩.
- Os arquivos são salvos automaticamente após uma pausa de 500 ms na digitação e antes de fechar. Em caso de alterações externas ou falhas ao salvar, suas edições permanecem na aba, com a opção de salvar uma cópia.
- Fechar um terminal com comandos em execução exige confirmação, inclusive para tarefas em segundo plano e ao sair do aplicativo. Ocultar o painel mantém as sessões em execução.
- Os terminais usam Metal por padrão, com a opção Renderização por GPU no menu Visualizar. Pesquise na saída com ⌘F; novas abas herdam o diretório de trabalho atual.
- Shift+Enter permite inserir quebras de linha no prompt. É possível colar texto com várias linhas, arquivos e imagens; as imagens são mantidas como PNGs temporários e inseridas como caminhos entre aspas.
- A pré-visualização de Markdown e HTML aparece ao lado do texto e é atualizada durante a digitação (⇧⌘V ou os botões no canto superior direito da aba).
  O Markdown é renderizado com cmark-gfm, o mecanismo usado pelo GitHub, com tabelas, listas de tarefas, texto tachado e links automáticos.
- Buscar em Todo Lugar: pressione Shift duas vezes para encontrar qualquer arquivo do projeto por correspondência aproximada do nome.
- Reconhece arquivos-fonte com um catálogo de 915 nomes de linguagens e formatos, considerando nomes de arquivo, extensões compostas e interpretadores de scripts. Todos os 297 componentes do Prism (291 gramáticas independentes e seis componentes auxiliares) são incluídos e carregados sob demanda. Formatos sem gramática usam uma coloração básica de texto.
- A interface oferece 108 opções de idioma. Use o menu Idioma para mudar imediatamente ou seguir o idioma do sistema. A escolha é salva; arquivos abertos, edições não salvas e sessões do terminal são preservados. Nas interfaces em árabe, hebraico e outros idiomas escritos da direita para a esquerda, o código, as pré-visualizações e a saída do terminal continuam da esquerda para a direita.
  As traduções são escritas diretamente a partir dos textos em inglês e de seu contexto no editor e no terminal. Os painéis fornecidos pelo sistema seguem as configurações de idioma do macOS. Este catálogo não abrange todos os idiomas naturais nem todas as linguagens de programação. Veja [Traduzir o Sumi](CONTRIBUTING.md#translating-sumi).
- A aparência clara ou escura acompanha o sistema.

## Download

- [Versões](../../releases)
- [Compilação nightly](../../releases/tag/nightly): gerada novamente a cada alteração em `main`.

Baixe `Sumi.zip`, descompacte-o e mova o Sumi para Aplicativos. A mesma versão funciona em Macs com Apple silicon e Intel.

O Sumi não é assinado com um Apple Developer ID, portanto o macOS bloqueia a primeira abertura. Abra Ajustes do Sistema › Privacidade e Segurança e clique em Abrir Mesmo Assim, ou execute:

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

Abra uma pasta como projeto em Arquivo › Abrir… (⌘O) ou pela linha de comando:

```sh
open -a Sumi path/to/project
```

## Atalhos de teclado

| Ação | Atalho |
|---|---|
| Buscar em Todo Lugar | ⇧⇧ ou ⇧⌘O |
| Árvore do Projeto | ⌘1 |
| Terminal | ⌥F12 |
| Nova Aba do Terminal | ⌘T |
| Trocar Terminal e Projeto de Lugar | ⌃⌘T |
| Maximizar Terminal | ⇧⌘↩ |
| Pré-visualização de Markdown / HTML | ⇧⌘V |
| Selecionar na Árvore do Projeto | ⌥⌘1 |
| Próxima aba / aba anterior | ⇧⌘] / ⇧⌘[ |
| Salvar / Salvar Tudo | ⌘S / ⌥⌘S |

## Contribuir

Relatos de problemas, correções e traduções são bem-vindos. Leia [CONTRIBUTING.md](CONTRIBUTING.md).

## Licença

MIT. O Sumi inclui SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) e o catálogo de linguagens do GitHub Linguist (MIT); consulte [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
