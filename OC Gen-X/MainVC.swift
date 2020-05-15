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
    
    let ryzenAcpiQuirks = acpuQuirks(fadtEnableReset: false, normalizeHeader: false, rebaseRegions: false, resetHwSig: false, resetLogoStatus: false)
    let ryzenBooterQuirks = booterQuirks(avoidRuntimeDefrag: true, devirtualiseMmio: false, disableSingleUser: false, disableVariableWrite: false, discardHibernateMap: false, enableSafeModeSlide: true, enableWriteUnprotector: true, forceExitBootServices: false, protectMemoryRegion: false, protectSecureBoot: false, protectUefiServices: false, provideCustomSlide: true, rebuildAppleMemoryMap: true, setupVirtualMap: false, signalAppleOS: false, syncRuntimePermissions: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func checkedIvyBridge(_ sender: NSButton) {
        if ivyBridgeChecked.isHidden == (sender.state == .off) {
            haswellChecked.isHidden = (sender.state == .on)
            skylakeChecked.isHidden = (sender.state == .on)
            kabylakeChecked.isHidden = (sender.state == .on)
            haswellEChecked.isHidden = (sender.state == .on)
            broadwellEChecked.isHidden = (sender.state == .on)
            skylakeXChecked.isHidden = (sender.state == .on)
            ryzenChecked.isHidden = (sender.state == .on)
            coffeelakeChecked.isHidden = (sender.state == .on)
            bulldozerChecked.isHidden = (sender.state == .on)
            threadripperChecked.isHidden = (sender.state == .on)
        }
        haswellChecked.isHidden = (sender.state == .on)
        skylakeChecked.isHidden = (sender.state == .on)
        kabylakeChecked.isHidden = (sender.state == .on)
        haswellEChecked.isHidden = (sender.state == .on)
        broadwellEChecked.isHidden = (sender.state == .on)
        skylakeXChecked.isHidden = (sender.state == .on)
        ryzenChecked.isHidden = (sender.state == .on)
        coffeelakeChecked.isHidden = (sender.state == .on)
        bulldozerChecked.isHidden = (sender.state == .on)
        threadripperChecked.isHidden = (sender.state == .on)
    }
    @IBAction func checkedHaswell(_ sender: NSButton) {
        if haswellChecked.isHidden == (sender.state == .off) {
            ivyBridgeChecked.isHidden = (sender.state == .on)
            skylakeChecked.isHidden = (sender.state == .on)
            kabylakeChecked.isHidden = (sender.state == .on)
            haswellEChecked.isHidden = (sender.state == .on)
            broadwellEChecked.isHidden = (sender.state == .on)
            skylakeXChecked.isHidden = (sender.state == .on)
            ryzenChecked.isHidden = (sender.state == .on)
            coffeelakeChecked.isHidden = (sender.state == .on)
            bulldozerChecked.isHidden = (sender.state == .on)
            threadripperChecked.isHidden = (sender.state == .on)
        }
        ivyBridgeChecked.isHidden = (sender.state == .on)
        skylakeChecked.isHidden = (sender.state == .on)
        kabylakeChecked.isHidden = (sender.state == .on)
        haswellEChecked.isHidden = (sender.state == .on)
        broadwellEChecked.isHidden = (sender.state == .on)
        skylakeXChecked.isHidden = (sender.state == .on)
        ryzenChecked.isHidden = (sender.state == .on)
        coffeelakeChecked.isHidden = (sender.state == .on)
        bulldozerChecked.isHidden = (sender.state == .on)
        threadripperChecked.isHidden = (sender.state == .on)
    }
    @IBAction func checkedSkylake(_ sender: NSButton) {
        if skylakeChecked.isHidden == (sender.state == .off) {
            haswellChecked.isHidden = (sender.state == .on)
            ivyBridgeChecked.isHidden = (sender.state == .on)
            kabylakeChecked.isHidden = (sender.state == .on)
            haswellEChecked.isHidden = (sender.state == .on)
            broadwellEChecked.isHidden = (sender.state == .on)
            skylakeXChecked.isHidden = (sender.state == .on)
            ryzenChecked.isHidden = (sender.state == .on)
            coffeelakeChecked.isHidden = (sender.state == .on)
            bulldozerChecked.isHidden = (sender.state == .on)
            threadripperChecked.isHidden = (sender.state == .on)
        }
        haswellChecked.isHidden = (sender.state == .on)
        ivyBridgeChecked.isHidden = (sender.state == .on)
        kabylakeChecked.isHidden = (sender.state == .on)
        haswellEChecked.isHidden = (sender.state == .on)
        broadwellEChecked.isHidden = (sender.state == .on)
        skylakeXChecked.isHidden = (sender.state == .on)
        ryzenChecked.isHidden = (sender.state == .on)
        coffeelakeChecked.isHidden = (sender.state == .on)
        bulldozerChecked.isHidden = (sender.state == .on)
        threadripperChecked.isHidden = (sender.state == .on)
    }
    @IBAction func checkedKabylake(_ sender: NSButton) {
        if kabylakeChecked.isHidden == (sender.state == .off) {
            haswellChecked.isHidden = (sender.state == .on)
            skylakeChecked.isHidden = (sender.state == .on)
            ivyBridgeChecked.isHidden = (sender.state == .on)
            haswellEChecked.isHidden = (sender.state == .on)
            broadwellEChecked.isHidden = (sender.state == .on)
            skylakeXChecked.isHidden = (sender.state == .on)
            ryzenChecked.isHidden = (sender.state == .on)
            coffeelakeChecked.isHidden = (sender.state == .on)
            bulldozerChecked.isHidden = (sender.state == .on)
            threadripperChecked.isHidden = (sender.state == .on)
        }
        haswellChecked.isHidden = (sender.state == .on)
        skylakeChecked.isHidden = (sender.state == .on)
        ivyBridgeChecked.isHidden = (sender.state == .on)
        haswellEChecked.isHidden = (sender.state == .on)
        broadwellEChecked.isHidden = (sender.state == .on)
        skylakeXChecked.isHidden = (sender.state == .on)
        ryzenChecked.isHidden = (sender.state == .on)
        coffeelakeChecked.isHidden = (sender.state == .on)
        bulldozerChecked.isHidden = (sender.state == .on)
        threadripperChecked.isHidden = (sender.state == .on)
    }
    @IBAction func checkedHaswellE(_ sender: NSButton) {
        if haswellEChecked.isHidden == (sender.state == .off) {
            haswellChecked.isHidden = (sender.state == .on)
            skylakeChecked.isHidden = (sender.state == .on)
            kabylakeChecked.isHidden = (sender.state == .on)
            ivyBridgeChecked.isHidden = (sender.state == .on)
            broadwellEChecked.isHidden = (sender.state == .on)
            skylakeXChecked.isHidden = (sender.state == .on)
            ryzenChecked.isHidden = (sender.state == .on)
            coffeelakeChecked.isHidden = (sender.state == .on)
            bulldozerChecked.isHidden = (sender.state == .on)
            threadripperChecked.isHidden = (sender.state == .on)
        }
        haswellChecked.isHidden = (sender.state == .on)
        skylakeChecked.isHidden = (sender.state == .on)
        kabylakeChecked.isHidden = (sender.state == .on)
        ivyBridgeChecked.isHidden = (sender.state == .on)
        broadwellEChecked.isHidden = (sender.state == .on)
        skylakeXChecked.isHidden = (sender.state == .on)
        ryzenChecked.isHidden = (sender.state == .on)
        coffeelakeChecked.isHidden = (sender.state == .on)
        bulldozerChecked.isHidden = (sender.state == .on)
        threadripperChecked.isHidden = (sender.state == .on)
    }
    @IBAction func checkedBroadwellE(_ sender: NSButton) {
        if broadwellEChecked.isHidden == (sender.state == .off) {
            haswellChecked.isHidden = (sender.state == .on)
            skylakeChecked.isHidden = (sender.state == .on)
            kabylakeChecked.isHidden = (sender.state == .on)
            haswellEChecked.isHidden = (sender.state == .on)
            ivyBridgeChecked.isHidden = (sender.state == .on)
            skylakeXChecked.isHidden = (sender.state == .on)
            ryzenChecked.isHidden = (sender.state == .on)
            coffeelakeChecked.isHidden = (sender.state == .on)
            bulldozerChecked.isHidden = (sender.state == .on)
            threadripperChecked.isHidden = (sender.state == .on)
        }
        haswellChecked.isHidden = (sender.state == .on)
        skylakeChecked.isHidden = (sender.state == .on)
        kabylakeChecked.isHidden = (sender.state == .on)
        haswellEChecked.isHidden = (sender.state == .on)
        ivyBridgeChecked.isHidden = (sender.state == .on)
        skylakeXChecked.isHidden = (sender.state == .on)
        ryzenChecked.isHidden = (sender.state == .on)
        coffeelakeChecked.isHidden = (sender.state == .on)
        bulldozerChecked.isHidden = (sender.state == .on)
        threadripperChecked.isHidden = (sender.state == .on)
    }
    @IBAction func checkedSkylakeX(_ sender: NSButton) {
        if skylakeXChecked.isHidden == (sender.state == .off) {
            haswellChecked.isHidden = (sender.state == .on)
            skylakeChecked.isHidden = (sender.state == .on)
            kabylakeChecked.isHidden = (sender.state == .on)
            haswellEChecked.isHidden = (sender.state == .on)
            broadwellEChecked.isHidden = (sender.state == .on)
            ivyBridgeChecked.isHidden = (sender.state == .on)
            ryzenChecked.isHidden = (sender.state == .on)
            coffeelakeChecked.isHidden = (sender.state == .on)
            bulldozerChecked.isHidden = (sender.state == .on)
            threadripperChecked.isHidden = (sender.state == .on)
        }
        haswellChecked.isHidden = (sender.state == .on)
        skylakeChecked.isHidden = (sender.state == .on)
        kabylakeChecked.isHidden = (sender.state == .on)
        haswellEChecked.isHidden = (sender.state == .on)
        broadwellEChecked.isHidden = (sender.state == .on)
        ivyBridgeChecked.isHidden = (sender.state == .on)
        ryzenChecked.isHidden = (sender.state == .on)
        coffeelakeChecked.isHidden = (sender.state == .on)
        bulldozerChecked.isHidden = (sender.state == .on)
        threadripperChecked.isHidden = (sender.state == .on)
    }
    
    @IBAction func checkedRyzen(_ sender: NSButton) {
        if ryzenChecked.isHidden == (sender.state == .off) {
            haswellChecked.isHidden = (sender.state == .on)
            skylakeChecked.isHidden = (sender.state == .on)
            kabylakeChecked.isHidden = (sender.state == .on)
            haswellEChecked.isHidden = (sender.state == .on)
            broadwellEChecked.isHidden = (sender.state == .on)
            skylakeXChecked.isHidden = (sender.state == .on)
            ivyBridgeChecked.isHidden = (sender.state == .on)
            coffeelakeChecked.isHidden = (sender.state == .on)
            bulldozerChecked.isHidden = (sender.state == .on)
            threadripperChecked.isHidden = (sender.state == .on)
        }
        haswellChecked.isHidden = (sender.state == .on)
        skylakeChecked.isHidden = (sender.state == .on)
        kabylakeChecked.isHidden = (sender.state == .on)
        haswellEChecked.isHidden = (sender.state == .on)
        broadwellEChecked.isHidden = (sender.state == .on)
        skylakeXChecked.isHidden = (sender.state == .on)
        ivyBridgeChecked.isHidden = (sender.state == .on)
        coffeelakeChecked.isHidden = (sender.state == .on)
        bulldozerChecked.isHidden = (sender.state == .on)
        threadripperChecked.isHidden = (sender.state == .on)
    }
    @IBAction func checkedCoffeeLake(_ sender: NSButton) {
        if coffeelakeChecked.isHidden == (sender.state == .off) {
            haswellChecked.isHidden = (sender.state == .on)
            skylakeChecked.isHidden = (sender.state == .on)
            kabylakeChecked.isHidden = (sender.state == .on)
            haswellEChecked.isHidden = (sender.state == .on)
            broadwellEChecked.isHidden = (sender.state == .on)
            skylakeXChecked.isHidden = (sender.state == .on)
            ryzenChecked.isHidden = (sender.state == .on)
            ivyBridgeChecked.isHidden = (sender.state == .on)
            bulldozerChecked.isHidden = (sender.state == .on)
            threadripperChecked.isHidden = (sender.state == .on)
        }
        haswellChecked.isHidden = (sender.state == .on)
        skylakeChecked.isHidden = (sender.state == .on)
        kabylakeChecked.isHidden = (sender.state == .on)
        haswellEChecked.isHidden = (sender.state == .on)
        broadwellEChecked.isHidden = (sender.state == .on)
        skylakeXChecked.isHidden = (sender.state == .on)
        ryzenChecked.isHidden = (sender.state == .on)
        ivyBridgeChecked.isHidden = (sender.state == .on)
        bulldozerChecked.isHidden = (sender.state == .on)
        threadripperChecked.isHidden = (sender.state == .on)
    }
    @IBAction func checkedBulldozer(_ sender: NSButton) {
        if bulldozerChecked.isHidden == (sender.state == .off) {
            haswellChecked.isHidden = (sender.state == .on)
            skylakeChecked.isHidden = (sender.state == .on)
            kabylakeChecked.isHidden = (sender.state == .on)
            haswellEChecked.isHidden = (sender.state == .on)
            broadwellEChecked.isHidden = (sender.state == .on)
            skylakeXChecked.isHidden = (sender.state == .on)
            ryzenChecked.isHidden = (sender.state == .on)
            coffeelakeChecked.isHidden = (sender.state == .on)
            ivyBridgeChecked.isHidden = (sender.state == .on)
            threadripperChecked.isHidden = (sender.state == .on)
        }
        haswellChecked.isHidden = (sender.state == .on)
        skylakeChecked.isHidden = (sender.state == .on)
        kabylakeChecked.isHidden = (sender.state == .on)
        haswellEChecked.isHidden = (sender.state == .on)
        broadwellEChecked.isHidden = (sender.state == .on)
        skylakeXChecked.isHidden = (sender.state == .on)
        ryzenChecked.isHidden = (sender.state == .on)
        coffeelakeChecked.isHidden = (sender.state == .on)
        ivyBridgeChecked.isHidden = (sender.state == .on)
        threadripperChecked.isHidden = (sender.state == .on)
    }
    @IBAction func checkedThreadripper(_ sender: NSButton) {
        if threadripperChecked.isHidden == (sender.state == .off) {
            haswellChecked.isHidden = (sender.state == .on)
            skylakeChecked.isHidden = (sender.state == .on)
            kabylakeChecked.isHidden = (sender.state == .on)
            haswellEChecked.isHidden = (sender.state == .on)
            broadwellEChecked.isHidden = (sender.state == .on)
            skylakeXChecked.isHidden = (sender.state == .on)
            ryzenChecked.isHidden = (sender.state == .on)
            coffeelakeChecked.isHidden = (sender.state == .on)
            bulldozerChecked.isHidden = (sender.state == .on)
            ivyBridgeChecked.isHidden = (sender.state == .on)
        }
        haswellChecked.isHidden = (sender.state == .on)
        skylakeChecked.isHidden = (sender.state == .on)
        kabylakeChecked.isHidden = (sender.state == .on)
        haswellEChecked.isHidden = (sender.state == .on)
        broadwellEChecked.isHidden = (sender.state == .on)
        skylakeXChecked.isHidden = (sender.state == .on)
        ryzenChecked.isHidden = (sender.state == .on)
        coffeelakeChecked.isHidden = (sender.state == .on)
        bulldozerChecked.isHidden = (sender.state == .on)
        ivyBridgeChecked.isHidden = (sender.state == .on)
    }
    
    @IBAction func generateClicked(_ sender: Any) {
        let ocFileURL = Bundle.main.url(forResource: "OpenCore", withExtension: "efi")!
        let fm = FileManager.default
        let efiDirectory = fm.urls(for: .desktopDirectory, in: .userDomainMask).first!
        let efiDirectoryName = "EFI"
        let bootDirectoryName = "BOOT"
        let ocDirectoryName = "OC"
        let acpiDirectoryName = "ACPI"
        let driversDirectoryName = "Drivers"
        let kextDirectoryName = "Kexts"
        let resourcesDirectoryName = "Resources"
        let toolsDirectoryName = "Tools"
        let ocName = "OpenCore"
        let efiPath = efiDirectory.appendingPathComponent("\(efiDirectoryName)")
        let bootPath = efiPath.appendingPathComponent("\(bootDirectoryName)")
        let ocPath = efiPath.appendingPathComponent("\(ocDirectoryName)")
        let acpiPath = ocPath.appendingPathComponent("\(acpiDirectoryName)")
        let driversPath = ocPath.appendingPathComponent("\(driversDirectoryName)")
        let kextsPath = ocPath.appendingPathComponent("\(kextDirectoryName)")
        let resourcesPath = ocPath.appendingPathComponent("\(resourcesDirectoryName)")
        let toolsPath = ocPath.appendingPathComponent("\(toolsDirectoryName)")
        let ocFilePath = ocPath.appendingPathComponent("\(ocName)").appendingPathExtension("efi")
        do {
            try fm.createDirectory(atPath: bootPath.path, withIntermediateDirectories: true, attributes: nil)
            try fm.createDirectory(atPath: ocPath.path, withIntermediateDirectories: true, attributes: nil)
            try fm.createDirectory(atPath: acpiPath.path, withIntermediateDirectories: true, attributes: nil)
            try fm.createDirectory(atPath: driversPath.path, withIntermediateDirectories: true, attributes: nil)
            try fm.createDirectory(atPath: kextsPath.path, withIntermediateDirectories: true, attributes: nil)
            try fm.createDirectory(atPath: resourcesPath.path, withIntermediateDirectories: true, attributes: nil)
            try fm.createDirectory(atPath: toolsPath.path, withIntermediateDirectories: true, attributes: nil)
        }
        catch {
            print(error.localizedDescription)
        }
        do {
            try fm.copyItem(at: ocFileURL, to: ocFilePath)
        }
        catch {
            print("Unable to copy file")
        }
    }
}
