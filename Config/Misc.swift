import Foundation

struct misc: Codable {
    var blessOverRide: [blessOverRide]
    var boot: boot
    var debug: debug
    var entries: [entries]
    var security: security
    var tools: [tools]
}

struct blessOverRide: Codable {
    
}

struct boot: Codable {
    var hibernateMode: String
    var hideAuxiliary: Bool
    var hideSelf: Bool
    var pickerAttributes: Int
    var pickerAudioAssist: Bool
    var pickerMode: String
    var pollAppleHotKeys: Bool
    var showPicker: Bool
    var takeoffDelay: Int
    var timeout: Int
}

struct debug: Codable {
    var disableWatchDog: Bool
    var displayDelay: Int
    var displayLevel: Int
    var target: Int
}

struct entries: Codable {
    
}

struct security: Codable {
    var allowNvramReset: Bool
    var allowSetDefault: Bool
    var authRestart: Bool
    var exposeSensitiveData: Int
    var haltLevel: Int
    var scanPolicy: Int
    var vault: String
}

struct tools: Codable {
    
}
