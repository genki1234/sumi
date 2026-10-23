#!/usr/bin/env python3
"""Check that every bundled UI locale has a usable, consistent README."""

from pathlib import Path
import re
import sys
from urllib.parse import unquote, urlsplit


ROOT = Path(__file__).resolve().parent.parent
START = "<!-- sumi:languages:start -->"
END = "<!-- sumi:languages:end -->"
LINK = re.compile(r"\[[^\]\n]+\]\(([^\s]+)\)")
errors = []


def check(condition, message):
    if not condition:
        errors.append(message)


locales = {p.stem for p in (ROOT / "Localization").glob("*.lproj")}
readmes = {"en": ROOT / "README.md"}
readmes.update({p.name[7:-3]: p for p in ROOT.glob("README.*.md")})
check(set(readmes) == locales,
      f"README locales differ: missing={sorted(locales - set(readmes))}, "
      f"extra={sorted(set(readmes) - locales)}")
english = readmes["en"].read_text(encoding="utf-8")
english_commands = re.findall(r"```sh\n.*?\n```", english, re.S)
expected_targets = {p.name for p in readmes.values()}
reference_navigation = None

for code, path in sorted(readmes.items()):
    text = path.read_text(encoding="utf-8")
    check(text.startswith("# Sumi\n"), f"{path.name}: missing product heading")
    check(text.count(START) == 1 and text.count(END) == 1,
          f"{path.name}: expected one language navigation block")
    navigation = re.search(re.escape(START) + r"\n(.*?)\n" + re.escape(END), text, re.S)
    if navigation:
        links = LINK.findall(navigation.group(1))
        check(len(links) == len(locales) and set(links) == expected_targets,
              f"{path.name}: navigation must link to each README exactly once")
        if reference_navigation is None:
            reference_navigation = navigation.group(1)
        check(navigation.group(1) == reference_navigation,
              f"{path.name}: language navigation differs")
        check(navigation.start() < text.find("\n## "),
              f"{path.name}: put language links before the first section")
    check("<!-- sumi:languages -->" not in text,
          f"{path.name}: unexpanded language placeholder")
    check(re.findall(r"```sh\n.*?\n```", text, re.S) == english_commands,
          f"{path.name}: command examples must match the English source")
    for target in LINK.findall(text):
        url = urlsplit(target)
        if url.scheme or url.netloc or not url.path:
            continue
        # These links resolve on GitHub, rather than in the source checkout.
        if url.path in ("../../releases", "../../releases/latest", "../../releases/tag/nightly"):
            continue
        check((path.parent / unquote(url.path)).is_file(),
              f"{path.name}: missing linked file {target}")

if errors:
    print("\n".join(errors), file=sys.stderr)
    sys.exit(1)
print(f"OK: {len(readmes)} READMEs, {len(readmes) * len(locales)} language links, "
      "matching English command examples and existing local link targets.")
