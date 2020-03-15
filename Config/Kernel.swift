import Foundation

struct kernel: Codable {
    var kAdd: [kAdd]
    var kBlock: [kBlock]
    var emulate: emulate
    var kPatch: [kPatch]
    var kQuirks: kQuirks
    
    enum CodingKeys: String, CodingKey {
        case kAdd = "Add"
        case kBlock = "Block"
        case emulate = "Emulate"
        case kPatch = "Patch"
        case kQuirks = "Quirks"
    }
}

struct kAdd: Codable {
    
}

struct kBlock: Codable {
    
}

struct emulate: Codable {
    var cpuid1Data: Data
    var cpuid1Mask: Data
    
    enum CodingKeys: String, CodingKey {
        case cpuid1Data = "Cpuid1Data"
        case cpuid1Mask = "Cpuid1Mask"
    }
}

struct kPatch: Codable {
    
}

struct kQuirks: Codable {
    var appleCpuPmCfgLock: Bool
    var appleXcpmCfgLock: Bool
    var appleXcpmExtraMsrs: Bool
    var appleXcpmForceBoost: Bool
    var customSMBIOSGuid: Bool
    var disableIoMapper: Bool
    var dummyPowerManagement: Bool
    var externalDiskIcons: Bool
    var increasePciBarSize: Bool
    var lapicKernelPanic: Bool
    var panicNoKextDump: Bool
    var powerTimeoutKernelPanic: Bool
    var thirdPartyDrives: Bool
    var xhciPortLimit: Bool
    
    enum CodingKeys: String, CodingKey {
        case appleCpuPmCfgLock = "AppleCpuPmCfgLock"
        case appleXcpmCfgLock = "AppleXcpmCfgLock"
        case appleXcpmExtraMsrs = "AppleXcpmExtraMsrs"
        case appleXcpmForceBoost = "AppleXcpmForceBoost"
        case customSMBIOSGuid = "CustomSMBIOSGuid"
        case disableIoMapper = "DisableIoMapper"
        case dummyPowerManagement = "DummyPowerManagement"
        case externalDiskIcons = "ExternalDiskIcons"
        case increasePciBarSize = "IncreasePciBarSize"
        case lapicKernelPanic = "LapicKernelPanic"
        case panicNoKextDump = "PanicNoKextDump"
        case powerTimeoutKernelPanic = "PowerTimeoutKernelPanic"
        case thirdPartyDrives = "ThirdPartyDrives"
        case xhciPortLimit = "XhciPortLimit"
    }
}
