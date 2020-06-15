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
                kPatch: [kPatch(base: "", comment: "", count: 0, enabled: false, find: Data(), identifier: "", limit: 0, mask: Data(), maxKernel: "", minKernel: "", replace: Data(), replaceMask: Data(), skip: 0)],
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
    let firstRyzenPatch = kPatch(base: "", comment: "algrey - commpage_populate -remove rdmsr", count: 1, enabled: true, find: Data([0xB9, 0xA0, 0x01, 0x00, 0x00, 0x0F, 0x32]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x0F, 0x1F, 0x80, 0x00, 0x00, 0x00, 0x00]), replaceMask: Data(), skip: 0)
    
    let secondRyzenPatch = kPatch(base: "_cpu_topology_sort", comment: "algrey - cpu_topology_sort -disable _x86_validate_topology", count: 1, enabled: true, find: Data([0xE8, 0x00, 0x00, 0xFF, 0xFF]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0x00, 0x00, 0xFF, 0xFF]), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x0F, 0x1F, 0x44, 0x00, 0x00]), replaceMask: Data(), skip: 0)
    
    let thirdRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_cache_info - cpuid 0x8000001D instead 0 - 10.15", count: 1, enabled: true, find: Data([0x31, 0xC0, 0x31, 0xDB, 0x31, 0xC9, 0x31, 0xD2, 0x0F, 0xA2, 0x41, 0x89, 0xC6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x74]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF]), maxKernel: "19.99.99", minKernel: "19.0.0", replace: Data([0xB8, 0x1D, 0x00, 0x00, 0x80, 0x31, 0xDB, 0x31, 0xC9, 0x31, 0xD2, 0x0F, 0xA2, 0x41, 0x89, 0xC6, 0x0F, 0x1F, 0x40, 0x00, 0xEB]), replaceMask: Data(), skip: 0)
    
    let forthRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_cache_info - cpuid 0x8000001D instead 0", count: 1, enabled: true, find: Data([0x31, 0xC0, 0x31, 0xDB, 0x31, 0xC9, 0x31, 0xD2, 0x0F, 0xA2, 0x41, 0x89, 0xC6, 0x41, 0x89, 0xD1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF]), maxKernel: "18.99.99", minKernel: "17.0.0", replace: Data([0xB8, 0x1D, 0x00, 0x00, 0x80, 0x31, 0xDB, 0x31, 0xC9, 0x31, 0xD2, 0x0F, 0xA2, 0x41, 0x89, 0xC6, 0x41, 0x89, 0xD1, 0xEB, 0x1C, 0x66, 0x90]), replaceMask: Data(), skip: 0)
    
    let fifthRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_cache_info - cpuid 0x8000001D instead 4", count: 1, enabled: true, find: Data([0xB8, 0x04, 0x00, 0x00, 0x00, 0x44, 0x89, 0xF1, 0x44, 0x89]), identifier: "kernel", limit: 0, mask: Data()
        , maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0xB8, 0x1D, 0x00, 0x00, 0x80, 0x44, 0x89, 0xF1, 0x44, 0x89]), replaceMask: Data(), skip: 0)
    
    let sixthRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_cache_info - don't set cpuid_cores_per_package", count: 1, enabled: true, find: Data([0xC1, 0xE0, 0x1A, 0xFF, 0xC0]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0xF0, 0xFF, 0xFF, 0xF0]), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x0F, 0x1F, 0x00, 0xEB, 0x06]), replaceMask: Data(), skip: 0)
    
    let seventhRyzenPatch = kPatch(base: "", comment: "algrey - - skip cpuid_cores_per_package test -10.15", count: 0, enabled: true, find: Data([0x83, 0x3D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8B, 0x5D, 0xBC]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF]), maxKernel: "19.99.99", minKernel: "19.0.0", replace: Data([0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]), replaceMask: Data([0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]), skip: 0)
    
    let eigthRyzenPatch = kPatch(base: "", comment: "algrey - - skip cpuid_cores_per_package test", count: 0, enabled: true, find: Data([0x83, 0x3D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x74, 0x00, 0x8B, 0x5D, 0xBC]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF]), maxKernel: "18.99.99", minKernel: "17.0.0", replace: Data([0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00]), replaceMask: Data([0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00]), skip: 0)
    
    let ninthRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_generic_info - remove wrmsr", count: 1, enabled: true, find: Data([0xB9, 0x8B, 0x00, 0x00, 0x00, 0x31, 0xC0, 0x31, 0xD2, 0x0F, 0x30]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x66, 0x0F, 0x1F, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x90]), replaceMask: Data(), skip: 0)
    
    let tenthRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_generic_info - set microcode=186", count: 1, enabled: true, find: Data([0xB9, 0x8B, 0x00, 0x00, 0x00, 0x0F, 0x32]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0xBA, 0xBA, 0x00, 0x00, 0x00, 0x66, 0x90]), replaceMask: Data(), skip: 0)
    
    let eleventhRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_generic_info - set flag=1", count: 1, enabled: true, find: Data([0xB9, 0x17, 0x00, 0x00, 0x00, 0x0F, 0x32, 0xC1, 0xEA, 0x12, 0x80, 0xE2, 0x07]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0xB2, 0x01, 0x66, 0x0F, 0x1F, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x90]), replaceMask: Data(), skip: 0)
    
    let twelfthRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_generic_info - disable check to allow leaf7", count: 1, enabled: true, find: Data([0x00, 0x3A, 0x0F, 0x82]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x00, 0x00, 0x0F, 0x82]), replaceMask: Data(), skip: 0)
    
    let thirteenthRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_info - GenuineIntel to AuthenticAMD", count: 1, enabled: true, find: Data([0x47, 0x65, 0x6E, 0x75, 0x69, 0x6E, 0x65, 0x49, 0x6E, 0x74, 0x65, 0x6C, 0x00]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x41, 0x75, 0x74, 0x68, 0x65, 0x6E, 0x74, 0x69, 0x63, 0x41, 0x4D, 0x44, 0x00]), replaceMask: Data(), skip: 0)
    
    let fourteenthRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_cpufamily - force CPUFAMILY_INTEL_PENRYN", count: 1, enabled: true, find: Data([0x31, 0xDB, 0x80, 0x3D, 0x00, 0x00, 0x00, 0x00, 0x06, 0x75, 0x00]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00]), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0xBB, 0xBC, 0x4F, 0xEA, 0x78, 0xE9, 0x5D, 0x00, 0x00, 0x00, 0x90]), replaceMask: Data(), skip: 0)
    
    let fiftheenthRyzenPatch = kPatch(base: "_cpuid_set_info", comment: "algrey - cpuid_set_info - jmp to calculations and set cpuid_cores_per_package - 10.15", count: 1, enabled: true, find: Data([0x75, 0x71, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x48, 0x8B, 0x05, 0x00, 0x00, 0x00, 0x00, 0x48, 0x89, 0x05, 0x00, 0x00, 0x00, 0x00]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00]), maxKernel: "19.99.99", minKernel: "19.0.0", replace: Data([0x74, 0x4E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x89, 0x0D, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x7E, 0x00, 0x00, 0x00, 0x66, 0x90]), replaceMask: Data([0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF]), skip: 0)
    
    let sixthteenthRyzenPatch = kPatch(base: "_cpuid_set_info", comment: "algrey - cpuid_set_info - cores and threads calculations - 10.15", count: 1, enabled: true, find: Data([0xB9, 0x35, 0x00, 0x00, 0x00, 0x0F, 0x32, 0x48, 0xC1, 0xE2, 0x20, 0x89, 0xC1, 0x48, 0x09, 0xD1, 0xB9, 0x01, 0x00, 0x01, 0x00, 0x0F, 0x45, 0xC8, 0x0F, 0xB7, 0xC1, 0xC1, 0xE9, 0x10, 0x83, 0xE1, 0x0F, 0xEB, 0x1E, 0xB9, 0x35, 0x00, 0x00, 0x00, 0x0F, 0x32, 0x48, 0xC1, 0xE2, 0x20, 0x89, 0xC1, 0x48, 0x09, 0xD1, 0xB9, 0x01, 0x00, 0x01, 0x00, 0x0F, 0x45, 0xC8, 0x0F, 0xB7, 0xC1, 0xC1, 0xE9, 0x10]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "19.0.0", replace: Data([0xB8, 0x08, 0x00, 0x00, 0x80, 0x31, 0xDB, 0x31, 0xC9, 0x31, 0xD2, 0x0F, 0xA2, 0x41, 0x89, 0xCE, 0x45, 0x0F, 0xB6, 0xF6, 0x41, 0xFF, 0xC6, 0xB8, 0x1E, 0x00, 0x00, 0x80, 0x31, 0xDB, 0x31, 0xC9, 0x31, 0xD2, 0x0F, 0xA2, 0x0F, 0xB6, 0xF7, 0xFF, 0xC6, 0x44, 0x89, 0xF1, 0x31, 0xD2, 0x89, 0xC8, 0xF7, 0xF6, 0x89, 0xC1, 0x44, 0x89, 0xF0, 0xE9, 0x7C, 0xFF, 0xFF, 0xFF, 0x0F, 0x1F, 0x44, 0x00, 0x00]), replaceMask: Data(), skip: 0)
    
    let seventeethRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_info - ryzen cores and logicals count - part 1 - 10.13", count: 1, enabled: true, find: Data([0xEB, 0x16, 0xB9, 0x35, 0x00, 0x00, 0x00]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "17.99.99", minKernel: "17.0.0", replace: Data([0xEB, 0x22, 0xB9, 0x35, 0x00, 0x00, 0x00]), replaceMask: Data(), skip: 0)
    
    let eigthteethRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_info - ryzen cores and logicals count - part 1 - 10.14", count: 1, enabled: true, find: Data([0xEB, 0x38, 0xB9, 0x35, 0x00, 0x00, 0x00]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "18.99.99", minKernel: "18.0.0", replace: Data([0xEB, 0x12, 0xB9, 0x35, 0x00, 0x00, 0x00]), replaceMask: Data(), skip: 0)
    
    let ninthteenthRyzenPatch = kPatch(base: "_cpuid_set_info", comment: "algrey - cpuid_set_info - ryzen cores and logicals count - part 2", count: 1, enabled: true, find: Data([0xB9, 0x35, 0x00, 0x00, 0x00, 0x0F, 0x32, 0x48, 0xC1, 0xE2, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]), maxKernel: "18.99.99", minKernel: "17.0.0", replace: Data([0x41, 0x89, 0xCE, 0xB8, 0x1E, 0x00, 0x00, 0x80, 0x31, 0xDB, 0x31, 0xC9, 0x31, 0xD2, 0x0F, 0xA2, 0x0F, 0xB6, 0xF7, 0xFF, 0xC6, 0x44, 0x89, 0xF1, 0x31, 0xD2, 0x89, 0xC8, 0xF7, 0xF6, 0x66, 0x90]), replaceMask: Data(), skip: 0)
    
    let twentiethRyzenPatch = kPatch(base: "_cpuid_set_info", comment: "algrey - cpuid_set_info - ryzen cores and logicals count - part 3 - 10.13", count: 1, enabled: true, find: Data([0x89, 0x05, 0x00, 0x00, 0x00, 0x00, 0x89, 0x15, 0x00, 0x00, 0x00, 0x00, 0x85, 0xC0, 0x75, 0x18]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF]), maxKernel: "17.99.99", minKernel: "17.0.0", replace: Data([0x0F, 0x1F, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x1F, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00]), replaceMask: Data(), skip: 0)
    
    let twentiefirstRyzenPatch = kPatch(base: "_cpuid_set_info", comment: "algrey - cpuid_set_info - ryzen cores and logicals count - part 3 - 10.14", count: 1, enabled: true, find: Data([0x85, 0xC0, 0x74]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "18.99.99", minKernel: "18.0.0", replace: Data([0x66, 0x90, 0xEB]), replaceMask: Data(), skip: 1)
    
    let twentiesecondRyzenPatch = kPatch(base: "_cpuid_set_info", comment: "algrey - cpuid_set_info - ryzen cores and logicals count - part 4 - 10.13", count: 1, enabled: true, find: Data([0x8B, 0x05, 0x00, 0x00, 0x00, 0x00, 0x89, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8B, 0x05]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF]), maxKernel: "17.99.99", minKernel: "17.0.0", replace: Data([0x89, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]), replaceMask: Data([0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]), skip: 0)
    
    let twentiethirdRyzenPatch = kPatch(base: "_cpuid_set_info", comment: "algrey - cpuid_set_info - ryzen cores and logicals count - part 4 - 10.14", count: 1, enabled: true, find: Data([0x48, 0x8B, 0x05, 0x00, 0x00, 0x00, 0x00, 0x48, 0x89, 0x05, 0x00, 0x00, 0x00, 0x00]), identifier: "kernel", limit: 0, mask: Data([0xFF,0xFF,0xFF,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0xFF]), maxKernel: "18.99.99", minKernel: "18.0.0", replace: Data([0x90,0x89,0x00,0x00, 0x00,0x00,0x00,0x90, 0x00,0x00,0x00,0x00, 0x00,0x00]), replaceMask: Data([0xFF,0xFF,0x00,0x00, 0x00,0x00,0x00,0xFF, 0x00,0x00,0x00,0x00, 0x00,0x00]), skip: 0)
    
    let twentieforthRyzenPatch = kPatch(base: "", comment: "algrey - i386_init - remove rdmsr (x3)", count: 0, enabled: true, find: Data([0xB9,0x99,0x01,0x00, 0x00,0x0F,0x32,0x48, 0xC1,0xE2,0x20,0x89, 0xC6,0x48,0x09,0xD6, 0xB9,0x98,0x01,0x00, 0x00,0x0F,0x32,0x48, 0xC1,0xE2,0x20,0x89, 0xC0,0x48,0x09,0xC2, 0xBF,0x58,0x02,0x31, 0x05,0x31,0xC9,0x45, 0x31,0xC0]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x66,0x0F,0x1F,0x84, 0x00,0x00,0x00,0x00, 0x00,0x66,0x0F,0x1F, 0x84,0x00,0x00,0x00, 0x00,0x00,0x66,0x0F, 0x1F,0x84,0x00,0x00, 0x00,0x00,0x00,0x66, 0x0F,0x1F,0x84,0x00, 0x00,0x00,0x00,0x00, 0x66,0x0F,0x1F,0x44, 0x00,0x00]), replaceMask: Data(), skip: 0)
    
    let twentiefifthRyzenPatch = kPatch(base: "", comment: "$remindoffline", count: 1, enabled: true, find: Data([0x81,0xF9,0xBC,0x4F, 0xEA,0x78,0x0F,0x84, 0xC5,0x01,0x00,0x00]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "18.99.99", minKernel: "18.0.0", replace: Data([0x66,0x66,0x66,0x0F, 0x1F,0x84,0x00,0x00, 0x00,0x00,0x00,0x90]), replaceMask: Data(), skip: 0)
    
    let twentiesixthRyzenPatch = kPatch(base: "", comment: "algrey - tsc_init - remove Penryn check to execute default case", count: 1, enabled: true, find: Data([0x3D,0xBC,0x4F,0xEA, 0x78,0x0F,0x84,0x00, 0x01,0x00,0x00]), identifier: "kernel", limit: 0, mask: Data([0xFF,0xFF,0xFF,0xFF, 0xFF,0xFF,0xFF,0x00, 0xFF,0xFF,0xFF]), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x66,0x66,0x66,0x0F, 0x1F,0x84,0x00,0x00, 0x00,0x00,0x00]), replaceMask: Data(), skip: 0)
    
    let twentieseventhRyzenPatch = kPatch(base: "", comment: "algrey - tsc_init - grab DID and VID from MSR", count: 1, enabled: true, find: Data([0xB9,0x94,0x01,0x00, 0x00,0x0F,0x32,0x89, 0xC3,0xB9,0xCE,0x00, 0x00,0x00,0x0F,0x32, 0x0F,0xB6,0xCE,0x89, 0x0D,0x00,0x00,0x00, 0x00,0x0F,0xB6,0xC4, 0x89,0x05,0x00,0x00, 0x00,0x00]), identifier: "kernel", limit: 0, mask: Data([0xFF,0xFF,0xFF,0xFF, 0xFF,0xFF,0xFF,0xFF, 0xFF,0xFF,0xFF,0xFF, 0xFF,0xFF,0xFF,0xFF, 0xFF,0xFF,0xFF,0xFF, 0xFF,0x00,0x00,0x00, 0xFF,0xFF,0xFF,0xFF, 0xFF,0xFF,0x00,0x00, 0x00,0xFF]), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0xB9,0x64,0x00,0x01, 0xC0,0x0F,0x32,0x0F, 0xB6,0xC8,0x89,0xC6, 0xC1,0xEE,0x08,0x83, 0xE6,0x3F,0x45,0x31, 0xFF,0x31,0xD2,0x48, 0x89,0xC8,0x48,0xF7, 0xF6,0x48,0x01,0xC0, 0x66,0x90]), replaceMask: Data(), skip: 0)
    
    let twentieeigthRyzenPatch = kPatch(base: "_tsc_init", comment: "algrey - tsc_init - skip msr_flex_ratio test and go grab FSBFrequency from EFI", count: 1, enabled: true, find: Data([0xF7,0xC3,0x00,0x00, 0x01,0x00,0x74]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x66,0x0F,0x1F,0x44, 0x00,0x00,0xEB]), replaceMask: Data(), skip: 0)
    
    let twentieninthRyzenPatch = kPatch(base: "", comment: "algrey - lapic_init - remove version check and panic - 10.15", count: 1, enabled: true, find: Data([0x83,0xF8,0x13,0x76, 0x5E]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "19.0.0", replace: Data([0x0F,0x1F,0x44,0x00, 0x00]), replaceMask: Data(), skip: 0)
    
    let thirtiethRyzenPatch = kPatch(base: "", comment: "algrey - lapic_init - remove version check and panic", count: 1, enabled: true, find: Data([0x25,0xFC,0x00,0x00, 0x00,0x83,0xF8,0x13]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "18.99.99", minKernel: "17.0.0", replace: Data([0x25,0xF0,0x00,0x00, 0x00,0xEB,0x23,0x90]), replaceMask: Data(), skip: 0)
    
    let thirtiefirstRyzenPatch = kPatch(base: "", comment: "algrey - lapic_interrupt - skip checks and prevent panic - 10.15", count: 1, enabled: true, find: Data([0x83,0x3D,0x00,0x00, 0x00,0x00,0x00,0x74, 0x0E]), identifier: "kernel", limit: 0, mask: Data([0xFF,0xFF,0x00,0x00, 0x00,0xFF,0xFF,0xFF, 0xFF]), maxKernel: "19.99.99", minKernel: "19.0.0", replace: Data([0xEB,0x39,0x0F,0x1F, 0x80,0x00,0x00,0x00, 0x00]), replaceMask: Data(), skip: 0)
    
    let thirtiesecondRyzenPatch = kPatch(base: "_lapic_interrupt", comment: "algrey - lapic_interrupt - skip checks and prevent panic", count: 1, enabled: true, find: Data([0x83,0x3D,0x00,0x00, 0x00,0x00,0x00,0x74, 0x0A]), identifier: "kernel", limit: 250, mask: Data([0xFF,0xFF,0x00,0x00, 0x00,0xFF,0xFF,0xFF, 0xFF]), maxKernel: "18.99.99", minKernel: "17.0.0", replace: Data([0xEB,0x48,0x0F,0x1F, 0x80,0x00,0x00,0x00, 0x00]), replaceMask: Data(), skip: 0)
    
    let thirtiethirdRyzenPatch = kPatch(base: "", comment: "algrey - mtrr_update_action - fix PAT", count: 0, enabled: true, find: Data([0x89,0xC0,0x81,0xE2, 0xFF,0xFF,0x00,0xFF, 0x81,0xCA,0x00,0x00, 0x01,0x00,0xB9,0x77, 0x02,0x00,0x00]), identifier: "kernel", limit: 0, mask: Data([0xFF,0xFF,0xFF,0xFF, 0xFF,0xFF,0x0F,0xFF, 0xFF,0xFF,0xFF,0xFF, 0xFF,0xFF,0xFF,0xFF, 0xFF,0xFF,0xFF]), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0xB9,0x77,0x02,0x00, 0x00,0xB8,0x06,0x01, 0x07,0x00,0xBA,0x06, 0x01,0x07,0x00,0x0F, 0x1F,0x40,0x00]), replaceMask: Data(), skip: 0)
        
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
