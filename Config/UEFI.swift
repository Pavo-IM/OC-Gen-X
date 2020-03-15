import Foundation

struct uefi: Codable {
    var audio: audio
    var connectDrivers: Bool
    var drivers: [drivers]
    var input: input
    var output: output
    var protocols: protocols
    var quirks: uQuirks
    
    enum CodingKeys: String, CodingKey {
        case audio = "Audio"
        case connectDrivers = "ConnectDrivers"
        case drivers = "Drivers"
        case input = "Input"
        case output = "Output"
        case protocols = "Protocols"
        case quirks = "Quirks"
    }
}

struct audio: Codable {
    var audioCodec: Int
    var audioDevice: String
    var audioOut: Int
    var audioSupport: Bool
    var minimumVolume: Int
    var playChime: Bool
    var volumeAmplifier: Int
    
    enum CodingKeys: String, CodingKey {
        case audioCodec = "AudioCodec"
        case audioDevice = "AudioDevice"
        case audioOut = "AudioOut"
        case audioSupport = "AudioSupport"
        case minimumVolume = "MinimumVolume"
        case playChime = "PlayChime"
        case volumeAmplifier = "VolumeAmplifier"
    }
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
    
    enum CodingKeys: String, CodingKey {
        case keyForgetThreshold = "KeyForgetThreshold"
        case keyMergeThreshold = "KeyMergeThreshold"
        case keySupport = "KeySupport"
        case keySupportMode = "KeySupportMode"
        case keySwap = "KeySwap"
        case pointerSupport = "PointerSupport"
        case pointerSupportMode = "PointerSupportMode"
        case timerResolution = "TimerResolution"
    }
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
    
    enum CodingKeys: String, CodingKey {
        case clearScreenOnModeSwitch = "ClearScreenOnModeSwitch"
        case consoleMode = "ConsoleMode"
        case directGopRendering = "DirectGopRendering"
        case ignoreTextInGraphics = "IgnoreTextInGraphics"
        case provideConsoleGop = "ProvideConsoleGop"
        case reconnectOnResChange = "ReconnectOnResChange"
        case replaceTabWithSpace = "ReplaceTabWithSpace"
        case resolution = "Resolution"
        case sanitiseClearScreen = "SanitiseClearScreen"
        case textRenderer = "TextRenderer"
    }
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
    
    enum CodingKeys: String, CodingKey {
        case appleAudio = "AppleAudio"
        case appleBootPolicy = "AppleBootPolicy"
        case appleEvent = "AppleEvent"
        case appleImageConversion = "AppleImageConversion"
        case appleKeyMap = "AppleKeyMap"
        case appleSmcIo = "AppleSmcIo"
        case appleUserInterfaceTheme = "AppleUserInterfaceTheme"
        case dataHub = "DataHub"
        case deviceProperties = "DeviceProperties"
        case firmwareVolume = "FirmwareVolume"
        case hashServices = "HashServices"
        case osInfo = "OSInfo"
        case unicodeCollation = "UnicodeCollation"
    }
}

struct uQuirks: Codable {
    var exitBootServicesDelay: Int
    var ignoreInvalidFlexRatio: Bool
    var releaseUsbOwnership: Bool
    var requestBootVarFallback: Bool
    var requestBootVarRouting: Bool
    var unblockFsConnect: Bool
    
    enum CodingKeys: String, CodingKey {
        case exitBootServicesDelay = "ExitBootServicesDelay"
        case ignoreInvalidFlexRatio = "IgnoreInvalidFlexRatio"
        case releaseUsbOwnership = "ReleaseUsbOwnership"
        case requestBootVarFallback = "RequestBootVarFallback"
        case requestBootVarRouting = "RequestBootVarRouting"
        case unblockFsConnect = "UnblockFsConnect"
    }
}
