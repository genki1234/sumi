.PHONY: app debug run install l10n-check l10n-sync clean

app:
	scripts/build-app.sh

debug:
	scripts/build-app.sh --debug

run: debug
	open build/Sumi.app

install: app
	rm -rf /Applications/Sumi.app
	cp -R build/Sumi.app /Applications/

l10n-check:
	swift scripts/l10n.swift check

l10n-sync:
	swift scripts/l10n.swift sync

clean:
	rm -rf .build build
