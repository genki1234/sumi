#!/bin/bash
# Notarizes an already Developer ID-signed app, then staples and verifies it.
# Usage: SUMI_NOTARY_PROFILE=<existing profile> scripts/notarize-app.sh [Sumi.app]
# SUMI_NOTARY_KEYCHAIN optionally selects the profile's existing keychain.
# No credentials or keychain settings are created or changed by this script.
set -euo pipefail

if [[ $# -gt 1 ]]; then
    echo "Usage: scripts/notarize-app.sh [path/to/Sumi.app]" >&2
    exit 1
fi
if [[ -z "${SUMI_NOTARY_PROFILE:-}" ]]; then
    echo "Set SUMI_NOTARY_PROFILE to an existing notarytool keychain profile." >&2
    exit 1
fi

APP="${1:-$(cd "$(dirname "$0")/.." && pwd)/build/Sumi.app}"
if [[ ! -d "$APP/Contents/MacOS" || ! -f "$APP/Contents/Info.plist" ]]; then
    echo "App bundle not found: $APP" >&2
    exit 1
fi
APP="$(cd "$(dirname "$APP")" && pwd)/$(basename "$APP")"
xcrun --find notarytool >/dev/null
xcrun --find stapler >/dev/null

# Check the complete resource seal and Developer ID Application certificate before
# uploading; an ad-hoc or Apple Development build cannot be notarized for release.
codesign --verify --deep --strict "$APP"
codesign --verify --strict --test-requirement \
    '=anchor apple generic and certificate leaf[field.1.2.840.113635.100.6.1.13] exists' "$APP"

NOTARY_AUTH=(--keychain-profile "$SUMI_NOTARY_PROFILE")
if [[ -n "${SUMI_NOTARY_KEYCHAIN:-}" ]]; then
    NOTARY_AUTH+=(--keychain "$SUMI_NOTARY_KEYCHAIN")
fi
WORK_DIR="$(mktemp -d "${TMPDIR:-/tmp}/sumi-notarize.XXXXXX")"
trap 'rm -rf "$WORK_DIR"' EXIT

# Apple accepts a ZIP submission, but its ticket must be stapled to the app.
# Any archive distributed to users must be created after this script completes.
ditto -c -k --keepParent "$APP" "$WORK_DIR/Sumi.zip"
if ! xcrun notarytool submit "$WORK_DIR/Sumi.zip" "${NOTARY_AUTH[@]}" \
    --wait --output-format json > "$WORK_DIR/notarization.json"; then
    cat "$WORK_DIR/notarization.json" >&2
    echo "Notarization failed. Check that SUMI_NOTARY_PROFILE exists and its credentials are valid." >&2
    exit 1
fi
STATUS="$(plutil -extract status raw -o - "$WORK_DIR/notarization.json")"
if [[ "$STATUS" != Accepted ]]; then
    cat "$WORK_DIR/notarization.json" >&2
    echo "Notarization was not accepted; retrieve the submission log with notarytool log." >&2
    exit 1
fi

xcrun stapler staple "$APP"
xcrun stapler validate "$APP"
codesign --verify --deep --strict "$APP"
spctl --assess --type execute --verbose=2 "$APP"
echo "Notarized and stapled: $APP"
