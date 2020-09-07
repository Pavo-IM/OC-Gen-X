import Foundation

struct misc: Codable {
    var blessOverRide: [blessOverRide]
    var boot: boot
    var debug: debug
    var entries: [entries]
    var security: security
    var tools: [tools]
    
    enum CodingKeys: String, CodingKey {
        case blessOverRide = "BlessOverride"
        case boot = "Boot"
        case debug = "Debug"
        case entries = "Entries"
        case security = "Security"
        case tools = "Tools"
    }
}

struct blessOverRide: Codable {
    
}

struct boot: Codable {
    var consoleAttributes: Int
    var hibernateMode: String
    var hideAuxiliary: Bool
    var pickerAttributes: Int
    var pickerAudioAssist: Bool
    var pickerMode: String
    var pollAppleHotKeys: Bool
    var showPicker: Bool
    var takeoffDelay: Int
    var timeout: Int
    
    enum CodingKeys: String, CodingKey {
        case consoleAttributes = "ConsoleAttributes"
        case hibernateMode = "HibernateMode"
        case hideAuxiliary = "HideAuxiliary"
        case pickerAttributes = "PickerAttributes"
        case pickerAudioAssist = "PickerAudioAssist"
        case pickerMode = "PickerMode"
        case pollAppleHotKeys = "PollAppleHotKeys"
        case showPicker = "ShowPicker"
        case takeoffDelay = "TakeoffDelay"
        case timeout = "Timeout"
    }
}

struct debug: Codable {
    var appleDebug: Bool
    var applePanic: Bool
    var disableWatchDog: Bool
    var displayDelay: Int
    var displayLevel: Int
    var serialInit: Bool
    var sysReport: Bool
    var target: Int
    
    enum CodingKeys: String, CodingKey {
        case appleDebug = "AppleDebug"
        case applePanic = "ApplePanic"
        case disableWatchDog = "DisableWatchDog"
        case displayDelay = "DisplayDelay"
        case displayLevel = "DisplayLevel"
        case serialInit = "SerialInit"
        case sysReport = "SysReport"
        case target = "Target"
    }
}

struct entries: Codable {
    var arguments: String
    var auxiliary: Bool
    var comment: String
    var enabled: Bool
    var name: String
    var path: String
    
    enum CodingKeys: String, CodingKey {
        case arguments = "Arguments"
        case auxiliary = "Auxiliary"
        case comment = "Comment"
        case enabled = "Enabled"
        case name = "Name"
        case path = "Path"
    }
}

struct security: Codable {
    var allowNvramReset: Bool
    var allowSetDefault: Bool
    var apECID: Int
    var authRestart: Bool
    var bootProtect: String
    var dmgLoading: String
    var enablePassword: Bool
    var exposeSensitiveData: Int
    var haltLevel: Int
    var passwordHash: Data
    var passwordSalt: Data
    var scanPolicy: Int
    var secureBootModel: String
    var vault: String
    
    enum CodingKeys: String, CodingKey {
        case allowNvramReset = "AllowNvramReset"
        case allowSetDefault = "AllowSetDefault"
        case apECID = "ApECID"
        case authRestart = "AuthRestart"
        case bootProtect = "BootProtect"
        case dmgLoading = "DmgLoading"
        case enablePassword = "EnablePassword"
        case exposeSensitiveData = "ExposeSensitiveData"
        case haltLevel = "HaltLevel"
        case passwordHash = "PasswordHash"
        case passwordSalt = "PasswordSalt"
        case scanPolicy = "ScanPolicy"
        case secureBootModel = "SecureBootModel"
        case vault = "Vault"
    }
}

struct tools: Codable {
    var arguments: String
    var auxiliary: Bool
    var comment: String
    var enabled: Bool
    var name: String
    var path: String
    
    enum CodingKeys: String, CodingKey {
        case arguments = "Arguments"
        case auxiliary = "Auxiliary"
        case comment = "Comment"
        case enabled = "Enabled"
        case name = "Name"
        case path = "Path"
    }
}
