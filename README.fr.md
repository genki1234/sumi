# Sumi

Un éditeur de texte léger pour macOS, conçu pour travailler avec des agents de programmation IA. Logiciel libre (MIT).

Exécutez votre agent dans le terminal intégré, ouvrez les fichiers qu’il modifie d’un clic et lisez les documents Markdown qu’il écrit sous forme de pages mises en forme.

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

## Fonctionnalités

- Les chemins de fichiers affichés dans le terminal sont des liens. Lorsqu’un agent écrit `⎿ M src/app.ts` ou `src/app.ts:42:7`, le chemin devient bleu et un clic ouvre le fichier à la ligne indiquée.
- L’arborescence du projet est à gauche, l’éditeur au centre et le terminal en bas.
- Échangez le terminal et l’arborescence du projet (⌃⌘T) pour disposer d’un terminal sur toute la hauteur à gauche. Agrandissez le terminal avec ⇧⌘↩.
- Les fichiers sont enregistrés automatiquement après une pause de saisie de 500 ms et avant leur fermeture. En cas de modification externe ou d’échec d’enregistrement, vos changements restent dans l’onglet et vous pouvez en enregistrer une copie.
- La fermeture d’un terminal contenant des commandes en cours demande confirmation, y compris pour les tâches en arrière-plan et lorsque vous quittez l’application. Masquer le panneau laisse les sessions actives.
- Les terminaux utilisent Metal par défaut. L’option Rendu GPU du menu Affichage permet de changer ce réglage. Recherchez dans la sortie avec ⌘F ; les nouveaux onglets reprennent le répertoire de travail courant.
- Shift+Enter conserve la saisie des invites sur plusieurs lignes. Le collage accepte du texte multiligne, des fichiers et des images ; les images sont conservées dans des fichiers PNG temporaires dont les chemins sont insérés entre guillemets.
- Les aperçus Markdown et HTML s’affichent à côté du texte et s’actualisent pendant la saisie (⇧⌘V ou les boutons en haut à droite de l’onglet).
  Le Markdown est rendu avec cmark-gfm, le moteur utilisé par GitHub : tableaux, listes de tâches, texte barré et liens automatiques sont pris en charge.
- Rechercher partout : appuyez deux fois sur Shift pour trouver un fichier du projet par correspondance approximative du nom.
- Les fichiers source sont reconnus à l’aide d’un catalogue de 915 noms de langages et de formats de fichiers, selon le nom du fichier, les extensions composées et l’interpréteur des scripts. Les 297 composants de Prism (291 grammaires autonomes et six composants auxiliaires) sont inclus et chargés à la demande. Les formats sans grammaire utilisent une coloration de base.
- L’interface propose 108 langues. Changez immédiatement de langue depuis le menu Langue, ou suivez la langue du système. Le choix est mémorisé ; les fichiers ouverts, les modifications non enregistrées et les sessions de terminal sont conservés. En arabe, en hébreu et dans les autres interfaces de droite à gauche, le code, les aperçus et la sortie du terminal restent de gauche à droite.
  Les traductions sont rédigées directement à partir des textes anglais et de leur contexte dans l’éditeur et le terminal. Les panneaux fournis par le système suivent les réglages de langue de macOS. Ce catalogue ne couvre pas toutes les langues naturelles ni tous les langages de programmation. Voir [Traduire Sumi](CONTRIBUTING.md#translating-sumi).
- L’apparence claire ou sombre suit celle du système.

## Téléchargement

- [Versions](../../releases)
- [Version nightly](../../releases/tag/nightly) : reconstruite à chaque modification de `main`.

Téléchargez `Sumi.zip`, décompressez-le et placez Sumi dans Applications. La même version fonctionne sur les Mac avec puce Apple et les Mac Intel.

Sumi n’est pas signé avec un identifiant Apple Developer ID ; macOS bloque donc le premier lancement. Ouvrez Réglages Système › Confidentialité et sécurité et cliquez sur Ouvrir quand même, ou exécutez :

```sh
xattr -dr com.apple.quarantine /Applications/Sumi.app
```

## Configuration requise

macOS 14 ou ultérieur. La compilation nécessite Xcode 26 ou ultérieur (Swift 6.2).

## Compiler à partir des sources

```sh
make app       # build/Sumi.app (universal: Apple silicon and Intel)
make run       # debug build, then open it
make install   # copy to /Applications
```

Ouvrez un dossier comme projet avec Fichier › Ouvrir… (⌘O), ou depuis la ligne de commande :

```sh
open -a Sumi path/to/project
```

## Raccourcis clavier

| Action | Raccourci |
|---|---|
| Rechercher partout | ⇧⇧ ou ⇧⌘O |
| Arborescence du projet | ⌘1 |
| Terminal | ⌥F12 |
| Nouvel onglet de terminal | ⌘T |
| Échanger le terminal et le projet | ⌃⌘T |
| Agrandir le terminal | ⇧⌘↩ |
| Aperçu Markdown / HTML | ⇧⌘V |
| Sélectionner dans l’arborescence du projet | ⌥⌘1 |
| Onglet suivant / précédent | ⇧⌘] / ⇧⌘[ |
| Enregistrer / Tout enregistrer | ⌘S / ⌥⌘S |

## Contribuer

Les signalements de problèmes, les corrections et les traductions sont les bienvenus. Consultez [CONTRIBUTING.md](CONTRIBUTING.md).

## Licence

MIT. Sumi inclut SwiftTerm (MIT), cmark-gfm (BSD-2-Clause), Prism (MIT) et le catalogue de langages de GitHub Linguist (MIT) ; voir [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
