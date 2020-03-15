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
    var protectCsmRegion: Bool
    var protectSecureBoot: Bool
    var provideCustomSlide: Bool
    var setupVirtualMap: Bool
    var shrinkMemoryMap: Bool
    var signalAppleOS: Bool
    
    enum CodingKeys: String, CodingKey {
        case avoidRuntimeDefrag = "AvoidRuntimeDefrag"
        case devirtualiseMmio = "DevirtualiseMmio"
        case disableSingleUser = "DisableSingleUser"
        case disableVariableWrite = "DisableVariableWrite"
        case discardHibernateMap = "DiscardHibernateMap"
        case enableSafeModeSlide = "EnableSafeModeSlide"
        case enableWriteUnprotector = "EnableWriteUnprotector"
        case forceExitBootServices = "ForceExitBootServices"
        case protectCsmRegion = "ProtectCsmRegion"
        case protectSecureBoot = "ProtectSecureBoot"
        case provideCustomSlide = "ProvideCustomSlide"
        case setupVirtualMap = "SetupVirtualMap"
        case shrinkMemoryMap = "ShrinkMemoryMap"
        case signalAppleOS = "SignalAppleOS"
    }
}
