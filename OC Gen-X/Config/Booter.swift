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
    var address: Int
    var comment: String
    var enabled: Bool
    
    enum CodingKeys: String, CodingKey {
        case address = "Address"
        case comment = "Comment"
        case enabled = "Enabled"
    }
}

struct booterQuirks: Codable {
    var avoidRuntimeDefrag: Bool
    var devirtualiseMmio: Bool
    var disableSingleUser: Bool
    var disableVariableWrite: Bool
    var discardHibernateMap: Bool
    var enableSafeModeSlide: Bool
    var enableWriteUnprotector: Bool
    var forceExitBootServices: Bool
    var protectMemoryRegion: Bool
    var protectSecureBoot: Bool
    var protectUefiServices: Bool
    var provideCustomSlide: Bool
    var rebuildAppleMemoryMap: Bool
    var setupVirtualMap: Bool
    var signalAppleOS: Bool
    var syncRuntimePermissions: Bool
    
    enum CodingKeys: String, CodingKey {
        case avoidRuntimeDefrag = "AvoidRuntimeDefrag"
        case devirtualiseMmio = "DevirtualiseMmio"
        case disableSingleUser = "DisableSingleUser"
        case disableVariableWrite = "DisableVariableWrite"
        case discardHibernateMap = "DiscardHibernateMap"
        case enableSafeModeSlide = "EnableSafeModeSlide"
        case enableWriteUnprotector = "EnableWriteUnprotector"
        case forceExitBootServices = "ForceExitBootServices"
        case protectMemoryRegion = "ProtectMemoryRegion"
        case protectSecureBoot = "ProtectSecureBoot"
        case protectUefiServices = "ProtectUefiServices"
        case provideCustomSlide = "ProvideCustomSlide"
        case rebuildAppleMemoryMap = "RebuildAppleMemoryMap"
        case setupVirtualMap = "SetupVirtualMap"
        case signalAppleOS = "SignalAppleOS"
        case syncRuntimePermissions = "SyncRuntimePermissions"
    }
}
