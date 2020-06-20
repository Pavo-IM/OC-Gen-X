import Cocoa

class MainVC: NSViewController {
    
    @IBOutlet weak var generateButton: NSButton!
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
    @IBOutlet weak var smcLightSensorChecked: NSButton!
    @IBOutlet weak var smcBatteryManagerChecked: NSButton!
    @IBOutlet weak var whatevergreenChecked: NSButton!
    @IBOutlet weak var appleALCChecked: NSButton!
    @IBOutlet weak var intelMausiChecked: NSButton!
    @IBOutlet weak var smallTreeChecked: NSButton!
    @IBOutlet weak var atherosChecked: NSButton!
    @IBOutlet weak var realTekChecked: NSButton!
    @IBOutlet weak var usbInjectAllChecked: NSButton!
    @IBOutlet weak var xhciUnsupportedChecked: NSButton!
    @IBOutlet weak var airportBrcmChecked: NSButton!
    @IBOutlet weak var brcmPatchRamChecked: NSButton!
    @IBOutlet weak var brcmBluetoothInjectorChecked: NSButton!
    @IBOutlet weak var brcmFirmwareDataChecked: NSButton!
    @IBOutlet weak var brcmPatchRam3Checked: NSButton!
    @IBOutlet weak var fxXlncUSBChecked: NSButton!
    @IBOutlet weak var appleMCEReporterChecked: NSButton!
    @IBOutlet weak var openRuntimeChecked: NSButton!
    @IBOutlet weak var openUSBChecked: NSButton!
    @IBOutlet weak var nvmExpressChecked: NSButton!
    @IBOutlet weak var xhciChecked: NSButton!
    @IBOutlet weak var textfield: NSTextField!
    @IBOutlet weak var hfsPlusChecked: NSButton!
    @IBOutlet weak var snInput: NSTextField!
    @IBOutlet weak var mlbInput: NSTextField!
    @IBOutlet weak var smuuidInput: NSTextField!
    @IBOutlet weak var modelInput: NSTextField!
    @IBOutlet weak var wegLabel: NSTextField!
    @IBOutlet weak var wegBootargsTextfield: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateButton.isEnabled = false
    }
    
    @IBAction func systemTypeChecked(_ sender: NSButton) {
        generateButton.isEnabled = (sender.isEnabled == true)
    }
    
    @IBAction func whatevergreenClicked(_ sender: NSButton) {
        switch whatevergreenChecked.state {
        case .on:
            wegLabel.isHidden = (sender.isHidden == true)
            wegBootargsTextfield.isHidden = (sender.isHidden == true)
        case .off:
            wegLabel.isHidden = (sender.isHidden == false)
            wegBootargsTextfield.isHidden = (sender.isHidden == false)
        default:
            wegLabel.isHidden = (sender.isHidden == false)
            wegBootargsTextfield.isHidden = (sender.isHidden == false)
        }
        
    }
    
    
    func kextCopy (kextname: String, item: String, location: URL) {
        let bundle = Bundle.main
        let fm = FileManager.default
        let kextname = bundle.path(forResource: "\(item)", ofType: ".kext")
        let kextnameURL = URL(fileURLWithPath: kextname!)
        let kextnameDir = "\(item).kext"
        do {
            try fm.copyItem(at: kextnameURL, to: location.appendingPathComponent(kextnameDir))
        }
        catch {
        }
    }
    
    func driverCopy (drivername: String, item: String, location: URL) {
        let bundle = Bundle.main
        let fm = FileManager.default
        let drivername = bundle.path(forResource: "\(item)", ofType: ".efi")
        let drivernameURL = URL(fileURLWithPath: drivername!)
        let drivernameDir = "\(item).efi"
        do {
            try fm.copyItem(at: drivernameURL, to: location.appendingPathComponent(drivernameDir))
        }
        catch {
        }
    }
    
    func efiCopy (efiname: String, item: String, location: URL) {
        let bundle = Bundle.main
        let fm = FileManager.default
        let efiname = bundle.path(forResource: "\(item)", ofType: ".efi")
        let efinameURL = URL(fileURLWithPath: efiname!)
        let efinameDir = "\(item).efi"
        do {
            try fm.copyItem(at: efinameURL, to: location.appendingPathComponent(efinameDir))
        }
        catch {
        }
    }
    
    func saveAlert () {
        let fileManager = FileManager.default
        let home = fileManager.homeDirectoryForCurrentUser
        let kextPath = "Desktop/EFI"
        let kextUrl = home.appendingPathComponent(kextPath)
        let alert = NSAlert()
        alert.messageText = "EFI Generation Complete!"
        alert.informativeText = "The EFI has been generated and saved to \(kextUrl.path)"
        alert.beginSheetModal(for: self.view.window!, completionHandler: nil)
    }
    
    func existAlert () {
        let fileManager = FileManager.default
        let home = fileManager.homeDirectoryForCurrentUser
        let kextPath = "Desktop/EFI"
        let kextUrl = home.appendingPathComponent(kextPath)
        let alert = NSAlert()
        alert.alertStyle = .critical
        alert.addButton(withTitle: "Delete")
        alert.addButton(withTitle: "Cancel")
        alert.messageText = "EFI directory already exist!"
        alert.informativeText = "EFI directory already exist at \(kextUrl.path). Click the Delete button to delete the existing directory!"
        alert.beginSheetModal(for: self.view.window!, completionHandler: { (returnCode) -> Void in
            switch returnCode {
            case NSApplication.ModalResponse.alertFirstButtonReturn: do {
                try fileManager.removeItem(at: kextUrl)
                config.kernel.kAdd.removeAll()
                config.uefi.drivers.removeAll()
            }
            catch {
                print(error.localizedDescription)
                }
            default:
                return
            }
        })
    }
    
    func addKextToConfig (item: String) {
        let kext = kAdd(bundlePath: "\(item).kext", comment: "", enabled: true, executablePath: "Contents/MacOS/\(item)", maxKernel: "", minKernel: "", plistPath: "Contents/Info.plist")
        config.kernel.kAdd.append(kext)
    }
    
    @IBAction func generateClicked(_ sender: NSButton) {
        //TODO: Add Sylake-X/Cascade Lake-X/W, Comet Lake, Bulldozer/Jaguar AMD specific info
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
            config.platFormInfo.generic.systemProductName = "iMacPro1,1"
            config.nvram.add.addAppleBootVariableGuid.bootArgs = "npci=0x2000 keepsyms=1 debug=0x1000 -v "
        default:
            break
        }
        
        switch liluChecked.state {
        case .on:
            let liluAdd = kAdd(bundlePath: "Lilu.kext", comment: "", enabled: true, executablePath: "Contents/MacOS/Lilu", maxKernel: "", minKernel: "", plistPath: "Contents/Info.plist")
            config.kernel.kAdd.removeAll()
            config.kernel.kAdd.append(liluAdd)
        default:
            break
        }
        
        switch virtualSMCChecked.state {
        case .on:
            addKextToConfig(item: "VirtualSMC")
        default:
            break
        }
        
        switch smcProcessorChecked.state {
        case .on:
            addKextToConfig(item: "SMCProcessor")
        default:
            break
        }
        
        switch smcSuperIOChecked.state {
        case .on:
            addKextToConfig(item: "SMCSuperIO")
        default:
            break
        }
        
        switch smcLightSensorChecked.state {
        case .on:
            addKextToConfig(item: "SMCLightSensor")
        default:
            break
        }
        
        switch smcBatteryManagerChecked.state {
        case .on:
            addKextToConfig(item: "SMCBatteryManager")
        default:
            break
        }
        
        switch whatevergreenChecked.state {
        case .on:
            addKextToConfig(item: "WhateverGreen")
            config.nvram.add.addAppleBootVariableGuid.bootArgs.append(contentsOf: wegBootargsTextfield.stringValue)
        default:
            break
        }
        
        switch appleALCChecked.state {
        case .on:
            addKextToConfig(item: "AppleALC")
        default:
            break
        }
        
        switch smallTreeChecked.state {
        case .on:
            addKextToConfig(item: "SmallTreeIntel82576")
        default:
            break
        }
        
        switch atherosChecked.state {
        case .on:
            addKextToConfig(item: "AtherosE2200Ethernet")
        default:
            break
        }
        
        switch realTekChecked.state {
        case .on:
            addKextToConfig(item: "RealtekRTL8111")
        default:
            break
        }
        
        switch intelMausiChecked.state {
        case .on:
            addKextToConfig(item: "IntelMausi")
        default:
            break
        }
        
        switch usbInjectAllChecked.state {
        case .on:
            addKextToConfig(item: "USBInjectAll")
        default:
            break
        }
        
        switch airportBrcmChecked.state {
        case .on:
            addKextToConfig(item: "AirportBrcmFixup")
        default:
            break
        }
        
        switch fxXlncUSBChecked.state {
        case .on:
            addKextToConfig(item: "XLNCUSBFix")
        default:
            break
        }
        
        switch appleMCEReporterChecked.state {
        case .on:
            addKextToConfig(item: "AppleMCEReporterDisabler")
        default:
            break
        }
        
        switch openRuntimeChecked.state {
        case .on:
            config.uefi.drivers.append("OpenRuntime.efi")
        default:
            break
        }
        
        switch hfsPlusChecked.state {
        case .on:
            config.uefi.drivers.append("HfsPlus.efi")
        default:
            break
        }
        
        switch openUSBChecked.state {
        case .on:
            config.uefi.drivers.append("OpenUsbKbDxe.efi")
        default:
            break
        }
        
        switch nvmExpressChecked.state {
        case .on:
            config.uefi.drivers.append("NvmExpressDxe.efi")
        default:
            break
        }
        
        switch xhciChecked.state {
        case .on:
            config.uefi.drivers.append("XhciDxe.efi")
        default:
            break
        }
        
        let efidirName = "Desktop/EFI"
        let fm = FileManager.default
        let destDirURL = fm.homeDirectoryForCurrentUser
        let deskDirString: String = destDirURL.appendingPathComponent(efidirName).path
        if fm.fileExists(atPath: deskDirString) {
            existAlert()
        } else {
            do {
                try fm.createDirectory(at: destDirURL.appendingPathComponent(efidirName), withIntermediateDirectories: false, attributes: nil)
                let newdestDir = URL(fileURLWithPath: deskDirString)
                let ocBootDir = newdestDir.appendingPathComponent("BOOT")
                let ocDir = newdestDir.appendingPathComponent("OC")
                try fm.createDirectory(at: ocBootDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocDir, withIntermediateDirectories: false, attributes: nil)
                let ocACPIDir = ocDir.appendingPathComponent("ACPI")
                let ocBootstrapDir = ocDir.appendingPathComponent("Bootstrap")
                let ocDriversDir = ocDir.appendingPathComponent("Drivers")
                let ocKextsDir = ocDir.appendingPathComponent("Kexts")
                let ocResourcesDir = ocDir.appendingPathComponent("Resources")
                let ocToolsDir = ocDir.appendingPathComponent("Tools")
                try fm.createDirectory(at: ocACPIDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocBootstrapDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocDriversDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocKextsDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocResourcesDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocToolsDir, withIntermediateDirectories: false, attributes: nil)
                efiCopy(efiname: "opencore", item: "OpenCore", location: ocDir)
                efiCopy(efiname: "bootefi", item: "BOOTx64", location: ocBootDir)
                efiCopy(efiname: "bootstrap", item: "Bootstrap", location: ocBootstrapDir)
                config.misc.blessOverRide.removeAll()
                if (modelInput != nil) {
                    config.platFormInfo.generic.systemProductName = modelInput.stringValue
                }
                
                if (snInput != nil) {
                    config.platFormInfo.generic.systemSerialNumber = snInput.stringValue
                }
                
                if (mlbInput != nil) {
                    config.platFormInfo.generic.mlb = mlbInput.stringValue
                }
                
                if (smuuidInput != nil) {
                    config.platFormInfo.generic.systemUUID = smuuidInput.stringValue
                }
                
                if liluChecked.state == .on {
                    kextCopy(kextname: "lilu", item: "Lilu", location: ocKextsDir)
                }
                if virtualSMCChecked.state == .on {
                    kextCopy(kextname: "virtualsmc", item: "VirtualSMC", location: ocKextsDir)
                }
                if smcProcessorChecked.state == .on {
                    kextCopy(kextname: "smcprocessor", item: "SMCProcessor", location: ocKextsDir)
                }
                if smcSuperIOChecked.state == .on {
                    kextCopy(kextname: "smcSuperIO", item: "SMCSuperIO", location: ocKextsDir)
                }
                if smcLightSensorChecked.state == .on {
                    kextCopy(kextname: "smcLightSensor", item: "SMCLightSensor", location: ocKextsDir)
                }
                if smcBatteryManagerChecked.state == .on {
                    kextCopy(kextname: "SMCBatteryManager", item: "SMCBatteryManager", location: ocKextsDir)
                }
                if whatevergreenChecked.state == .on {
                    kextCopy(kextname: "whatevergreen", item: "WhateverGreen", location: ocKextsDir)
                }
                if appleALCChecked.state == .on {
                    kextCopy(kextname: "appleALC", item: "AppleALC", location: ocKextsDir)
                }
                if smallTreeChecked.state == .on {
                    kextCopy(kextname: "smallTree", item: "SmallTreeIntel82576", location: ocKextsDir)
                }
                if atherosChecked.state == .on {
                    kextCopy(kextname: "atheros", item: "AtherosE2200Ethernet", location: ocKextsDir)
                }
                if realTekChecked.state == .on {
                    kextCopy(kextname: "realTek", item: "RealtekRTL8111", location: ocKextsDir)
                }
                if intelMausiChecked.state == .on {
                    kextCopy(kextname: "IntelMausi", item: "IntelMausi", location: ocKextsDir)
                }
                if usbInjectAllChecked.state == .on {
                    kextCopy(kextname: "usbInjectAll", item: "USBInjectAll", location: ocKextsDir)
                }
                if airportBrcmChecked.state == .on {
                    kextCopy(kextname: "airportBrcm", item: "AirportBrcmFixup", location: ocKextsDir)
                }
                if fxXlncUSBChecked.state == .on {
                    kextCopy(kextname: "fxXlncUSB", item: "XLNCUSBFix", location: ocKextsDir)
                }
                if appleMCEReporterChecked.state == .on {
                    kextCopy(kextname: "appleMCEReporter", item: "AppleMCEReporterDisabler", location: ocKextsDir)
                }
                if openRuntimeChecked.state == .on {
                    driverCopy(drivername: "openRuntime", item: "OpenRuntime", location: ocDriversDir)
                }
                if hfsPlusChecked.state == .on {
                    driverCopy(drivername: "hfsPlus", item: "HfsPlus", location: ocDriversDir)
                }
                if openUSBChecked.state == .on {
                    driverCopy(drivername: "openUSB", item: "OpenUsbKbDxe", location: ocDriversDir)
                }
                if nvmExpressChecked.state == .on {
                    driverCopy(drivername: "nvmExpress", item: "NvmExpressDxe", location: ocDriversDir)
                }
                if xhciChecked.state == .on {
                    driverCopy(drivername: "xhci", item: "XhciDxe", location: ocDriversDir)
                }
                do {
                    let plistEncoder = PropertyListEncoder()
                    plistEncoder.outputFormat = .xml
                    let configFilePath =  ocDir.appendingPathComponent("config.plist")
                    let configToEncode = config
                    let data = try plistEncoder.encode(configToEncode)
                    try data.write(to: configFilePath)
                    config.uefi.drivers.removeAll()
                    config.kernel.kAdd.removeAll()
                    config.kernel.kPatch?.removeAll()
                    saveAlert()
                }
                catch {
                }
            }
            catch {
            }
        }
    }
}
