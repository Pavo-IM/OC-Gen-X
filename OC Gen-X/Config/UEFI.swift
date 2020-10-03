import Foundation

struct uefi: Codable {
    var apfs: apfs
    var audio: audio
    var connectDrivers: Bool = true
    var drivers: [String]
    var input: input
    var output: output
    var protocols: protocols
    var quirks: uQuirks
    var reservedMemory: [reservedMemory]
    
    enum CodingKeys: String, CodingKey {
        case apfs = "APFS"
        case audio = "Audio"
        case connectDrivers = "ConnectDrivers"
        case drivers = "Drivers"
        case input = "Input"
        case output = "Output"
        case protocols = "ProtocolOverrides"
        case quirks = "Quirks"
        case reservedMemory = "ReservedMemory"
    }
}

struct apfs: Codable {
    var enableJumpstart: Bool
    var globalConnect: Bool
    var hideVerbose: Bool
    var jumpstartHotPlug: Bool
    var minDate: Int
    var minVersion: Int
    
    enum CodingKeys: String, CodingKey {
        case enableJumpstart = "EnableJumpstart"
        case globalConnect = "GlobalConnect"
        case hideVerbose = "HideVerbose"
        case jumpstartHotPlug = "JumpstartHotPlug"
        case minDate = "MinDate"
        case minVersion = "MinVersion"
    }
}

struct audio: Codable {
    var audioCodec: Int
    var audioDevice: String
    var audioOut: Int
    var audioSupport: Bool = false
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

struct input: Codable {
    var keyFiltering: Bool
    var keyForgetThreshold: Int
    var keyMergeThreshold: Int
    var keySupport: Bool
    var keySupportMode: String
    var keySwap: Bool
    var pointerSupport: Bool
    var pointerSupportMode: String
    var timerResolution: Int
    
    enum CodingKeys: String, CodingKey {
        case keyFiltering = "KeyFiltering"
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
    var ugaPassThrough: Bool
    
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
        case ugaPassThrough = "UgaPassThrough"
    }
}

struct protocols: Codable {
    var appleAudio: Bool = false
    var appleBootPolicy: Bool = false
    var appleDebugLog: Bool = false
    var appleEvent: Bool = false
    var appleFramebufferInfo: Bool = false
    var appleImageConversion: Bool = false
    var appleImg4Verification: Bool = false
    var appleKeyMap: Bool = false
    var appleRtcRam: Bool = false
    var appleSecureBoot: Bool = false
    var appleSmcIo: Bool = false
    var appleUserInterfaceTheme: Bool = false
    var dataHub: Bool = false
    var deviceProperties: Bool = false
    var firmwareVolume: Bool = false
    var hashServices: Bool = false
    var osInfo: Bool = false
    var unicodeCollation: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case appleAudio = "AppleAudio"
        case appleBootPolicy = "AppleBootPolicy"
        case appleDebugLog = "AppleDebugLog"
        case appleEvent = "AppleEvent"
        case appleFramebufferInfo = "AppleFramebufferInfo"
        case appleImageConversion = "AppleImageConversion"
        case appleImg4Verification = "AppleImg4Verification"
        case appleKeyMap = "AppleKeyMap"
        case appleRtcRam = "AppleRtcRam"
        case appleSecureBoot = "AppleSecureBoot"
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
    var deduplicateBootOrder: Bool = false
    var exitBootServicesDelay: Int
    var ignoreInvalidFlexRatio: Bool = false
    var releaseUsbOwnership: Bool = false
    var requestBootVarRouting: Bool = false
    var tscSyncTimeout: Int
    var unblockFsConnect: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case deduplicateBootOrder = "DeduplicateBootOrder"
        case exitBootServicesDelay = "ExitBootServicesDelay"
        case ignoreInvalidFlexRatio = "IgnoreInvalidFlexRatio"
        case releaseUsbOwnership = "ReleaseUsbOwnership"
        case requestBootVarRouting = "RequestBootVarRouting"
        case tscSyncTimeout = "TscSyncTimeout"
        case unblockFsConnect = "UnblockFsConnect"
    }
}

struct reservedMemory: Codable {
}
