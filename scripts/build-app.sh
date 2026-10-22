#!/bin/bash
# Builds Sumi.app into ./build.
#   scripts/build-app.sh            release build (universal: Apple silicon and Intel)
#   scripts/build-app.sh --debug    debug build for the current machine
set -euo pipefail
cd "$(dirname "$0")/.."

CONFIG=release
if [[ "${1:-}" == "--debug" ]]; then CONFIG=debug; fi

if [[ "$CONFIG" == release ]]; then
    # One build per architecture with the native build system, joined with lipo. Building both architectures in
    # one `swift build` uses the Xcode build system, which on Xcode 26 cannot resolve SwiftTerm's build plugin; the
    # newer default build system compiles that plugin for the target architecture, so an Intel build cannot run it
    # on Apple silicon. The native build system compiles plugins for the build machine.
    PARTS=()
    for arch in arm64 x86_64; do
        NATIVE=(-c release --build-system native --triple "$arch-apple-macosx")
        swift build "${NATIVE[@]}"
        PARTS+=("$(swift build "${NATIVE[@]}" --show-bin-path)/Sumi")
    done
    BIN=.build/Sumi-universal
    lipo -create -output "$BIN" "${PARTS[@]}"
else
    swift build -c debug
    BIN="$(swift build -c debug --show-bin-path)/Sumi"
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
