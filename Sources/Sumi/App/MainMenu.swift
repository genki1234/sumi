import AppKit

/// The menu bar, built in code (no nib). Standard macOS shortcuts take precedence.
@MainActor
enum MainMenu {
    static func build() -> NSMenu {
        let main = NSMenu()
        main.userInterfaceLayoutDirection = AppLocalization.isRightToLeft ? .rightToLeft : .leftToRight
        main.addItem(submenu("Sumi", appMenu()))
        main.addItem(submenu(L("File"), fileMenu()))
        main.addItem(submenu(L("Edit"), editMenu()))
        main.addItem(submenu(L("View"), viewMenu()))
        main.addItem(submenu(L("Navigate"), navigateMenu()))
        let window = windowMenu()
        main.addItem(submenu(L("Window"), window))
        main.addItem(submenu(L("Language"), languageMenu()))
        NSApp.windowsMenu = window
        return main
    }

    private static func submenu(_ title: String, _ menu: NSMenu) -> NSMenuItem {
        let item = NSMenuItem(title: title, action: nil, keyEquivalent: "")
        menu.title = title
        menu.userInterfaceLayoutDirection = AppLocalization.isRightToLeft ? .rightToLeft : .leftToRight
        item.submenu = menu
        return item
    }

    private static func item(_ title: String, _ action: Selector?, _ key: String = "", _ modifiers: NSEvent.ModifierFlags = .command, tag: Int = 0) -> NSMenuItem {
        let item = NSMenuItem(title: title, action: action, keyEquivalent: key)
        item.keyEquivalentModifierMask = modifiers
        item.tag = tag
        return item
    }

    private static func functionKey(_ key: Int) -> String {
        String(Character(UnicodeScalar(UInt32(key))!))
    }

    private static func appMenu() -> NSMenu {
        let menu = NSMenu()
        menu.addItem(item(L("About Sumi"), #selector(NSApplication.orderFrontStandardAboutPanel(_:))))
        menu.addItem(.separator())
        let services = NSMenu()
        NSApp.servicesMenu = services
        menu.addItem(submenu(L("Services"), services))
        menu.addItem(.separator())
        menu.addItem(item(L("Hide Sumi"), #selector(NSApplication.hide(_:)), "h"))
        menu.addItem(item(L("Hide Others"), #selector(NSApplication.hideOtherApplications(_:)), "h", [.command, .option]))
        menu.addItem(item(L("Show All"), #selector(NSApplication.unhideAllApplications(_:))))
        menu.addItem(.separator())
        menu.addItem(item(L("Quit Sumi"), #selector(NSApplication.terminate(_:)), "q"))
        return menu
    }

    private static func languageMenu() -> NSMenu {
        let menu = NSMenu()
        let action = #selector(AppDelegate.selectLanguage(_:))
        let system = item(L("System Default"), action)
        system.target = NSApp.delegate
        system.representedObject = ""
        system.state = Preferences.interfaceLanguage == nil ? .on : .off
        menu.addItem(system)
        menu.addItem(.separator())
        let codes = AppLocalization.supportedLanguageCodes.sorted {
            AppLocalization.nativeName(for: $0).localizedStandardCompare(AppLocalization.nativeName(for: $1)) == .orderedAscending
        }
        for code in codes {
            let language = item(AppLocalization.nativeName(for: code), action)
            language.target = NSApp.delegate
            language.representedObject = code
            language.state = Preferences.interfaceLanguage == code ? .on : .off
            menu.addItem(language)
        }
        return menu
    }

    private static func fileMenu() -> NSMenu {
        let menu = NSMenu()
        menu.addItem(item(L("New File…"), #selector(ProjectWindowController.newFile(_:)), "n"))
        menu.addItem(item(L("New Folder…"), #selector(ProjectWindowController.newFolder(_:)), "n", [.command, .shift]))
        menu.addItem(item(L("New Terminal Tab"), #selector(ProjectWindowController.newTerminalTab(_:)), "t"))
        menu.addItem(item(L("Open…"), #selector(AppDelegate.openDocument(_:)), "o"))
        menu.addItem(.separator())
        menu.addItem(item(L("Save"), #selector(ProjectWindowController.saveDocument(_:)), "s"))
        menu.addItem(item(L("Save All"), #selector(ProjectWindowController.saveAllDocuments(_:)), "s", [.command, .option]))
        menu.addItem(.separator())
        menu.addItem(item(L("Close Tab"), #selector(ProjectWindowController.closeTab(_:)), "w"))
        menu.addItem(item(L("Close Window"), #selector(NSWindow.performClose(_:)), "w", [.command, .shift]))
        return menu
    }

    private static func editMenu() -> NSMenu {
        let menu = NSMenu()
        menu.addItem(item(L("Undo"), Selector(("undo:")), "z"))
        menu.addItem(item(L("Redo"), Selector(("redo:")), "z", [.command, .shift]))
        menu.addItem(.separator())
        menu.addItem(item(L("Cut"), #selector(NSText.cut(_:)), "x"))
        menu.addItem(item(L("Copy"), #selector(NSText.copy(_:)), "c"))
        menu.addItem(item(L("Paste"), #selector(NSText.paste(_:)), "v"))
        menu.addItem(item(L("Select All"), #selector(NSText.selectAll(_:)), "a"))
        menu.addItem(.separator())
        let find = NSMenu()
        let action = #selector(ProjectWindowController.performFindAction(_:))
        find.addItem(item(L("Find…"), action, "f", tag: NSTextFinder.Action.showFindInterface.rawValue))
        find.addItem(item(L("Replace…"), action, "r", tag: NSTextFinder.Action.showReplaceInterface.rawValue))
        find.addItem(item(L("Find Next"), action, "g", tag: NSTextFinder.Action.nextMatch.rawValue))
        find.addItem(item(L("Find Previous"), action, "g", [.command, .shift], tag: NSTextFinder.Action.previousMatch.rawValue))
        find.addItem(item(L("Use Selection for Find"), action, "e", tag: NSTextFinder.Action.setSearchString.rawValue))
        menu.addItem(submenu(L("Find"), find))
        return menu
    }

    private static func viewMenu() -> NSMenu {
        let menu = NSMenu()
        menu.addItem(item(L("Project"), #selector(ProjectWindowController.toggleProjectView(_:)), "1"))
        menu.addItem(item(L("Terminal"), #selector(ProjectWindowController.toggleConsole(_:)), functionKey(NSF12FunctionKey), .option))
        menu.addItem(item(L("Swap Terminal and Project"), #selector(ProjectWindowController.swapConsoleAndProject(_:)), "t", [.command, .control]))
        menu.addItem(item(L("Maximize Terminal"), #selector(ProjectWindowController.toggleMaximizeConsole(_:)), "\r", [.command, .shift]))
        menu.addItem(.separator())
        menu.addItem(item(L("GPU Rendering"), #selector(AppDelegate.toggleTerminalGPU(_:))))
        menu.addItem(item(L("Soft-Wrap"), #selector(AppDelegate.toggleSoftWrap(_:))))
        menu.addItem(item(L("Toggle Preview"), #selector(ProjectWindowController.togglePreview(_:)), "v", [.command, .shift]))
        menu.addItem(.separator())
        menu.addItem(item(L("Increase Font Size"), #selector(AppDelegate.increaseFontSize(_:)), "+"))
        menu.addItem(item(L("Decrease Font Size"), #selector(AppDelegate.decreaseFontSize(_:)), "-"))
        menu.addItem(item(L("Reset Font Size"), #selector(AppDelegate.resetFontSize(_:)), "0"))
        return menu
    }

    private static func navigateMenu() -> NSMenu {
        let menu = NSMenu()
        menu.addItem(item(L("Search Everywhere (Double ⇧)"), #selector(ProjectWindowController.searchEverywhere(_:)), "o", [.command, .shift]))
        menu.addItem(item(L("Select in Project View"), #selector(ProjectWindowController.selectInProjectView(_:)), "1", [.command, .option]))
        menu.addItem(.separator())
        menu.addItem(item(L("Next Tab"), #selector(ProjectWindowController.selectNextTab(_:)), "]", [.command, .shift]))
        menu.addItem(item(L("Previous Tab"), #selector(ProjectWindowController.selectPreviousTab(_:)), "[", [.command, .shift]))
        return menu
    }

    private static func windowMenu() -> NSMenu {
        let menu = NSMenu()
        menu.addItem(item(L("Minimize"), #selector(NSWindow.performMiniaturize(_:)), "m"))
        menu.addItem(item(L("Zoom"), #selector(NSWindow.performZoom(_:))))
        menu.addItem(.separator())
        menu.addItem(item(L("Bring All to Front"), #selector(NSApplication.arrangeInFront(_:))))
        return menu
    }
}
