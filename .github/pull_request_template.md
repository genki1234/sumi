## Problem and resulting behavior

<!-- What concrete action triggers the problem? What does the user see before and after this change? Link a related issue if there is one. -->

## Scope

<!-- State affected features or languages and any material tradeoff or limitation. Explain a new dependency and its license if applicable. -->

## Manual verification

<!-- For app changes, run the actual app. A build or CI pass alone is not running-app evidence. For documentation-only changes, describe the facts and links checked and mark app verification not applicable with a reason. -->

- macOS version:
- CPU architecture (Apple silicon / Intel):
- Xcode and Swift versions:
- Build command and result:

| Steps actually performed | Expected behavior | Observed behavior |
|---|---|---|
| | | |

<!-- Attach screenshots or a short recording for changed layout, rendering or interaction. Describe relevant failure/lifecycle checks, such as save conflict, active terminal close or application quit. -->

Not checked / remaining work:

## Localization and documentation

<!-- List affected locales and keys. For corrections, explain the previous and corrected meaning. Complete every supported locale for new UI text. State which languages you personally reviewed and any running-app label checks. -->

- `swift scripts/l10n.swift check` result:
- README or other user documentation updated, or reason not needed:

## Ready for review

- [ ] The diff is focused on the stated problem.
- [ ] The evidence records work I actually performed and identifies unverified behavior.
- [ ] Relevant UI translations, documentation and dependency notices are complete.
- [ ] I reviewed the required CI results, or kept the pull request in draft while they remain pending.
