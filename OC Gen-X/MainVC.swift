import Cocoa

class MainVC: NSViewController {
    
    @IBOutlet weak var ivyBridgeChecked: NSButton!
    @IBOutlet weak var haswellChecked: NSButton!
    @IBOutlet weak var skylakeChecked: NSButton!
    @IBOutlet weak var kabylakeChecked: NSButton!
    @IBOutlet weak var haswellEChecked: NSButton!
    @IBOutlet weak var broadwellEChecked: NSButton!
    @IBOutlet weak var skylakeXChecked: NSButton!
    @IBOutlet weak var ryzenChecked: NSButton!
    @IBOutlet weak var coffeelakeChecked: NSButton!
    @IBOutlet weak var bulldozerChecked: NSButton!
    @IBOutlet weak var threadripperChecked: NSButton!
    @IBOutlet weak var liluChecked: NSButton!
    @IBOutlet weak var virtualSMCChecked: NSButton!
    @IBOutlet weak var smcProcessorChecked: NSButton!
    @IBOutlet weak var smcSuperIOChecked: NSButton!
        
    var config = Root(acpi: acpi(add: [acpiAdd()], delete: [acpiDelete()], patch: [acpiPatch()], quirks: acpuQuirks(fadtEnableReset: false, normalizeHeader: false, rebaseRegions: false, resetHwSig: false, resetLogoStatus: false)), booter: booter(mmioWhitelist: [mmioWhitelist()], quirks: booterQuirks(avoidRuntimeDefrag: true, devirtualiseMmio: false, disableSingleUser: false, disableVariableWrite: false, discardHibernateMap: false, enableSafeModeSlide: true, enableWriteUnprotector: true, forceExitBootServices: false, protectMemoryRegion: false, protectSecureBoot: false, protectUefiServices: false, provideCustomSlide: true, rebuildAppleMemoryMap: false, setupVirtualMap: true, signalAppleOS: false, syncRuntimePermissions: false)), deviceProperties: deviceProperties(add: [dpAdd()], delete: [dpDelete()]), kernel: kernel(kAdd: [kAdd()], kBlock: [kBlock()], emulate: emulate(cpuid1Data: Data(), cpuid1Mask: Data()), kPatch: [kPatch()], kQuirks: kQuirks(appleCpuPmCfgLock: false, appleXcpmCfgLock: false, appleXcpmExtraMsrs: false, appleXcpmForceBoost: false, customSMBIOSGuid: false, disableIoMapper: false, dummyPowerManagement: false, externalDiskIcons: false, increasePciBarSize: false, lapicKernelPanic: false, panicNoKextDump: false, powerTimeoutKernelPanic: false, thirdPartyDrives: false, xhciPortLimit: false)), misc: misc(blessOverRide: [blessOverRide()], boot: boot(consoleAttributes: 0, hibernateMode: "None", hideAuxiliary: false, pickerAttributes: 1, pickerAudioAssist: false, pickerMode: "Builtin", pollAppleHotKeys: false, showPicker: true, takeoffDelay: 0, timeout: 5), debug: debug(appleDebug: false, applePanic: false, disableWatchDog: false, displayDelay: 0, displayLevel: 2147483650, sysReport: false, target: 3), entries: [entries()], security: security(allowNvramReset: false, allowSetDefault: false, authRestart: false, blacklistAppleUpdate: true, bootProtect: "Bootstrap", exposeSensitiveData: 6, haltLevel: 2147483650, scanPolicy: 17760515, vault: "Secure"), tools: [tools()]), nvram: nvram(add: nAdd(addAppleVendorVariableGuid: addAppleVendorVariableGuid(defaultBackgroundColor: Data(repeating: 0, count: 8), uiScale: Data(repeating: 0, count: 2)), addAppleVendorGuid: addAppleVendorGuid(rtcBlacklist: Data(repeating: 0, count: 0)), addAppleBootVariableGuid: addAppleBootVariableGuid(systemAudioVolume: Data(repeating: 0, count: 2), bootArgs: "-v keepsyms=1", csrActiveConfig: Data(repeating: 0, count: 8), nvdaDrv: Data(repeating: 0, count: 0), prevLangKbd: Data(repeating: 0, count: 18))), delete: nDelete(blockAppleVendorVariableGuid: [blockAppleVendorVariableGuid()], blockAppleBootVariableGuid: [blockAppleBootVariableGuid()]), legacyEnable: false, legacyOverwrite: false, legacySchema: legacySchema(legacyAppleBootVariableGuid: [legacyAppleBootVariableGuid()], legacyEfiGlobalVariable: [legacyEfiGlobalVariable()]), writeFlash: true), platFormInfo: platFormInfo(automatic: true, generic: generic(adviseWindows: false, mlb: "M0000000000000001", rom: Data(repeating: 0, count: 12), spoofVendor: false, systemProductName: "iMac19,1", systemSerialNumber: "W00000000001", systemUUID: "00000000-0000-0000-0000-000000000000"), updateDataHub: true, updateNVRAM: true, updateSMBIOS: true, updateSMBIOSMode: "Create"), uefi: uefi(apfs: apfs(enableJumpstart: true, hideVerbose: true, jumpstartHotPlug: false, minDate: 0, minVersion: 0), audio: audio(audioCodec: 0, audioDevice: "PciRoot(0x0)/Pci(0x1b,0x0)", audioOut: 0, audioSupport: false, minimumVolume: 20, playChime: false, volumeAmplifier: 0), connectDrivers: true, drivers: [drivers()], input: input(keyFiltering: false, keyForgetThreshold: 5, keyMergeThreshold: 2, keySupport: true, keySupportMode: "Auto", keySwap: false, pointerSupport: false, pointerSupportMode: "ASUS", timerResolution: 50000), output: output(clearScreenOnModeSwitch: false, consoleMode: "Max", directGopRendering: false, ignoreTextInGraphics: false, provideConsoleGop: true, reconnectOnResChange: false, replaceTabWithSpace: false, resolution: "Max", sanitiseClearScreen: false, textRenderer: "BuiltinGraphics"), protocols: protocols(appleAudio: false, appleBootPolicy: false, appleDebugLog: false, appleEvent: false, appleImageConversion: false, appleKeyMap: false, appleRtcRam: false, appleSmcIo: false, appleUserInterfaceTheme: false, dataHub: false, deviceProperties: false, firmwareVolume: false, hashServices: false, osInfo: false, unicodeCollation: false), quirks: uQuirks(deduplicateBootOrder: true, exitBootServicesDelay: 0, ignoreInvalidFlexRatio: false, releaseUsbOwnership: false, requestBootVarRouting: true, tscSyncTimeout: 0, unblockFsConnect: false), reservedMemory: [reservedMemory()]))
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func checkedIvyBridge(_ sender: NSButton) {
        if ivyBridgeChecked.isHidden == (sender.state == .off) {
            let buttonArray = [skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, haswellChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == false)
            }
        }
        if ivyBridgeChecked.isHidden == (sender.state == .on) {
            let buttonArray = [skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, haswellChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == true)
            }
        }
    }
    @IBAction func checkedHaswell(_ sender: NSButton) {
        if haswellChecked.isHidden == (sender.state == .off) {
            let buttonArray = [skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == false)
            }
        }
        if haswellChecked.isHidden == (sender.state == .on) {
            let buttonArray = [skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == true)
            }
        }
    }
    @IBAction func checkedSkylake(_ sender: NSButton) {
        if skylakeChecked.isHidden == (sender.state == .off) {
            let buttonArray = [haswellChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == false)
            }
        }
        if skylakeChecked.isHidden == (sender.state == .on) {
            let buttonArray = [haswellChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == true)
            }
        }
    }
    @IBAction func checkedKabylake(_ sender: NSButton) {
        if kabylakeChecked.isHidden == (sender.state == .off) {
            let buttonArray = [haswellChecked, skylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == false)
            }
        }
        if kabylakeChecked.isHidden == (sender.state == .on) {
            let buttonArray = [haswellChecked, skylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == true)
            }
        }
    }
    @IBAction func checkedHaswellE(_ sender: NSButton) {
        if haswellEChecked.isHidden == (sender.state == .off) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == false)
            }
        }
        if haswellEChecked.isHidden == (sender.state == .on) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == true)
            }
        }
    }
    @IBAction func checkedBroadwellE(_ sender: NSButton) {
        if broadwellEChecked.isHidden == (sender.state == .off) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == false)
            }
        }
        if broadwellEChecked.isHidden == (sender.state == .on) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == true)
            }
        }
    }
    @IBAction func checkedSkylakeX(_ sender: NSButton) {
        if skylakeXChecked.isHidden == (sender.state == .off) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == false)
            }
        }
        if skylakeXChecked.isHidden == (sender.state == .on) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, ryzenChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == true)
            }
        }
    }
    
    @IBAction func checkedRyzen(_ sender: NSButton) {
        if ryzenChecked.isHidden == (sender.state == .off) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == false)
            }
        }
        if ryzenChecked.isHidden == (sender.state == .on) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, coffeelakeChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == true)
            }
        }
    }
    @IBAction func checkedCoffeeLake(_ sender: NSButton) {
        if coffeelakeChecked.isHidden == (sender.state == .off) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == false)
            }
        }
        if coffeelakeChecked.isHidden == (sender.state == .on) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, bulldozerChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == true)
            }
        }
    }
    @IBAction func checkedBulldozer(_ sender: NSButton) {
        if bulldozerChecked.isHidden == (sender.state == .off) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == false)
            }
        }
        if bulldozerChecked.isHidden == (sender.state == .on) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, ivyBridgeChecked, threadripperChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == true)
            }
        }
    }
    
    
    @IBAction func checkedThreadripper(_ sender: NSButton) {
        if threadripperChecked.isHidden == (sender.state == .off) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, ivyBridgeChecked, bulldozerChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == false)
            }
        }
        if threadripperChecked.isHidden == (sender.state == .on) {
            let buttonArray = [haswellChecked, skylakeChecked, kabylakeChecked, haswellEChecked, broadwellEChecked, skylakeXChecked, ryzenChecked, coffeelakeChecked, ivyBridgeChecked, bulldozerChecked]
            for i in buttonArray {
                i!.isEnabled = (sender.isEnabled == true)
            }
        }
    }
    
    @IBAction func generateClicked(_ sender: Any) {
//        let fm = FileManager.default
//        let efiDirectory = fm.urls(for: .desktopDirectory, in: .userDomainMask)
//        let srcDir = Bundle.main.url(forResource: "AppleALC", withExtension: "kext")
        
        switch config.acpi.quirks.rebaseRegions {
        case true:
            <#code#>
        case false:
            <#code#>
        }
    }
}
