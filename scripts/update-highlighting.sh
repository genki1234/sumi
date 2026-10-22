#!/bin/bash
# Refresh the complete bundled grammar and language catalogs from pinned upstream sources.
# Updating these development assets requires curl, Node.js, Python 3 and Ruby (YAML/JSON).
# The application itself uses only the system JavaScriptCore framework.
set -euo pipefail
cd "$(dirname "$0")/.."
PRISM_VERSION=1.30.0
LINGUIST_COMMIT=73ee9a3b277f398c37ca4ab0dea0193849de6460
DESTINATION=Sources/Sumi/Highlight/Resources
TEMPORARY=$(mktemp -d)
trap 'rm -rf "$TEMPORARY"' EXIT
curl -fLsS "https://codeload.github.com/PrismJS/prism/tar.gz/refs/tags/v$PRISM_VERSION" -o "$TEMPORARY/prism.tar.gz"
tar -xzf "$TEMPORARY/prism.tar.gz" -C "$TEMPORARY"
PRISM_SOURCE="$TEMPORARY/prism-$PRISM_VERSION"
curl -fLsS "https://raw.githubusercontent.com/github-linguist/linguist/$LINGUIST_COMMIT/lib/linguist/languages.yml" -o "$TEMPORARY/languages.yml"
curl -fLsS "https://raw.githubusercontent.com/github-linguist/linguist/$LINGUIST_COMMIT/LICENSE" -o "$TEMPORARY/Linguist-LICENSE.txt"
ruby -ryaml -rjson -e 'puts JSON.generate(YAML.load_file(ARGV[0]))' "$TEMPORARY/languages.yml" > "$TEMPORARY/languages.json"
node scripts/build-highlight.js "$PRISM_SOURCE" "$DESTINATION"
python3 scripts/build-language-catalog.py "$PRISM_SOURCE/components.json" "$TEMPORARY/languages.json" "$DESTINATION/LanguageCatalog.json"
cp "$PRISM_SOURCE/LICENSE" "$DESTINATION/Prism-LICENSE.txt"
cp "$TEMPORARY/Linguist-LICENSE.txt" "$DESTINATION/Linguist-LICENSE.txt"
