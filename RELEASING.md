# Releasing Sumi

The release workflow builds a universal app for Apple silicon and Intel, checks translations and README links, and publishes a ZIP with SHA-256 checksums. Nightly builds track `main`. Version tags create stable releases only after Developer ID signing, Apple notarization and ticket stapling succeed.

## Distribution credentials

Use an existing **Developer ID Application** certificate with its private key. Apple Development and Apple Distribution certificates are not substitutes for distributing this app outside the Mac App Store. Do not commit a certificate, private key or password to this repository.

Configure these repository Actions secrets through GitHub's secret settings:

| Secret | Value |
|---|---|
| `APPLE_CERTIFICATE_P12_BASE64` | Base64-encoded PKCS#12 export of the Developer ID Application certificate and private key |
| `APPLE_CERTIFICATE_PASSWORD` | Password protecting that PKCS#12 export |
| `APPLE_TEAM_ID` | Developer team ID matching the certificate |
| `APPLE_ID` | Apple account authorized to submit notarization for the team |
| `APPLE_APP_SPECIFIC_PASSWORD` | Existing app-specific password for that account |

The workflow imports the certificate into a temporary keychain, stores the notarization profile there, and removes the temporary keychain and certificate export after the build. It never needs to change the account's password or issue a certificate. Fork pull requests do not receive these secrets.

All five secrets must be present together. Without them, a push to `main` can publish an explicitly unsigned nightly; a version tag fails before publication. A partial credential configuration also fails, including on nightly builds.

## Prepare a stable release

1. Confirm that Build, Translations and Documentation pass on the exact `main` commit being released.
2. Validate the app on macOS: open and edit a file, check autosave, use terminal input and path links, open Markdown and HTML previews, and switch display languages. Record the macOS version and Mac architecture. Do not claim hardware or language coverage that was not checked.
3. Update `CHANGELOG.md` with the version, date and user-visible changes. Keep the version consistent with `Resources/Info.plist`.
4. Confirm the distribution credentials above are configured. Local builds may use the existing keychain instructions below to verify signing and notarization before tagging.
5. Tag the verified commit and push the tag. For example, the first release uses:

```sh
git tag -a v0.1.0 -m "Sumi 0.1.0"
git push origin v0.1.0
```

The workflow derives the app version from the tag and the build number from the workflow run. It verifies both binary architectures, signs with Hardened Runtime, submits to Apple, requires an Accepted result, staples the ticket, and assesses the app with Gatekeeper. Only then does it package and publish `Sumi.zip` and `SHA256SUMS.txt`.

If a release fails, inspect the failed job before retrying. Do not move a published version tag or replace its assets with a different build. Publish a new version for a changed build.

## Sign and notarize locally

With an existing Developer ID Application identity and an existing `notarytool` keychain profile:

```sh
export SUMI_SIGNING_IDENTITY="Developer ID Application: Your Name (TEAMID)"
export SUMI_NOTARY_PROFILE="existing-notary-profile"
scripts/build-app.sh
scripts/notarize-app.sh build/Sumi.app
ditto -c -k --keepParent build/Sumi.app Sumi.zip
shasum -a 256 Sumi.zip > SHA256SUMS.txt
```

`SUMI_SIGNING_KEYCHAIN` and `SUMI_NOTARY_KEYCHAIN` optionally select existing keychains without changing the default keychain. The scripts neither create credentials nor change keychain settings. Create the distribution ZIP after notarization so that it contains the stapled app.

## Verify a download

Download both release assets into the same directory and run:

```sh
shasum -a 256 -c SHA256SUMS.txt
ditto -x -k Sumi.zip .
codesign --verify --deep --strict Sumi.app
xcrun stapler validate Sumi.app
spctl --assess --type execute --verbose=2 Sumi.app
```

The stapler and Gatekeeper checks are for signed, notarized distributions. Unsigned nightlies are labeled in their release title and notes and do not pass these distribution checks.
