#!/bin/bash
# Builds Sumi.app into ./build.
#   scripts/build-app.sh            release build (universal: Apple silicon and Intel)
#   scripts/build-app.sh --debug    debug build for the current machine
# SUMI_SIGNING_IDENTITY selects an existing Developer ID Application identity;
# without it, builds keep their ad-hoc signature. SUMI_SIGNING_KEYCHAIN optionally
# selects the existing keychain containing that identity without changing defaults.
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
    RESOURCE_DIR="$(dirname "${PARTS[0]}")"
    lipo -create -output "$BIN" "${PARTS[@]}"
else
    swift build -c debug
    BIN="$(swift build -c debug --show-bin-path)/Sumi"
    RESOURCE_DIR="$(dirname "$BIN")"
fi

APP=build/Sumi.app
rm -rf "$APP"
mkdir -p "$APP/Contents/MacOS" "$APP/Contents/Resources"
cp "$BIN" "$APP/Contents/MacOS/Sumi"
cp Resources/Info.plist "$APP/Contents/Info.plist"
# HighlightResources resolves this bundle from the packaged app's resource directory.
cp -R "$RESOURCE_DIR/Sumi_Sumi.bundle" "$APP/Contents/Resources/"
# This codeless bundle contains only highlighting resources. In Contents/Resources
# it is sealed by the app's signature, not signed as nested executable code. Remove
# any signature inherited from Xcode in the copy only; leave build products intact.
rm -rf "$APP/Contents/Resources/Sumi_Sumi.bundle/_CodeSignature" \
    "$APP/Contents/Resources/Sumi_Sumi.bundle/Contents/_CodeSignature"
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

SIGNING_ARGS=(--force --sign "${SUMI_SIGNING_IDENTITY:--}")
if [[ -n "${SUMI_SIGNING_IDENTITY:-}" ]]; then
    # Prism executes in our JavaScriptCore context. Only the app needs its JIT
    # entitlement; SwiftTerm launches external shells with forkpty/execve, and
    # WebKit provides its own system processes. No sandbox or library exceptions.
    SIGNING_ARGS+=(--options runtime --timestamp --entitlements Resources/Sumi.entitlements)
    if [[ -n "${SUMI_SIGNING_KEYCHAIN:-}" ]]; then
        SIGNING_ARGS+=(--keychain "$SUMI_SIGNING_KEYCHAIN")
    fi
fi
codesign "${SIGNING_ARGS[@]}" "$APP"
codesign --verify --deep --strict "$APP"
if [[ -n "${SUMI_SIGNING_IDENTITY:-}" ]]; then
    # Reject an Apple Development or ad-hoc identity instead of presenting it as
    # a distribution build. The leaf OID identifies Developer ID Application.
    codesign --verify --strict --test-requirement \
        '=anchor apple generic and certificate leaf[field.1.2.840.113635.100.6.1.13] exists' "$APP"
fi
echo "$APP"
