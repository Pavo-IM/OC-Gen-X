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
    
    
    
    @IBAction func systemTypeChecked(_ sender: NSButton) {
    }
    
    
    @IBAction func generateClicked(_ sender: Any) {
        //TODO: Add Sylake-X/Cascade Lake-X/W, Comet Lake, Bulldozer/Jaguar AMD specific info
        //TODO: Add disclaimer to UI to tell users all generated info is from the offical supported guide from https://dortania.github.io/OpenCore-Desktop-Guide/.
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
