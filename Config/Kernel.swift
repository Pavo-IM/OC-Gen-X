import Foundation

struct kernel: Codable {
    
}

struct kAdd: Codable {
    
}

struct kBlock: Codable {
    
}

struct emulate: Codable {
    var cpuid1Data: Data
    var cpuid1Mask: Data
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
}
