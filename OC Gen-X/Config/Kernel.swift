import Foundation

struct kernel: Codable {
    var kAdd: [kAdd]
    var kBlock: [kBlock]
    var emulate: emulate
    var force: [force]
    var kPatch: [kPatch]?
    var kQuirks: kQuirks
    var scheme: scheme
    
    enum CodingKeys: String, CodingKey {
        case kAdd = "Add"
        case kBlock = "Block"
        case emulate = "Emulate"
        case force = "Force"
        case kPatch = "Patch"
        case kQuirks = "Quirks"
        case scheme = "Scheme"
    }
}

struct kAdd: Codable {
    var arch: String = "x86_64"
    var bundlePath: String
    var comment: String
    var enabled: Bool
    var executablePath: String
    var maxKernel: String
    var minKernel: String
    var plistPath: String
    
    enum CodingKeys: String, CodingKey {
        case arch = "Arch"
        case bundlePath = "BundlePath"
        case comment = "Comment"
        case enabled = "Enabled"
        case executablePath = "ExecutablePath"
        case maxKernel = "MaxKernel"
        case minKernel = "MinKernel"
        case plistPath = "PlistPath"
    }
}

struct kBlock: Codable {
    var arch: String = "Any"
    var comment: String
    var enabled: Bool
    var identifier: String
    var maxKernel: String
    var minKernel: String
    
    enum CodingKeys: String, CodingKey {
        case arch = "Arch"
        case comment = "Comment"
        case enabled = "Enabled"
        case identifier = "Identifier"
        case maxKernel = "MaxKernel"
        case minKernel = "MinKernel"
    }
}

struct emulate: Codable {
    var cpuid1Data: Data
    var cpuid1Mask: Data
    
    enum CodingKeys: String, CodingKey {
        case cpuid1Data = "Cpuid1Data"
        case cpuid1Mask = "Cpuid1Mask"
    }
}

struct force: Codable {
    var arch: String
    var bundlePath: String
    var comment: String
    var enabled: Bool
    var executablePath: String
    var identifier: String
    var maxKernel: String
    var minKernel: String
    var plistPath: String
    
    enum CodingKeys: String, CodingKey {
        case arch = "Arch"
        case bundlePath = "bundlePath"
        case comment = "Comment"
        case enabled = "Enabled"
        case executablePath = "ExecutablePath"
        case identifier = "Identifier"
        case maxKernel = "MaxKernel"
        case minKernel = "MinKernel"
        case plistPath = "PlistPath"
    }
}

struct kPatch: Codable {
    var arch: String = "Any"
    var base: String
    var comment: String
    var count: Int
    var enabled: Bool
    var find: Data
    var identifier: String
    var limit: Int
    var mask: Data
    var maxKernel: String
    var minKernel: String
    var replace: Data
    var replaceMask: Data
    var skip: Int
    
    enum CodingKeys: String, CodingKey {
        case arch = "Arch"
        case base = "Base"
        case comment = "Comment"
        case count = "Count"
        case enabled = "Enabled"
        case find = "Find"
        case identifier = "Identifier"
        case limit = "Limit"
        case mask = "Mask"
        case maxKernel = "MaxKernel"
        case minKernel = "MinKernel"
        case replace = "Replace"
        case replaceMask = "ReplaceMask"
        case skip = "Skip"
    }
}

struct kQuirks: Codable {
    var appleCpuPmCfgLock: Bool = false
    var appleXcpmCfgLock: Bool = false
    var appleXcpmExtraMsrs: Bool = false
    var appleXcpmForceBoost: Bool = false
    var customSMBIOSGuid: Bool = false
    var disableIoMapper: Bool = false
    var disableLinkeditJettison: Bool = true
    var disableRtcChecksum: Bool = false
    var dummyPowerManagement: Bool = false
    var externalDiskIcons: Bool = false
    var increasePciBarSize: Bool = false
    var lapicKernelPanic: Bool = false
    var panicNoKextDump: Bool = false
    var powerTimeoutKernelPanic: Bool = false
    var thirdPartyDrives: Bool = false
    var xhciPortLimit: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case appleCpuPmCfgLock = "AppleCpuPmCfgLock"
        case appleXcpmCfgLock = "AppleXcpmCfgLock"
        case appleXcpmExtraMsrs = "AppleXcpmExtraMsrs"
        case appleXcpmForceBoost = "AppleXcpmForceBoost"
        case customSMBIOSGuid = "CustomSMBIOSGuid"
        case disableIoMapper = "DisableIoMapper"
        case disableLinkeditJettison = "DisableLinkeditJettison"
        case disableRtcChecksum = "DisableRtcChecksum"
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

struct scheme: Codable {
    var fuzzyMatch: Bool = true
    var kernelArch: String = "x86_64"
    var kernelCache: String = "Auto"
    
    enum CodingKeys: String, CodingKey {
        case fuzzyMatch = "FuzzyMatch"
        case kernelArch = "KernelArch"
        case kernelCache = "KernelCache"
    }
}
