# Contributing to Sumi

Bug reports, fixes and translations are welcome as GitHub issues and pull requests. Report vulnerabilities privately through [SECURITY.md](SECURITY.md).

## Scope and review

Sumi aims to remain a small macOS editor that works well with coding agents: a project view, an editor, a terminal, search, highlighting and previews. Discuss larger features and new dependencies in an issue before implementing them. Bug fixes and translation corrections can go straight to a pull request.

Keep each pull request focused on one problem. Explain what triggers the problem, the resulting user-visible behavior and how you checked it. Avoid unrelated formatting, generated-file churn and extra features. Maintainers review scope, correctness, running-app evidence, localization and dependency licensing. Review may require revisions; an open pull request is not a commitment to accept a feature.

Contributors submit changes through pull requests to `main`. Build, Translations and Documentation checks and a code-owner approval are required. Administrators retain an exception for the maintainer's direct-to-main workflow. Keep work in draft while implementation, translation or validation remains incomplete.

## Fork, build and submit a change

You need macOS 14 or later and Xcode 26 or later (Swift 6.2), with the Xcode command-line tools installed and selected.

1. Fork [genki1234/sumi](https://github.com/genki1234/sumi) on GitHub.
2. Clone your fork and create a feature branch. Replace `YOUR-USERNAME` and choose a descriptive branch name:

   ```sh
   git clone https://github.com/YOUR-USERNAME/sumi.git
   cd sumi
   git remote add upstream https://github.com/genki1234/sumi.git
   git switch -c fix/describe-the-change
   ```

3. Read the relevant source, make your focused change, then build and launch the debug app:

   ```sh
   make run
   ```

   This builds and opens `build/Sumi.app`. Use a temporary project for checks that change files. Do not overwrite your clipboard during verification.

4. Reproduce the problem and exercise the changed behavior in the running app. Record the manual evidence described below. If release packaging or CPU architecture is affected, also build the universal release app:

   ```sh
   make app
   ```

5. Check localization and README links before requesting review:

   ```sh
   swift scripts/l10n.swift check
   python3 scripts/check-readmes.py
   ```

6. Review the whole diff, commit the relevant files and push to your fork:

   ```sh
   git diff
   git add path/to/changed-file
   git commit -m "Fix the specific problem"
   git push -u origin fix/describe-the-change
   ```

7. Open a pull request from your fork's feature branch to `genki1234/sumi:main`. Complete the template, link a related issue when there is one, and wait for all required checks. Address review comments with focused follow-up commits. Use a draft pull request when work or verification remains.

For a first-time contributor's fork pull request, GitHub Actions may wait for a maintainer to approve the workflow run before checks start.

### Manual validation evidence

Sumi validates behavior in the running macOS app. Do not add test code for this project. A successful build or CI result alone does not show that a UI interaction works.

Record the macOS version, Xcode/Swift version, CPU architecture, build command and exact steps performed. State the expected and observed behavior for each relevant scenario. Attach screenshots or a short recording for changed layout, rendering or interaction. Identify anything you could not check; never mark a scenario verified unless you performed it.

Choose checks that exercise the actual change:

- Editor or saving: edit a disposable file, wait for autosave, reopen it and check affected conflict or failure paths. Edits must remain available if saving fails or the disk file changes.
- Terminal: verify command input and output and affected tabs or panels. For lifecycle changes, check running commands, background jobs, panel hiding, terminal closing and application quit as relevant.
- Navigation or previews: use real paths and line numbers, search a project, or edit Markdown/HTML and inspect the rendered output.
- Layout or localization: inspect the affected view and language, including label size, shortcuts and text direction. Right-to-left interfaces must keep code, previews and terminal output left to right.

## Code conventions

- Use English for source identifiers, comments and commit summaries. User-facing strings belong in localization files; translated documentation uses its target language.
- Follow the existing AppKit, Swift 6 strict-concurrency and threading patterns.
- Keep dependencies to a minimum. New dependencies require their licenses and notices in [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
- Keep implementations direct and limited to the requested behavior. Explain non-obvious decisions and their reasons where needed.
- Pass every user-visible app string through `L("English text")`.

## Translating Sumi

Every piece of UI text lives in one plain-text file per language:

```
Localization/<language code>.lproj/Localizable.strings
```

Each line pairs the English text (left) with its translation (right):

```
"Save All" = "すべて保存";
```

### Fix a translation (no tools needed)

1. Open `Localization/<your language>.lproj/Localizable.strings` on GitHub.
2. Click the pencil icon (Edit this file). GitHub makes a copy of the repository for you.
3. Change the text on the right of `=`. Keep the quotes and the `;` at the end of the line.
4. Click Commit changes, then Propose changes. GitHub opens the pull request for you.

Describe the key, previous meaning, corrected meaning and language you reviewed in the pull request. Check the matching README if a menu or shortcut label changes. CI reports missing or unused keys and broken placeholders; it does not judge translation quality or label fit. If you cannot run the app locally, state that and request running-app verification before merge.

### Add a new language

```sh
swift scripts/l10n.swift add fr-CA     # language code: fr, pt-BR, zh-Hans, …
# translate Localization/fr-CA.lproj/Localizable.strings
swift scripts/l10n.swift check
```

Run these commands from your fork's feature branch. The add command creates English starting values; translate every value before marking the pull request ready. The build includes every folder under `Localization/` and adds it to the Language menu automatically. Language choices apply immediately and persist across launches. Check switching languages in the running app, including open files and terminal sessions. Add a complete `README.<language code>.md` and its native-name link to every README language list.

Write translations directly from the English UI strings and their editor or terminal context. Do not submit unreviewed translation-service output as finished translations. Keep labels concise and preserve the actual action; native-speaker corrections are welcome. State which languages you reviewed without claiming review that did not occur.

### Translate the README

`README.md` is the English source. Each UI locale has a complete `README.<language code>.md`, including every feature, download and build instruction, shortcut and license detail. Translate the whole document directly from the source. Keep facts, version requirements, commands, example paths, shortcuts and link targets intact. Use corresponding UI action names where appropriate.

Keep the list between `sumi:languages:start` and `sumi:languages:end` identical in every README, using native language names. When adding a locale, add its README and its link to every list. When changing a documented feature or requirement, update the affected translations in the same change or keep the pull request in draft and list the remaining work.

### Rules for translators

- Translate only the right-hand side. The left-hand side is the key the app looks up.
- Preserve formatting arguments and their types, including `%@`, `%ld`, `%1$@` and `%2$ld`. Use numbered arguments when changing sentence order; never change an argument's meaning.
- Preserve keyboard symbols such as `⇧`, `⌘` and `…`, shortcuts, commands, example paths and product names.
- Keep the UI meaning: a search match is a found result; Spaces describes indentation width; Soft-Wrap changes display wrapping without inserting newlines; window Zoom changes window size. Quit ends the app; Close Window closes one window.
- Save-conflict messages must explain that edits remain in the editor and have not necessarily been saved to disk. Saving a copy preserves both versions.
- Complete required translations before marking a pull request ready. Shared terms and names may intentionally match English. List unfinished translations in a draft instead of presenting English fallback as a completed translation.
- Comments in the file are regenerated by the tool; put notes in the pull request instead.

### For developers: adding UI text

All user-visible text goes through `L("English text")` (see `Sources/Sumi/App/Localization.swift`). Use formatting placeholders instead of string interpolation. After adding, changing or removing a key:

```sh
swift scripts/l10n.swift sync    # adds the new keys to every language (in English for now)
swift scripts/l10n.swift check   # must print OK
```

Sync updates the English catalog, adds English starting values in other locales and removes unused keys. Translate new or changed values in every supported language before final review, then run the check again. It must finish with `OK`. Inspect the generated diff and affected labels in the running app. A passing check does not mean every value has been translated.
