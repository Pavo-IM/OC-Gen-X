import Cocoa

class MainVC: NSViewController {
    
    @IBOutlet weak var generateButton: NSButton!
    @IBOutlet weak var ivyBridgeChecked: NSButton!
    @IBOutlet weak var haswellChecked: NSButton!
    @IBOutlet weak var skylakeChecked: NSButton!
    @IBOutlet weak var kabylakeChecked: NSButton!
    @IBOutlet weak var haswellEChecked: NSButton!
    @IBOutlet weak var broadwellEChecked: NSButton!
    @IBOutlet weak var ryzenChecked: NSButton!
    @IBOutlet weak var coffeelakeChecked: NSButton!
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
    @IBOutlet weak var airportBrcmChecked: NSButton!
    @IBOutlet weak var smbiosList: NSPopUpButton!
    @IBOutlet weak var appleMCEReporterChecked: NSButton!
    @IBOutlet weak var openRuntimeChecked: NSButton!
    @IBOutlet weak var smbiosImage: NSImageView!
    @IBOutlet weak var amdImage: NSImageView!
    @IBOutlet weak var amdGPUList: NSPopUpButton!
    @IBOutlet weak var nvidiaImage: NSImageView!
    @IBOutlet weak var openUSBChecked: NSButton!
    @IBOutlet weak var nvmExpressChecked: NSButton!
    @IBOutlet weak var nvidiaGPUList: NSPopUpButton!
    @IBOutlet weak var amdGPUChecked: NSButton!
    @IBOutlet weak var nvidiaGPUChecked: NSButton!
    @IBOutlet weak var xhciChecked: NSButton!
    @IBOutlet weak var openCanopyChecked: NSButton!
    @IBOutlet weak var textfield: HyperlinkTextField!
    @IBOutlet weak var hfsPlusChecked: NSButton!
    @IBOutlet weak var snInput: NSTextField!
    @IBOutlet weak var mlbInput: NSTextField!
    @IBOutlet weak var smuuidInput: NSTextField!
    @IBOutlet weak var wegLabel: NSTextField!
    @IBOutlet weak var sandyBridgeChecked: NSButton!
    @IBOutlet weak var wegBootargsTextfield: NSTextField!
    @IBOutlet weak var appleALCBootargs: NSTextField!
    @IBOutlet weak var appleALCInputfield: NSTextField!
    @IBOutlet weak var bootargsLabel: NSTextField!
    @IBOutlet weak var bootargsInputfield: NSTextField!
    @IBOutlet weak var agpmVerticalLine: NSBox!
    @IBOutlet weak var lucyRTLChecked: NSButton!
    @IBOutlet weak var brcmPatchRam3Checked: NSButton!
    @IBOutlet weak var agpmChecked: NSButton!
    @IBOutlet weak var brcmPatchRam2Checked: NSButton!
    @IBOutlet weak var brcmBtInjectorChecked: NSButton!
    @IBOutlet weak var brcmFirmwareDataChecked: NSButton!
    @IBOutlet weak var gpuTextfield: NSTextField!
    @IBOutlet weak var cometLakeChecked: NSButton!
    @IBOutlet weak var casecadeChecked: NSButton!
    @IBOutlet weak var smbiosTextfield: NSTextField!
    @IBOutlet weak var proxintoshChecked: NSButton!
    @IBOutlet weak var ivyBridgeEChecked: NSButton!
    @IBOutlet weak var threadripperChecked: NSButton!
    @IBOutlet weak var modelInput: NSPopUpButton!
    @IBOutlet weak var romInput: NSTextField!
    var ryzenPatches = [kPatch]()
    var threadripperPatches = [kPatch]()
    var config = Root(
        acpi: acpi(add: [acpiAdd()], delete: [acpiDelete()], patch: [acpiPatch()], quirks: acpuQuirks()),
        
        booter: booter(mmioWhitelist: [mmioWhitelist()], patch: [patch()], quirks: booterQuirks()),
        
        deviceProperties: deviceProperties(add: dpAdd(), delete: dpDelete()),
        
        kernel: kernel(kAdd: [kAdd()], kBlock: [kBlock()], emulate: emulate(), force: [force()], kPatch: [kPatch()], kQuirks: kQuirks(), scheme: scheme()),
        
        misc: misc(blessOverRide: [blessOverRide()], boot: boot(), debug: debug(), entries: [entries()], security: security(), tools: [tools()]),
        
        nvram: nvram(add: nAdd(addAppleVendorVariableGuid: addAppleVendorVariableGuid(), addAppleVendorGuid: addAppleVendorGuid(), addAppleBootVariableGuid: addAppleBootVariableGuid()), delete: nDelete(), legacySchema: legacySchema()),
        
        platFormInfo: platFormInfo(generic: generic(), memory: memory(devices: [devices()])),
        
        uefi: uefi(apfs: apfs(), appleInput: appleInput(), audio: audio(), input: input(), output: output(), protocols: protocols(), quirks: uQuirks(), reservedMemory: [reservedMemory()])
    )
    
    var agpmSmbiosList = [
        "MacPro4,1",
        "MacPro5,1",
        "MacPro6,1",
        "MacPro7,1",
        "iMac10,1",
        "iMac11,1",
        "iMac11,2",
        "iMac11,3",
        "iMac12,1",
        "iMac12,2",
        "iMac13,1",
        "iMac13,2",
        "iMac13,3",
        "iMac14,1",
        "iMac14,2",
        "iMac14,3",
        "iMac14,4",
        "iMac15,1",
        "iMac16,1",
        "iMac16,2",
        "iMac17,1",
        "iMac18,1",
        "iMac18,2",
        "iMac18,3",
        "iMac19,1",
        "iMac19,2",
        "iMac20,1",
        "iMac20,2",
        "iMacPro1,1",
    ]
    
    var AMDDictionary = [
        "RX 5600XT": "Vendor1002Device731F",
        "RX 5500XT": "Vendor1002Device7340",
        "Radeon VII": "Vendor1002Device66af",
        "R9 270": "Vendor1002Device6811",
        "R9 270X": "Vendor1002Device6810",
        "R9 280": "Vendor1002Device679a",
        "R9 280X": "Vendor1002Device6798",
        "R9 295 X2": "Vendor1002Device67b9",
        "R9 380": "Vendor1002Device6939",
        "R9 380X": "Vendor1002Device6938",
        "R9 290": "Vendor1002Device67b1",
        "R9 390": "Vendor1002Device67b1",
        "R9 290X": "Vendor1002Device67b0",
        "R9 390X": "Vendor1002Device67b0",
        "R9 Fury": "Vendor1002Device7300",
        "RX 460": "Vendor1002Device67ef",
        "RX 550": "Vendor1002Device699f",
        "RX 560": "Vendor1002Device67ff",
        "RX 470": "Vendor1002Device67df",
        "RX 480": "Vendor1002Device67df",
        "RX 570": "Vendor1002Device67df",
        "RX 580": "Vendor1002Device67df",
        "RX 590": "Vendor1002Device67df",
        "Vega 56": "Vendor1002Device687f",
        "Vega 64": "Vendor1002Device687f",
        "Vega Frontier": "Vendor1002Device6863",
        "Pro Duo": "Vendor1002Device67c4",
        "W 7100": "Vendor1002Device692b",
        "W 9100": "Vendor1002Device67a0",
        "RX 5700XT": "Vendor1002Device731f"
    ]
    
    var NvidiaDictionary = [
        "GT 710": "Vendor10deDevice128b",
        "GT 730": "Vendor10deDevice1287",
        "GTX 650": "Vendor10deDevice0fc6",
        "GTX 650 Ti": "Vendor10deDevice11c6",
        "GTX 650 TI Boost": "Vendor10deDevice11c2",
        "GTX 760": "Vendor10deDevice1187",
        "GTX 760 Ti": "Vendor10deDevice1189",
        "GTX 770": "Vendor10deDevice1184",
        "GTX 780": "Vendor10deDevice1004",
        "GTX 780 Ti": "Vendor10deDevice100a",
        "GTX 950": "Vendor10deDevice1402",
        "GTX 960": "Vendor10deDevice1401",
        "GTX 970": "Vendor10deDevice13c2",
        "GTX 980": "Vendor10deDevice13c0",
        "GTX 980 Ti": "Vendor10deDevice17c8",
        "GTX 1050": "Vendor10deDevice1c81",
        "GTX 1050 Ti": "Vendor10deDevice1c82",
        "GTX 1060": "Vendor10deDevice1c02",
        "GTX 1070": "Vendor10deDevice1b81",
        "GTX 1070 Ti": "Vendor10deDevice1b82",
        "GTX 1080": "Vendor10deDevice1b80",
        "GTX 1080 Ti": "Vendor10deDevice1b06",
        "GTX Titan": "Vendor10deDevice1005",
        "Titan V": "Vendor10deDevice1d81",
        "Titan X": "Vendor10deDevice1b00",
        "Titan XP": "Vendor10deDevice1b02",
        "GTX Titan Black": "Vendor10deDevice100c"
    ]
    
    let getAGPMFilePath = "/System/Library/Extensions/AppleGraphicsPowerManagement.kext/Contents/Info.plist"
    let bundleID = "com.apple.driver.AGPMInjector"
    let bundleName = "AGPMInjector"
    let bundleShortVersionName = Bundle.main.infoDictionary?["CFBundleShortVersionString"]
    let bundleSig = "????"
    let AgdcEnabled = 1
    let controlID = 17
    let maxPState = 15
    let miniPState = 0
    let setID = -1
    let plistEncoder = PropertyListEncoder()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateButton.isEnabled = false
        applyDesktopGuideHyperlink()
        smbiosImage.isHidden = true
        smbiosList.isHidden = true
        amdImage.isHidden = true
        amdGPUList.isHidden = true
        smbiosTextfield.isHidden = true
        agpmVerticalLine.isHidden = true
        nvidiaImage.isHidden = true
        nvidiaGPUList.isHidden = true
        nvidiaGPUChecked.isHidden = true
        amdGPUChecked.isHidden = true
        gpuTextfield.isHidden = true
        let sortedArray = agpmSmbiosList.sorted()
        let sortedAMDDictionary = AMDDictionary.keys.sorted()
        let sortedNvidiaDictionary = NvidiaDictionary.keys.sorted()
        amdGPUList.removeAllItems()
        amdGPUList.addItems(withTitles: sortedAMDDictionary)
        amdGPUList.selectItem(at: 0)
        nvidiaGPUList.removeAllItems()
        nvidiaGPUList.addItems(withTitles: sortedNvidiaDictionary)
        nvidiaGPUList.selectItem(at: 0)
        smbiosList.removeAllItems()
        smbiosList.addItems(withTitles: sortedArray)
        smbiosList.selectItem(at: 0)
        modelInput.addItems(withTitles: agpmSmbiosList)
        let macSerial = Bundle.main.path(forAuxiliaryExecutable: "macserial")!
        guard let readSystem = shell(launchPath: macSerial, arguments: ["-s"]) else {
            print("cant read Serial")
            return
        }
        let readSystemItems = readSystem.components(separatedBy: "\n")
        let systemModel = readSystemItems[0].components(separatedBy: " ")
        let seperateSystemSn = readSystemItems[5].components(separatedBy: " ")
        let systemSmUUID = readSystemItems[14].components(separatedBy: " ")
        let systemMLB = readSystemItems[16].components(separatedBy: " ")
        guard let getrom = shellPipe(launchPath1: "/usr/sbin/networksetup",
                                     arguments1: ["-listallhardwareports"],
                                     launchPath2: "/usr/bin/grep",
                                     arguments2: ["Ethernet", "-A", "3"],
                                     launchPath3: "/usr/bin/awk",
                                     arguments3: ["/Ethernet Address:/{print $3}"]) else {
            print("cant read rom")
            return
        }
        let getromItems = getrom.components(separatedBy: "\n")
        snInput.stringValue = seperateSystemSn.last!
        smuuidInput.stringValue = systemSmUUID.last!
        mlbInput.stringValue = systemMLB.last!
        
        if systemModel.last != "" {
            modelInput.title = systemModel.last!
            smbiosList.title = systemModel.last!
        }
        
        if getromItems.count >= 1 {
            romInput.placeholderString = getromItems[1]
        } else {
            romInput.placeholderString = getromItems[0]
        }
        
        switch romInput.placeholderString {
        case "":
            romInput.placeholderString = "00:00:00:00:00:00"
            romInput.stringValue = romInput.placeholderString!
        case " ":
            romInput.placeholderString = "00:00:00:00:00:00"
            romInput.stringValue = romInput.placeholderString!
        case "N/A":
            romInput.placeholderString = "00:00:00:00:00:00"
            romInput.stringValue = romInput.placeholderString!
        default:
            romInput.stringValue = romInput.placeholderString!
        }
    }
    
    private func applyDesktopGuideHyperlink() {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        let attributes: [NSAttributedString.Key: Any] = [.paragraphStyle : paragraphStyle, .font: textfield.font ?? NSFont.systemFontSize]
        
        guard let url = NSURL(string: "https://dortania.github.io/OpenCore-Install-Guide/") else { return }
        textfield.setHyperlinkWithTitle(title: "https://dortania.github.io/OpenCore-Install-Guide/", URL: url, additionalAttributes: attributes)
    }
    
    @IBAction func systemTypeChecked(_ sender: NSButton) {
        generateButton.isEnabled = (sender.isEnabled == true)
    }
    
    @IBAction func brcmPatchRam3Clicked(_ sender: NSButton) {
        switch brcmPatchRam3Checked.state {
        case .on:
            brcmBtInjectorChecked.state = NSControl.StateValue.on
            brcmPatchRam2Checked.isEnabled = (sender.isEnabled == false)
        default:
            brcmBtInjectorChecked.state = NSControl.StateValue.off
            brcmPatchRam2Checked.isEnabled = (sender.isEnabled == true)
        }
    }
    
    @IBAction func brcmpatchram2Clicked(_ sender: NSButton) {
        switch brcmPatchRam2Checked.state {
        case .on:
            brcmPatchRam3Checked.isEnabled = (sender.isEnabled == false)
            brcmPatchRam3Checked.state = NSControl.StateValue.off
        default:
            brcmPatchRam3Checked.isEnabled = (sender.isEnabled == true)
        }
    }
    
    
    @IBAction func appleALCClicked(_ sender: NSButton) {
        switch appleALCChecked.state {
        case .on:
            appleALCBootargs.isHidden = (sender.isHidden == true)
            appleALCInputfield.isHidden = (sender.isHidden == true)
        default:
            appleALCBootargs.isHidden = (sender.isHidden == false)
            appleALCInputfield.isHidden = (sender.isHidden == false)
        }
    }
    
    @IBAction func whatevergreenClicked(_ sender: NSButton) {
        switch whatevergreenChecked.state {
        case .on:
            wegLabel.isHidden = (sender.isHidden == true)
            wegBootargsTextfield.isHidden = (sender.isHidden == true)
        default:
            wegLabel.isHidden = (sender.isHidden == false)
            wegBootargsTextfield.isHidden = (sender.isHidden == false)
        }
        
    }
    
    @IBAction func agpmInjectorClicked(_ sender: NSButton) {
        switch agpmChecked.state {
        case .on:
            smbiosImage.isHidden = (sender.isHidden == true)
            smbiosList.isHidden = (sender.isHidden == true)
            amdImage.isHidden = (sender.isHidden == true)
            smbiosTextfield.isHidden = (sender.isHidden == true)
            agpmVerticalLine.isHidden = (sender.isHidden == true)
            nvidiaImage.isHidden = (sender.isHidden == true)
            nvidiaGPUChecked.isHidden = (sender.isHidden == true)
            gpuTextfield.isHidden = (sender.isHidden == true)
            amdGPUChecked.isHidden = (sender.isHidden == true)
        default:
            smbiosImage.isHidden = (sender.isHidden == false)
            smbiosList.isHidden = (sender.isHidden == false)
            amdImage.isHidden = (sender.isHidden == false)
            smbiosTextfield.isHidden = (sender.isHidden == false)
            agpmVerticalLine.isHidden = (sender.isHidden == false)
            nvidiaImage.isHidden = (sender.isHidden == false)
            nvidiaGPUChecked.isHidden = (sender.isHidden == false)
            amdGPUChecked.isHidden = (sender.isHidden == false)
            gpuTextfield.isHidden = (sender.isHidden == false)
        }
    }
    
    @IBAction func amdChecked(_ sender: NSButton) {
        switch amdGPUChecked.state {
        case .on:
            nvidiaImage.isHidden = (sender.isHidden == false)
            amdGPUList.isHidden = (sender.isHidden == true)
            nvidiaGPUChecked.isHidden = (sender.isHidden == false)
        default:
            nvidiaImage.isHidden = (sender.isHidden == true)
            amdGPUList.isHidden = (sender.isHidden == false)
            nvidiaGPUChecked.isHidden = (sender.isHidden == true)
        }
    }
    
    @IBAction func nvidiaChecked(_ sender: NSButton) {
        switch nvidiaGPUChecked.state {
        case .on:
            amdImage.isHidden = (sender.isHidden == false)
            nvidiaGPUList.isHidden = (sender.isHidden == true)
            amdGPUChecked.isHidden = (sender.isHidden == false)
        default:
            amdImage.isHidden = (sender.isHidden == true)
            nvidiaGPUList.isHidden = (sender.isHidden == false)
            amdGPUChecked.isHidden = (sender.isHidden == true)
        }
    }
    
    @IBAction func smbiosSelected(_ sender: Any) {
        let userSelected = smbiosList.titleOfSelectedItem
        switch userSelected {
        case "iMacPro1,1":
            smbiosImage.image = NSImage(named: "imacpro.png")
        case "MacPro4,1", "MacPro5,1":
            smbiosImage.image = NSImage(named: "macpro.png")
        case "iMac19,1", "iMac11,3", "iMac18,1", "iMac17,1", "iMac16,1", "iMac15,1", "iMac14,1", "iMac13,1", "iMac12,1", "iMac11,1", "iMac10,1", "iMac19,2", "iMac18,2",
             "iMac18,3", "iMac16,2", "iMac15,2", "iMac14,2", "iMac14,3", "iMac14,4", "iMac13,2", "iMac13,3", "iMac12,2", "iMac11,2", "iMac20,1", "iMac20,2":
            smbiosImage.image = NSImage(named: "imac.png")
        case "MacPro6,1":
            smbiosImage.image = NSImage(named: "macpro61.png")
        case "MacPro7,1":
            smbiosImage.image = NSImage(named: "macpro71.png")
        default:
            smbiosImage.image = NSImage(named: "")
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
            }
            catch {
                print(error.localizedDescription)
            }
            default:
                return
            }
        })
    }
    
    func shell(launchPath: String, arguments: [String]) -> String?
    {
        let task = Process()
        task.launchPath = launchPath
        task.arguments = arguments
        
        let pipe = Pipe()
        task.standardOutput = pipe
        task.launch()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: String.Encoding.utf8)
        
        return output
    }
    
    func shellPipe(launchPath1: String, arguments1: [String], launchPath2: String, arguments2: [String], launchPath3: String, arguments3: [String]) -> String?
    {
        let pipe1 = Pipe()
        let pipe2 = Pipe()
        let pipe3 = Pipe()
        
        let task1 = Process()
        task1.launchPath = launchPath1
        task1.arguments = arguments1
        task1.standardOutput = pipe1
        
        let task2 = Process()
        task2.launchPath = launchPath2
        task2.arguments = arguments2
        task2.standardInput = pipe1
        task2.standardOutput = pipe2
        
        let task3 = Process()
        task3.launchPath = launchPath3
        task3.arguments = arguments3
        task3.standardInput = pipe2
        task3.standardOutput = pipe3
        
        task1.launch()
        task2.launch()
        task3.launch()
        task1.waitUntilExit()
        task2.waitUntilExit()
        task3.waitUntilExit()
        
        let data = pipe3.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)
        
        return output
    }
    
    func addKextToConfig (item: String) {
        let kext = kAdd(arch: "x86_64", bundlePath: "\(item).kext", comment: "", enabled: true, executablePath: "Contents/MacOS/\(item)", maxKernel: "", minKernel: "", plistPath: "Contents/Info.plist")
        config.kernel.kAdd.append(kext)
    }
    
    func addKextInjectorToConfig (item: String) {
        let kext = kAdd(arch: "x86_64", bundlePath: "\(item).kext", comment: "", enabled: true, executablePath: "", maxKernel: "", minKernel: "", plistPath: "Contents/Info.plist")
        config.kernel.kAdd.append(kext)
    }
    
    func addKextInjectorPluginToConfig (pluginfor: String, injector: String) {
        let kext = kAdd(arch: "x86_64", bundlePath: "\(pluginfor).kext/Contents/PlugIns/\(injector).kext", comment: "", enabled: true, executablePath: "", maxKernel: "", minKernel: "", plistPath: "Contents/Info.plist")
        config.kernel.kAdd.append(kext)
    }
    
    func addKextPluginToConfig (pluginfor: String, pluginName: String) {
        let kext = kAdd(arch: "x86_64", bundlePath: "\(pluginfor).kext/Contents/PlugIns/\(pluginName).kext", comment: "", enabled: true, executablePath: "Contents/MacOS/\(pluginName)", maxKernel: "", minKernel: "", plistPath: "Contents/Info.plist")
        config.kernel.kAdd.append(kext)
    }
    
    @IBAction func serialRefresh(_ sender: NSButton) {
        let macSerial = Bundle.main.path(forAuxiliaryExecutable: "macserial")!
        let modelName = modelInput.titleOfSelectedItem!
        
        guard let sn = shell(launchPath: macSerial, arguments: ["-m", "\(modelName)","-n","1"]) else { return }
        let snItems = sn.components(separatedBy: " |")
        
        if let lastItem = snItems.last {
            snInput.stringValue =  lastItem
            smuuidInput.stringValue = lastItem

        }
        
        snInput.placeholderString = snItems[0]
        snInput.stringValue = snItems[0]

        guard let mlb = shell(launchPath: macSerial, arguments: ["--mlb", "\(snItems[0])"]) else {
            print("cant read mld")
            return
        }
        let mlbItems = mlb.components(separatedBy: "\n")

        if let firstItem = mlbItems.first {
            mlbInput.stringValue = firstItem
        }
        
        mlbInput.placeholderString = mlbItems[0]
        mlbInput.stringValue = mlbItems[0]
        
        guard let uuid = shell(launchPath: "/bin/bash", arguments: ["-c", "uuidgen"]) else {
            print("cant read uuid")
            return
        }
        let uuidItems = uuid.components(separatedBy: "\n")
        
        smuuidInput.placeholderString = uuidItems[0]
        smuuidInput.stringValue = uuidItems[0]
    }
    
    @IBAction func generateClicked(_ sender: NSButton) {
        //TODO: Add UI element with dropdown menu to mount ESP of selected drive.
        //TODO: Add methods to copy items from Bundle to ESP.
        config.acpi.add.removeAll()
        config.acpi.delete.removeAll()
        config.acpi.patch.removeAll()
        config.booter.mmioWhitelist.removeAll()
        config.booter.patch.removeAll()
        config.kernel.kAdd.removeAll()
        config.kernel.kBlock.removeAll()
        config.kernel.force.removeAll()
        config.kernel.kPatch.removeAll()
        config.misc.blessOverRide.removeAll()
        config.misc.entries.removeAll()
        config.misc.tools.removeAll()
        config.uefi.drivers.removeAll()
        config.uefi.reservedMemory.removeAll()
        
        switch ivyBridgeChecked.state {
        case .on:
            config.booter.quirks.avoidRuntimeDefrag = true
            config.booter.quirks.enableWriteUnprotector = true
            config.booter.quirks.setupVirtualMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = false
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch haswellChecked.state {
        case .on:
            config.booter.quirks.avoidRuntimeDefrag = true
            config.booter.quirks.enableWriteUnprotector = true
            config.booter.quirks.setupVirtualMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
            config.kernel.kQuirks.lapicKernelPanic = false
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch sandyBridgeChecked.state {
        case .on:
            config.acpi.delete.append(deleteCPUPMACPI)
            config.acpi.delete.append(deleteCpu0Ist)
            config.booter.quirks.avoidRuntimeDefrag = true
            config.booter.quirks.enableSafeModeSlide = true
            config.booter.quirks.enableWriteUnprotector = true
            config.booter.quirks.setupVirtualMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.disableIoMapper = true
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
        default:
            break
        }
        
        switch kabylakeChecked.state {
        case .on:
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
        default:
            break
        }
        
        switch coffeelakeChecked.state {
        case .on:
            config.booter.quirks.devirtualiseMmio = true
            config.booter.quirks.enableWriteUnprotector = false
            config.booter.quirks.protectUefiServices = true
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
        default:
            break
        }
        
        switch cometLakeChecked.state {
        case .on:
            config.booter.quirks.devirtualiseMmio = true
            config.booter.quirks.enableWriteUnprotector = false
            config.booter.quirks.protectUefiServices = true
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.setupVirtualMap = false
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
        default:
            break
        }
        
        switch haswellEChecked.state {
        case .on:
            config.booter.quirks.devirtualiseMmio = true
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
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch broadwellEChecked.state {
        case .on:
            config.booter.quirks.devirtualiseMmio = true
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
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch ivyBridgeEChecked.state {
        case .on:
            config.booter.quirks.avoidRuntimeDefrag = true
            config.booter.quirks.enableWriteUnprotector = true
            config.booter.quirks.setupVirtualMap = true
            config.kernel.kQuirks.appleCpuPmCfgLock = true
            config.kernel.kQuirks.appleXcpmCfgLock = true
            config.kernel.kQuirks.appleXcpmExtraMsrs = true
            config.kernel.kQuirks.disableIoMapper = true
            config.uefi.quirks.ignoreInvalidFlexRatio = true
        default:
            break
        }
        
        switch casecadeChecked.state {
        case .on:
            config.booter.quirks.devirtualiseMmio = true
            config.booter.quirks.enableWriteUnprotector = false
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
        default:
            break
        }
        
        switch ryzenChecked.state {
        case .on:
            let patchesPlistURL = Bundle.main.url(forResource: "ryzen", withExtension: "plist")
            let plistDecoder = PropertyListDecoder()
            let data = try! Data(contentsOf: patchesPlistURL!)
            let patchesData = try! plistDecoder.decode(Root.self, from: data)
            config.booter.quirks.enableWriteUnprotector = false
            config.booter.quirks.enableSafeModeSlide = true
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.kPatch.append(contentsOf: patchesData.kernel.kPatch)
            config.kernel.kQuirks.panicNoKextDump = true
            config.kernel.kQuirks.powerTimeoutKernelPanic = true
            config.kernel.kQuirks.xhciPortLimit = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
            config.nvram.add.addAppleBootVariableGuid.bootArgs.append(" npci=0x2000")
        default:
            break
        }
        
        switch proxintoshChecked.state {
        case .on:
            let patchesPlistURL = Bundle.main.url(forResource: "proxmox", withExtension: "plist")
            let plistDecoder = PropertyListDecoder()
            let data = try! Data(contentsOf: patchesPlistURL!)
            let patchesData = try! plistDecoder.decode(Root.self, from: data)
            config.booter.quirks.enableWriteUnprotector = false
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.emulate.cpuid1Data = Data([0x57,0x06,0x05,0x00, 0x00,0x00,0x00,0x00, 0x00,0x00,0x00,0x00, 0x00,0x00,0x00,0x00])
            config.kernel.emulate.cpuid1Mask = Data([0xFF,0xFF,0xFF,0xFF, 0x00,0x00,0x00,0x00, 0x00,0x00,0x00,0x00, 0x00,0x00,0x00,0x00])
            config.kernel.kPatch.append(contentsOf: patchesData.kernel.kPatch)
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
        default:
            break
        }
        
        switch threadripperChecked.state {
        case .on:
            let patchesPlistURL = Bundle.main.url(forResource: "threadripper", withExtension: "plist")
            let plistDecoder = PropertyListDecoder()
            let data = try! Data(contentsOf: patchesPlistURL!)
            let patchesData = try! plistDecoder.decode(Root.self, from: data)
            config.booter.mmioWhitelist.append(devirtE2100000)
            config.booter.mmioWhitelist.append(devirtE3180000)
            config.booter.mmioWhitelist.append(devirtEF100000)
            config.booter.mmioWhitelist.append(devirtFA180000)
            config.booter.mmioWhitelist.append(devirtFA300000)
            config.booter.mmioWhitelist.append(devirtFEA00000)
            config.booter.mmioWhitelist.append(devirtFEC00000)
            config.booter.mmioWhitelist.append(devirtFEC10000)
            config.booter.mmioWhitelist.append(devirtFED00000)
            config.booter.mmioWhitelist.append(devirtFED40000)
            config.booter.mmioWhitelist.append(devirtFED80000)
            config.booter.mmioWhitelist.append(devirtFEDC2000)
            config.booter.mmioWhitelist.append(devirtFEDD4000)
            config.booter.mmioWhitelist.append(devirtFEE00000)
            config.booter.mmioWhitelist.append(devirtFF000000)
            config.booter.quirks.enableWriteUnprotector = false
            config.booter.quirks.devirtualiseMmio = true
            config.booter.quirks.rebuildAppleMemoryMap = true
            config.booter.quirks.setupVirtualMap = false
            config.booter.quirks.syncRuntimePermissions = true
            config.kernel.kPatch.append(contentsOf: patchesData.kernel.kPatch)
            config.misc.debug.appleDebug = true
            config.misc.debug.applePanic = true
            config.misc.debug.disableWatchDog = true
            config.misc.security.allowNvramReset = true
            config.misc.security.allowSetDefault = true
        default:
            break
        }
        
        switch liluChecked.state {
        case .on:
            let liluAdd = kAdd(bundlePath: "Lilu.kext", comment: "", enabled: true, executablePath: "Contents/MacOS/Lilu", maxKernel: "", minKernel: "", plistPath: "Contents/Info.plist")
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
            config.nvram.add.addAppleBootVariableGuid.bootArgs.append(contentsOf: " " + wegBootargsTextfield.stringValue)
        default:
            break
        }
        
        switch appleALCChecked.state {
        case .on:
            addKextToConfig(item: "AppleALC")
            config.nvram.add.addAppleBootVariableGuid.bootArgs.append(contentsOf: " " + appleALCInputfield.stringValue)
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
        
        switch lucyRTLChecked.state {
        case .on:
            addKextToConfig(item: "LucyRTL8125Ethernet")
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
            addKextInjectorPluginToConfig(pluginfor: "AirportBrcmFixup", injector: "AirPortBrcmNIC_Injector")
            addKextToConfig(item: "AirportBrcmFixup")
        default:
            break
        }
        
        switch brcmBtInjectorChecked.state {
        case .on:
            addKextInjectorToConfig(item: "BrcmBluetoothInjector")
        default:
            break
        }
        
        switch brcmFirmwareDataChecked.state {
        case .on:
            addKextToConfig(item: "BrcmFirmwareData")
        default:
            break
        }
        
        switch brcmPatchRam3Checked.state {
        case .on:
            addKextToConfig(item: "BrcmPatchRAM3")
        default:
            break
        }
        
        switch brcmPatchRam2Checked.state {
        case .on:
            addKextToConfig(item: "BrcmPatchRAM2")
        default:
            break
        }
        
        switch appleMCEReporterChecked.state {
        case .on:
            addKextInjectorToConfig(item: "AppleMCEReporterDisabler")
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
        plistEncoder.outputFormat = .xml
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
                let ocDriversDir = ocDir.appendingPathComponent("Drivers")
                let ocKextsDir = ocDir.appendingPathComponent("Kexts")
                let ocResourcesDir = ocDir.appendingPathComponent("Resources")
                let ocToolsDir = ocDir.appendingPathComponent("Tools")
                try fm.createDirectory(at: ocACPIDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocDriversDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocKextsDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocResourcesDir, withIntermediateDirectories: false, attributes: nil)
                try fm.createDirectory(at: ocToolsDir, withIntermediateDirectories: false, attributes: nil)
                efiCopy(efiname: "opencore", item: "OpenCore", location: ocDir)
                efiCopy(efiname: "bootefi", item: "BOOTx64", location: ocBootDir)
                if agpmChecked.state == .on {
                    let plistDecoder = PropertyListDecoder()
                    let getAGPMFilePathURL = URL.init(fileURLWithPath: getAGPMFilePath)
                    let getData = try! Data(contentsOf: getAGPMFilePathURL)
                    let plistData = try! plistDecoder.decode(PlistGet.self, from: getData)
                    let agpmInjectorDir = ocKextsDir.appendingPathComponent("AGPMInjector.kext")
                    let agpmInjectorContentsDir = agpmInjectorDir.appendingPathComponent("Contents")
                    let agpmInjectorInfoPlistFilename = agpmInjectorContentsDir.appendingPathComponent("Info.plist")
                    try fm.createDirectory(at: agpmInjectorDir, withIntermediateDirectories: false, attributes: nil)
                    try fm.createDirectory(at: agpmInjectorContentsDir, withIntermediateDirectories: false, attributes: nil)
                    if amdGPUChecked.state == .on {
                        let amdGpu = AMDDictionary[amdGPUList.titleOfSelectedItem!]
                        let plistToEncode = setPlist(buildMachineOSBuild: plistData.buildMachineOSBuild, cfBundleDevelopmentRegion: plistData.cfBundleDevelopmentRegion, cfBundleGetInfoString: plistData.cfBundleGetInfoString, cfBundleIdentifier: bundleID, cfBundleInfoDictionaryVersion: plistData.cfBundleInfoDictionaryVersion, cfBundleName: bundleName, cfBundlePackageType: plistData.cfBundlePackageType, cfBundleShortVersionString: bundleShortVersionName as! String, cfBundleSignature: bundleSig, cfBundleVersion: plistData.cfBundleVersion, nsHumanReadableCopyright: plistData.nsHumanReadableCopyright, setIOKitPersonalities: setIOKitPersonalities(setAGPM: setAGPM(cfBundleIdentifier: plistData.IOKitPersonalities.AGPM.cfBundleIdentifier, ioClass: plistData.IOKitPersonalities.AGPM.ioClass, ioNameMatch: plistData.IOKitPersonalities.AGPM.ioNameMatch, ioProviderClass: plistData.IOKitPersonalities.AGPM.ioProviderClass, setMachines: setMachines(machine: setMachine(machinetype: setMachine.MachineType(stringValue: smbiosList!.titleOfSelectedItem!)!, setGPUs: setGpu(gpu: setGpu.Gputype(stringValue: amdGpu!)!, agdcEnabled: AgdcEnabled, setHeuristic: setHeuristic(setID: setID), controlID: controlID, maxPowerState: maxPState, minPowerState: miniPState))))), osBundleRequired: plistData.osBundleRequired)
                        let setData = try plistEncoder.encode(plistToEncode)
                        try setData.write(to: agpmInjectorInfoPlistFilename)
                    }
                    if nvidiaGPUChecked.state == NSControl.StateValue.on {
                        amdGPUList.state = NSControl.StateValue.off
                        let nvidiaGpu = NvidiaDictionary[nvidiaGPUList.titleOfSelectedItem!]
                        
                        let plistToEncode = setPlist(buildMachineOSBuild: plistData.buildMachineOSBuild, cfBundleDevelopmentRegion: plistData.cfBundleDevelopmentRegion, cfBundleGetInfoString: plistData.cfBundleGetInfoString, cfBundleIdentifier: bundleID, cfBundleInfoDictionaryVersion: plistData.cfBundleInfoDictionaryVersion, cfBundleName: bundleName, cfBundlePackageType: plistData.cfBundlePackageType, cfBundleShortVersionString: bundleShortVersionName as! String, cfBundleSignature: bundleSig, cfBundleVersion: plistData.cfBundleVersion, nsHumanReadableCopyright: plistData.nsHumanReadableCopyright, setIOKitPersonalities: setIOKitPersonalities(setAGPM: setAGPM(cfBundleIdentifier: plistData.IOKitPersonalities.AGPM.cfBundleIdentifier, ioClass: plistData.IOKitPersonalities.AGPM.ioClass, ioNameMatch: plistData.IOKitPersonalities.AGPM.ioNameMatch, ioProviderClass: plistData.IOKitPersonalities.AGPM.ioProviderClass, setMachines: setMachines(machine: setMachine(machinetype: setMachine.MachineType(stringValue: smbiosList!.titleOfSelectedItem!)!, setGPUs: setGpu(gpu: setGpu.Gputype(stringValue: nvidiaGpu!)!, agdcEnabled: AgdcEnabled, setHeuristic: setHeuristic(setID: setID), controlID: controlID, maxPowerState: maxPState, minPowerState: miniPState))))), osBundleRequired: plistData.osBundleRequired)
                        
                        let setData = try plistEncoder.encode(plistToEncode)
                        try setData.write(to: agpmInjectorInfoPlistFilename)
                    }
                    let agpmInjector = kAdd(arch: "x86_64", bundlePath: "AGPMInjector.kext", comment: "", enabled: true, executablePath: "", maxKernel: "", minKernel: "", plistPath: "Contents/Info.plist")
                    config.kernel.kAdd.append(agpmInjector)
                }
                
                config.nvram.add.addAppleBootVariableGuid.bootArgs.append(contentsOf: " " + bootargsInputfield.stringValue)
                config.platFormInfo.generic.systemProductName = modelInput.titleOfSelectedItem!
                config.platFormInfo.generic.systemSerialNumber = snInput.stringValue
                config.platFormInfo.generic.mlb = mlbInput.stringValue
                config.platFormInfo.generic.systemUUID = smuuidInput.stringValue
                let rom = romInput.stringValue.components(separatedBy: ":")
                let unwrappedRomData = Data(rom.map { (UInt8($0, radix: 16)!) })
                config.platFormInfo.generic.rom = unwrappedRomData
                
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
                if lucyRTLChecked.state == .on {
                    kextCopy(kextname: "LucyRTL8125Ethernet", item: "LucyRTL8125Ethernet", location: ocKextsDir)
                }
                if usbInjectAllChecked.state == .on {
                    kextCopy(kextname: "usbInjectAll", item: "USBInjectAll", location: ocKextsDir)
                }
                if airportBrcmChecked.state == .on {
                    kextCopy(kextname: "airportBrcm", item: "AirportBrcmFixup", location: ocKextsDir)
                }
                if brcmPatchRam2Checked.state == .on {
                    kextCopy(kextname: "brcmpatchram2", item: "BrcmPatchRAM2", location: ocKextsDir)
                }
                if brcmFirmwareDataChecked.state == .on {
                    kextCopy(kextname: "BrcmFirmwareData", item: "BrcmFirmwareData", location: ocKextsDir)
                }
                if brcmBtInjectorChecked.state == .on {
                    kextCopy(kextname: "BrcmBluetoothInjector", item: "BrcmBluetoothInjector", location: ocKextsDir)
                }
                if brcmPatchRam3Checked.state == .on {
                    kextCopy(kextname: "BrcmPatchRAM3", item: "BrcmPatchRAM3", location: ocKextsDir)
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
                    let configFilePath =  ocDir.appendingPathComponent("config.plist")
                    let configToEncode = config
                    let data = try plistEncoder.encode(configToEncode)
                    try data.write(to: configFilePath)
                    config.uefi.drivers.removeAll()
                    config.kernel.kAdd.removeAll()
                    config.kernel.kPatch.removeAll()
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
