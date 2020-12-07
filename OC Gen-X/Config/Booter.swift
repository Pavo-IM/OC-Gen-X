import Foundation

struct booter: Codable {
    var mmioWhitelist: [mmioWhitelist]
    var patch: [patch]
    var quirks: booterQuirks
    
    enum CodingKeys: String, CodingKey {
        case mmioWhitelist = "MmioWhitelist"
        case patch = "Patch"
        case quirks = "Quirks"
    }
}

struct mmioWhitelist: Codable {
    var address: Int = 0
    var comment: String = ""
    var enabled: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case address = "Address"
        case comment = "Comment"
        case enabled = "Enabled"
    }
}

struct patch: Codable {
    var arch: String = ""
    var comment: String = ""
    var count: Int = 0
    var enabled: Bool = false
    var find: Data = Data()
    var identifier: String = ""
    var limit: Int = 0
    var mask: Data = Data()
    var replace: Data = Data()
    var replaceMask: Data = Data()
    var skip: Int = 0
    
    enum CodingKeys: String, CodingKey {
        case arch = "Arch"
        case comment = "Comment"
        case count = "Count"
        case enabled = "Enabled"
        case find = "Find"
        case identifier = "Identifier"
        case limit = "Limit"
        case mask = "Mask"
        case replace = "Replace"
        case replaceMask = "ReplaceMask"
        case skip = "Skip"
    }
}

struct booterQuirks: Codable {
    var allowRelocationBlock: Bool = false
    var avoidRuntimeDefrag: Bool = true
    var devirtualiseMmio: Bool = false
    var disableSingleUser: Bool = false
    var disableVariableWrite: Bool = false
    var discardHibernateMap: Bool = false
    var enableSafeModeSlide: Bool = true
    var enableWriteUnprotector: Bool = true
    var forceExitBootServices: Bool = false
    var protectMemoryRegion: Bool = false
    var protectSecureBoot: Bool = false
    var protectUefiServices: Bool = false
    var provideCustomSlide: Bool = true
    var provideMaxSlide: Int = 0
    var rebuildAppleMemoryMap: Bool = false
    var setupVirtualMap: Bool = true
    var signalAppleOS: Bool = false
    var syncRuntimePermissions: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case allowRelocationBlock = "AllowRelocationBlock"
        case avoidRuntimeDefrag = "AvoidRuntimeDefrag"
        case devirtualiseMmio = "DevirtualiseMmio"
        case disableSingleUser = "DisableSingleUser"
        case disableVariableWrite = "DisableVariableWrite"
        case discardHibernateMap = "DiscardHibernateMap"
        case enableSafeModeSlide = "EnableSafeModeSlide"
        case enableWriteUnprotector = "EnableWriteUnprotector"
        case forceExitBootServices = "ForceExitBootServices"
        case protectMemoryRegion = "ProtectMemoryRegions"
        case protectSecureBoot = "ProtectSecureBoot"
        case protectUefiServices = "ProtectUefiServices"
        case provideCustomSlide = "ProvideCustomSlide"
        case provideMaxSlide = "ProvideMaxSlide"
        case rebuildAppleMemoryMap = "RebuildAppleMemoryMap"
        case setupVirtualMap = "SetupVirtualMap"
        case signalAppleOS = "SignalAppleOS"
        case syncRuntimePermissions = "SyncRuntimePermissions"
    }
}
