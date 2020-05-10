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
