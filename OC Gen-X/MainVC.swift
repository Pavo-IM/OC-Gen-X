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
        
    //FIXME: These settings are based off the release Sample.plist that comes with OpenCorePkg/Docs
    var config = Root(
        acpi: acpi(add: [acpiAdd()],
              delete: [acpiDelete()],
              patch: [acpiPatch()],
              quirks: acpuQuirks(fadtEnableReset: false, normalizeHeader: false, rebaseRegions: false, resetHwSig: false, resetLogoStatus: false)),
                      
        booter: booter(mmioWhitelist: [mmioWhitelist()],
                quirks: booterQuirks(avoidRuntimeDefrag: true, devirtualiseMmio: false, disableSingleUser: false, disableVariableWrite: false, discardHibernateMap: false, enableSafeModeSlide: true, enableWriteUnprotector: true, forceExitBootServices: false, protectMemoryRegion: false, protectSecureBoot: false, protectUefiServices: false, provideCustomSlide: true, rebuildAppleMemoryMap: false, setupVirtualMap: true, signalAppleOS: false, syncRuntimePermissions: false)),
                    
        deviceProperties: deviceProperties(add: [dpAdd()],
                          delete: [dpDelete()]),
                    
        kernel: kernel(kAdd: [kAdd()],
                kBlock: [kBlock()],
                emulate: emulate(cpuid1Data: Data(), cpuid1Mask: Data()),
                kPatch: [kPatch()],
                kQuirks: kQuirks(appleCpuPmCfgLock: false, appleXcpmCfgLock: false, appleXcpmExtraMsrs: false, appleXcpmForceBoost: false, customSMBIOSGuid: false, disableIoMapper: false, dummyPowerManagement: false, externalDiskIcons: false, increasePciBarSize: false, lapicKernelPanic: false, panicNoKextDump: false, powerTimeoutKernelPanic: false, thirdPartyDrives: false, xhciPortLimit: false)),
                    
        misc: misc(blessOverRide: [blessOverRide()],
              boot: boot(consoleAttributes: 0, hibernateMode: "None", hideAuxiliary: false, pickerAttributes: 1, pickerAudioAssist: false, pickerMode: "Builtin", pollAppleHotKeys: false, showPicker: true, takeoffDelay: 0, timeout: 5),
              debug: debug(appleDebug: false, applePanic: false, disableWatchDog: false, displayDelay: 0, displayLevel: 2147483650, sysReport: false, target: 3),
              entries: [entries()],
              security: security(allowNvramReset: false, allowSetDefault: false, authRestart: false, blacklistAppleUpdate: true, bootProtect: "Bootstrap", exposeSensitiveData: 6, haltLevel: 2147483650, scanPolicy: 17760515, vault: "Secure"),
              tools: [tools()]),
                    
        nvram: nvram(add: nAdd(addAppleVendorVariableGuid: addAppleVendorVariableGuid(defaultBackgroundColor: Data(), uiScale: Data()), addAppleVendorGuid: addAppleVendorGuid(rtcBlacklist: Data()), addAppleBootVariableGuid: addAppleBootVariableGuid(systemAudioVolume: Data(), bootArgs: "-v keepsyms=1", csrActiveConfig: Data(), nvdaDrv: Data(), prevLangKbd: Data())),
               delete: nDelete(blockAppleVendorVariableGuid: [blockAppleVendorVariableGuid()], blockAppleBootVariableGuid: [blockAppleBootVariableGuid()]),
               legacyEnable: false, legacyOverwrite: false,
               legacySchema: legacySchema(legacyAppleBootVariableGuid: [legacyAppleBootVariableGuid()], legacyEfiGlobalVariable: [legacyEfiGlobalVariable()]),
               writeFlash: true),
                    
        platFormInfo: platFormInfo(automatic: true, generic: generic(adviseWindows: false, mlb: "M0000000000000001", rom: Data(), spoofVendor: false, systemProductName: "iMac19,1", systemSerialNumber: "W00000000001", systemUUID: "00000000-0000-0000-0000-000000000000"), updateDataHub: true, updateNVRAM: true, updateSMBIOS: true, updateSMBIOSMode: "Create"),
                    
        uefi: uefi(apfs: apfs(enableJumpstart: true, hideVerbose: true, jumpstartHotPlug: false, minDate: 0, minVersion: 0),
              audio: audio(audioCodec: 0, audioDevice: "PciRoot(0x0)/Pci(0x1b,0x0)", audioOut: 0, audioSupport: false, minimumVolume: 20, playChime: false, volumeAmplifier: 0),
              connectDrivers: true,
              drivers: [drivers()],
              input: input(keyFiltering: false, keyForgetThreshold: 5, keyMergeThreshold: 2, keySupport: true, keySupportMode: "Auto", keySwap: false, pointerSupport: false, pointerSupportMode: "ASUS", timerResolution: 50000),
              output: output(clearScreenOnModeSwitch: false, consoleMode: "", directGopRendering: false, ignoreTextInGraphics: false, provideConsoleGop: true, reconnectOnResChange: false, replaceTabWithSpace: false, resolution: "Max", sanitiseClearScreen: false, textRenderer: "BuiltinGraphics"),
              protocols: protocols(appleAudio: false, appleBootPolicy: false, appleDebugLog: false, appleEvent: false, appleImageConversion: false, appleKeyMap: false, appleRtcRam: false, appleSmcIo: false, appleUserInterfaceTheme: false, dataHub: false, deviceProperties: false, firmwareVolume: false, hashServices: false, osInfo: false, unicodeCollation: false),
              quirks: uQuirks(deduplicateBootOrder: true, exitBootServicesDelay: 0, ignoreInvalidFlexRatio: false, releaseUsbOwnership: false, requestBootVarRouting: true, tscSyncTimeout: 0, unblockFsConnect: false),
              reservedMemory: [reservedMemory()])
    )
    
    // These patches are from https://github.com/AMD-OSX/AMD_Vanilla/blob/opencore/17h/patches.plist
    var firstRyzenPatch = amdPatches(base: "", comment: "algrey - commpage_populate -remove rdmsr", count: 1, enabled: true, find: Data([0xB9, 0xA0, 0x01, 0x00, 0x00, 0x0F, 0x32]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x0F, 0x1F, 0x80, 0x00, 0x00, 0x00, 0x00]), replaceMask: Data(), skip: 0)
    var secondRyzenPatch = amdPatches(base: "_cpu_topology_sort", comment: "algrey - cpu_topology_sort -disable _x86_validate_topology", count: 1, enabled: true, find: Data([0xE8, 0x00, 0x00, 0xFF, 0xFF]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0x00, 0x00, 0xFF, 0xFF]), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x0F, 0x1F, 0x44, 0x00, 0x00]), replaceMask: Data(), skip: 0)
    var thirdRyzenPatch = amdPatches(base: "", comment: "algrey - cpuid_set_cache_info - cpuid 0x8000001D instead 0 - 10.15", count: 1, enabled: true, find: Data([0x31, 0xC0, 0x31, 0xDB, 0x31, 0xC9, 0x31, 0xD2, 0x0F, 0xA2, 0x41, 0x89, 0xC6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x74]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF]), maxKernel: "19.99.99", minKernel: "19.0.0", replace: Data([0xB8, 0x1D, 0x00, 0x00, 0x80, 0x31, 0xDB, 0x31, 0xC9, 0x31, 0xD2, 0x0F, 0xA2, 0x41, 0x89, 0xC6, 0x0F, 0x1F, 0x40, 0x00, 0xEB]), replaceMask: Data(), skip: 0)
    
    var ryzenPatchArray = [amdPatches]()
    
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
        //TODO: Add Sylake-X/Cascade Lake-X/W, Comet Lake, Threadripper AMD, Bulldozer/Jaguar AMD specific info
        //TODO: Add disclaimer to UI to tell users all generated info is from the offical supported guide from https://dortania.github.io/OpenCore-Desktop-Guide/.
        //TODO: Add the array of kernel patches for AMD selection.
        //TODO: Create UI textfield elements so users can add SMBIOS info themselves.
        //TODO: Add UI element with dropdown menu to mount ESP of selected drive.
        //TODO: Add methods to copy items from Bundle to ESP.
        switch ivyBridgeChecked.state {
        case .on:
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch haswellChecked.state {
        case .on:
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch skylakeChecked.state {
        case .on:
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
        default:
            break
        }
        
        switch kabylakeChecked.state {
        case .on:
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
        default:
            break
        }
        
        switch coffeelakeChecked.state {
        case .on:
            config.booter.quirks.devirtualiseMmio = true
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
        default:
            break
        }
        
        switch haswellEChecked.state {
        case .on:
            config.booter.quirks.devirtualiseMmio = true
            config.booter.quirks.disableVariableWrite = true
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.appleXcpmExtraMsrs = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch broadwellEChecked.state {
        case .on:
            config.booter.quirks.devirtualiseMmio = true
            config.booter.quirks.disableVariableWrite = true
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.appleXcpmExtraMsrs = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch ryzenChecked.state {
        case .on:
            ryzenPatchArray.append(firstRyzenPatch)
            ryzenPatchArray.append(secondRyzenPatch)
            ryzenPatchArray.append(thirdRyzenPatch)
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.kQuirks.dummyPowerManagement = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.misc.security.scanPolicy = 0
            config.misc.security.exposeSensitiveData = 6
            config.misc.security.vault = "Optional"
            config.nvram.add.addAppleVendorVariableGuid.defaultBackgroundColor = Data([0x00, 0x00, 0x00, 0x00])
            config.nvram.add.addAppleVendorVariableGuid.uiScale = Data([0x01])
        default:
            break
        }
        print(ryzenPatchArray[0])
        print(ryzenPatchArray[1])
    }
}
