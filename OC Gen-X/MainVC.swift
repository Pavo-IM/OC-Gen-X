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
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.kPatch = [firstRyzenPatch]
            config.kernel.kPatch?.append(secondRyzenPatch)
            config.kernel.kPatch?.append(thirdRyzenPatch)
            config.kernel.kPatch?.append(forthRyzenPatch)
            config.kernel.kPatch?.append(fifthRyzenPatch)
            config.kernel.kPatch?.append(sixthRyzenPatch)
            config.kernel.kPatch?.append(seventhRyzenPatch)
            config.kernel.kPatch?.append(eigthRyzenPatch)
            config.kernel.kPatch?.append(ninthRyzenPatch)
            config.kernel.kPatch?.append(tenthRyzenPatch)
            config.kernel.kPatch?.append(eleventhRyzenPatch)
            config.kernel.kPatch?.append(twelfthRyzenPatch)
            config.kernel.kPatch?.append(thirteenthRyzenPatch)
            config.kernel.kPatch?.append(fourteenthRyzenPatch)
            config.kernel.kPatch?.append(fiftheenthRyzenPatch)
            config.kernel.kPatch?.append(sixthteenthRyzenPatch)
            config.kernel.kPatch?.append(seventeethRyzenPatch)
            config.kernel.kPatch?.append(eigthteethRyzenPatch)
            config.kernel.kPatch?.append(ninthteenthRyzenPatch)
            config.kernel.kPatch?.append(twentiethRyzenPatch)
            config.kernel.kPatch?.append(twentiefirstRyzenPatch)
            config.kernel.kPatch?.append(twentiesecondRyzenPatch)
            config.kernel.kPatch?.append(twentiethirdRyzenPatch)
            config.kernel.kPatch?.append(twentieforthRyzenPatch)
            config.kernel.kPatch?.append(twentiefifthRyzenPatch)
            config.kernel.kPatch?.append(twentiesixthRyzenPatch)
            config.kernel.kPatch?.append(twentieseventhRyzenPatch)
            config.kernel.kPatch?.append(twentieeigthRyzenPatch)
            config.kernel.kPatch?.append(twentieninthRyzenPatch)
            config.kernel.kPatch?.append(thirtiethRyzenPatch)
            config.kernel.kPatch?.append(thirtiefirstRyzenPatch)
            config.kernel.kPatch?.append(thirtiesecondRyzenPatch)
            config.kernel.kPatch?.append(thirtiethirdRyzenPatch)
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
        for i in config.kernel.kPatch! {
            print(i)
        }
    }
}
