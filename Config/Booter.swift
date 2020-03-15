import Foundation

struct booter: Codable {
    var mmioWhitelist: [mmioWhitelist]
    var quirks: booterQuirks
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
}
