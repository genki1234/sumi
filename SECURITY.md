# Security policy

## Supported versions

No stable release has been published yet. The latest nightly build from `main` is the current maintained snapshot. Security reports about nightly builds and release candidates are welcome, with investigation and fixes on a best-effort basis.

| Version | Security maintenance |
|---|---|
| Latest stable release, once available | Supported for security fixes. Check whether an issue remains in the latest stable release. |
| Latest nightly snapshot from `main` | Current pre-release maintenance target; best-effort investigation and fixes. |
| Release candidates | Best-effort investigation while preparing the stable release. |
| Older snapshots or stable releases | Not maintained separately. A fix may require upgrading to the latest maintained version. |

A report about an older build is still useful when it demonstrates a problem affecting the latest maintained version. Nightly builds may contain unfinished changes.

## Report a vulnerability privately

Use GitHub's private vulnerability reporting form:

[Report a vulnerability in Sumi](https://github.com/genki1234/sumi/security/advisories/new)

Do not put exploit details, credentials, private files or other sensitive information in a public issue or pull request. If you cannot access the private form, check the repository's Security tab for the current private reporting option and keep the details private until it is available.

Include enough information to reproduce and assess the issue:

- Sumi version or commit, installation source, macOS version and CPU architecture.
- The affected feature and the conditions required for the issue to occur.
- Reproduction steps and a minimal example using disposable data.
- Expected and observed behavior, the security impact and any relevant logs or screenshots with secrets removed.
- Whether you have a proposed fix or workaround.

A maintainer will use the private report to investigate, request clarification and coordinate a fix and any public advisory. This project does not promise a response or resolution deadline. Please keep vulnerability details private while a fix and disclosure are being coordinated.

## Ordinary bugs

Crashes or incorrect behavior without a security impact can be reported through [GitHub issues](https://github.com/genki1234/sumi/issues). If you are unsure whether a report exposes a vulnerability, start with the private form above.
