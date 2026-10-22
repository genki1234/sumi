#!/bin/bash
# Builds Sumi.app into ./build.
#   scripts/build-app.sh            release build (universal when both architectures are available)
#   scripts/build-app.sh --debug    debug build for the current machine
set -euo pipefail
cd "$(dirname "$0")/.."

CONFIG=release
if [[ "${1:-}" == "--debug" ]]; then CONFIG=debug; fi

UNIVERSAL=(-c release --arch arm64 --arch x86_64)
mkdir -p .build
if [[ "$CONFIG" == release ]] && swift build "${UNIVERSAL[@]}" >.build/universal.log 2>&1; then
    BIN="$(swift build "${UNIVERSAL[@]}" --show-bin-path)/Sumi"
else
    if [[ "$CONFIG" == release ]]; then
        echo "Universal build failed; the last lines of its log:" >&2
        tail -40 .build/universal.log >&2
        # CI publishes only universal builds.
        if [[ -n "${SUMI_REQUIRE_UNIVERSAL:-}" ]]; then exit 1; fi
    fi
    swift build -c "$CONFIG"
    BIN="$(swift build -c "$CONFIG" --show-bin-path)/Sumi"
fi

APP=build/Sumi.app
rm -rf "$APP"
mkdir -p "$APP/Contents/MacOS" "$APP/Contents/Resources"
cp "$BIN" "$APP/Contents/MacOS/Sumi"
cp Resources/Info.plist "$APP/Contents/Info.plist"
# Release builds set the version from the tag (SUMI_VERSION) and the build number from the CI run (SUMI_BUILD).
if [[ -n "${SUMI_VERSION:-}" ]]; then /usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString $SUMI_VERSION" "$APP/Contents/Info.plist"; fi
if [[ -n "${SUMI_BUILD:-}" ]]; then /usr/libexec/PlistBuddy -c "Set :CFBundleVersion $SUMI_BUILD" "$APP/Contents/Info.plist"; fi
# The binary bundles SwiftTerm and cmark-gfm; their licenses ship with it.
cp LICENSE THIRD_PARTY_NOTICES.md "$APP/Contents/Resources/"

# Every Localization/<code>.lproj becomes a UI language; CFBundleLocalizations is generated from the folders,
# so adding a language never requires editing the plist.
PLIST="$APP/Contents/Info.plist"
for dir in Localization/*.lproj; do
    code="$(basename "$dir" .lproj)"
    cp -R "$dir" "$APP/Contents/Resources/"
    /usr/libexec/PlistBuddy -c "Add :CFBundleLocalizations: string $code" "$PLIST"
done

codesign --force --sign - "$APP" >/dev/null 2>&1
echo "$APP"
