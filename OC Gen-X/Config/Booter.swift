import Foundation

struct booter: Codable {
    var mmioWhitelist: [mmioWhitelist]
    var quirks: booterQuirks
    
    enum CodingKeys: String, CodingKey {
        case mmioWhitelist = "MmioWhitelist"
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

struct booterQuirks: Codable {
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
