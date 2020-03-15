import Foundation

struct uefi: Codable {
    var audio: audio
    var connectDrivers: Bool
    var drivers: [drivers]
    var input: input
    var output: output
    var protocols: protocols
    var quirks: uQuirks
}

struct audio: Codable {
    var audioCodec: Int
    var audioDevice: String
    var audioOut: Int
    var audioSupport: Bool
    var minimumVolume: Int
    var playChime: Bool
    var volumeAmplifier: Int
}

struct drivers: Codable {
    
}

struct input: Codable {
    var keyForgetThreshold: Int
    var keyMergeThreshold: Int
    var keySupport: Bool
    var keySupportMode: String
    var keySwap: Bool
    var pointerSupport: Bool
    var pointerSupportMode: String
    var timerResolution: Int
}

struct output: Codable {
    var clearScreenOnModeSwitch: Bool
    var consoleMode: String
    var directGopRendering: Bool
    var ignoreTextInGraphics: Bool
    var provideConsoleGop: Bool
    var reconnectOnResChange: Bool
    var replaceTabWithSpace: Bool
    var resolution: String
    var sanitiseClearScreen: Bool
    var textRenderer: String
}

struct protocols: Codable {
    var appleAudio: Bool
    var appleBootPolicy: Bool
    var appleEvent: Bool
    var appleImageConversion: Bool
    var appleKeyMap: Bool
    var appleSmcIo: Bool
    var appleUserInterfaceTheme: Bool
    var dataHub: Bool
    var deviceProperties: Bool
    var firmwareVolume: Bool
    var hashServices: Bool
    var osInfo: Bool
    var unicodeCollation: Bool
}

struct uQuirks: Codable {
    var exitBootServicesDelay: Int
    var ignoreInvalidFlexRatio: Bool
    var releaseUsbOwnership: Bool
    var requestBootVarFallback: Bool
    var requestBootVarRouting: Bool
    var unblockFsConnect: Bool
}
