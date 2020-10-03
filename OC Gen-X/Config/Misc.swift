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
    var hideAuxiliary: Bool = false
    var pickerAttributes: Int
    var pickerAudioAssist: Bool = false
    var pickerMode: String
    var pollAppleHotKeys: Bool = false
    var showPicker: Bool = false
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
    var appleDebug: Bool = false
    var applePanic: Bool = false
    var disableWatchDog: Bool = false
    var displayDelay: Int
    var displayLevel: Int
    var serialInit: Bool = false
    var sysReport: Bool = false
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
    var auxiliary: Bool = false
    var comment: String
    var enabled: Bool = false
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
    var allowNvramReset: Bool = false
    var allowSetDefault: Bool = false
    var apECID: Int
    var authRestart: Bool = false
    var bootProtect: String
    var dmgLoading: String
    var enablePassword: Bool = false
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
    var auxiliary: Bool = false
    var comment: String
    var enabled: Bool = false
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
