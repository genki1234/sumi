# Sumi

AI 코딩 에이전트와 함께 쓰기 위해 만든 가벼운 macOS 텍스트 편집기입니다. 오픈 소스(MIT)입니다.

내장 터미널에서 에이전트를 실행하고, 에이전트가 수정한 파일을 클릭해 열고, 에이전트가 작성한 Markdown을 렌더링된 페이지로 읽으세요.

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

## 기능

- 터미널에 출력된 파일 경로는 링크가 됩니다. 코딩 에이전트가 `⎿ M src/app.ts` 또는 `src/app.ts:42:7`을 출력하면 경로가 파란색으로 바뀌며, 클릭하면 해당 줄에서 파일이 열립니다.
- 왼쪽에 프로젝트 트리, 가운데에 편집기, 아래쪽에 터미널이 있습니다.
- 터미널과 프로젝트의 위치를 바꾸면(⌃⌘T) 왼쪽 전체 높이를 쓰는 터미널을 배치할 수 있습니다. ⇧⌘↩로 터미널을 최대화합니다.
- 입력이 500 ms 동안 멈추면 파일을 자동으로 저장하며, 닫기 직전에도 저장합니다. 외부 변경이나 저장 실패가 발생해도 편집 내용은 탭에 남으며 사본으로 저장할 수 있습니다.
- 실행 중인 명령이 있는 터미널을 닫을 때 확인을 요청합니다. 백그라운드 작업과 앱 종료도 포함합니다. 패널을 숨겨도 세션은 계속 실행됩니다.
- 터미널은 기본적으로 Metal을 사용합니다. 보기 메뉴의 GPU 렌더링 항목으로 전환할 수 있습니다. ⌘F로 출력을 검색하며 새 탭은 현재 작업 디렉터리를 이어받습니다.
- Shift+Enter로 프롬프트에 여러 줄을 입력할 수 있습니다. 여러 줄 텍스트, 파일, 이미지 붙여넣기를 지원합니다. 이미지는 임시 PNG로 보관하고 따옴표로 감싼 경로를 삽입합니다.
- Markdown과 HTML 미리보기를 텍스트 옆에 표시하고 입력에 맞춰 갱신합니다(⇧⌘V 또는 탭 오른쪽 위 버튼).
  Markdown은 GitHub가 사용하는 cmark-gfm으로 렌더링하며 표, 작업 목록, 취소선, 자동 링크를 지원합니다.
- 전체 검색: Shift를 두 번 누르면 프로젝트의 파일을 이름의 유사 일치로 찾을 수 있습니다.
- 언어 및 파일 형식 이름 915개로 구성된 카탈로그를 사용해 파일명, 복합 확장자, 스크립트 인터프리터로 소스 파일을 식별합니다. Prism 구성 요소 297개(독립 문법 291개와 보조 구성 요소 6개)를 모두 포함하고 필요할 때 불러옵니다. 문법이 없는 형식에는 기본 텍스트 색상을 적용합니다.
- 인터페이스는 108가지 언어를 제공합니다. 언어 메뉴에서 즉시 바꾸거나 시스템 언어를 따를 수 있습니다. 선택은 저장되며 열린 파일, 저장하지 않은 편집 내용, 터미널 세션을 유지합니다. 아랍어, 히브리어 등 오른쪽에서 왼쪽으로 쓰는 인터페이스에서도 코드, 미리보기, 터미널 출력은 왼쪽에서 오른쪽으로 표시합니다.
  번역은 영어 원문과 편집기 및 터미널에서의 쓰임에 맞춰 직접 작성합니다. 시스템이 제공하는 패널은 macOS 언어 설정을 따릅니다. 이 카탈로그가 모든 자연 언어와 프로그래밍 언어를 포괄하는 것은 아닙니다. [Sumi 번역](CONTRIBUTING.md#translating-sumi)을 참고하세요.
- 밝은 모드와 어두운 모드는 시스템 설정을 따릅니다.

## 다운로드

- [최신 릴리스](../../releases/latest)
- [Nightly 빌드](../../releases/tag/nightly): `main`이 변경될 때마다 다시 빌드합니다.

`Sumi.zip`을 다운로드해 압축을 풀고 Sumi를 응용 프로그램 폴더로 옮기세요. 하나의 빌드가 Apple silicon과 Intel Mac 모두에서 실행됩니다.

Sumi는 Apple Developer ID로 서명되지 않아 macOS가 첫 실행을 차단합니다. 시스템 설정 › 개인정보 보호 및 보안에서 확인 없이 열기를 누르거나 다음을 실행하세요.

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## 요구 사항

macOS 14 이상. 빌드에는 Xcode 26 이상(Swift 6.2)이 필요합니다.

## 소스에서 빌드

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

파일 › 열기…(⌘O) 또는 명령줄에서 폴더를 프로젝트로 여세요.

```sh
open -a Sumi path/to/project
```

## 키보드 단축키

| 동작 | 단축키 |
|---|---|
| 전체 검색 | ⇧⇧ 또는 ⇧⌘O |
| 프로젝트 보기 | ⌘1 |
| 터미널 | ⌥F12 |
| 새 터미널 탭 | ⌘T |
| 터미널과 프로젝트 위치 바꾸기 | ⌃⌘T |
| 터미널 최대화 | ⇧⌘↩ |
| Markdown / HTML 미리보기 | ⇧⌘V |
| 프로젝트 보기에서 선택 | ⌥⌘1 |
| 다음 / 이전 탭 | ⇧⌘] / ⇧⌘[ |
| 저장 / 모두 저장 | ⌘S / ⌥⌘S |

## 기여

버그 제보, 수정, 번역을 환영합니다. [CONTRIBUTING.md](CONTRIBUTING.md)를 읽어주세요.

## 라이선스

MIT입니다. Sumi에는 SwiftTerm(MIT), cmark-gfm(BSD-2-Clause), Prism(MIT), GitHub Linguist 언어 카탈로그(MIT)가 포함됩니다. [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)를 참고하세요.
