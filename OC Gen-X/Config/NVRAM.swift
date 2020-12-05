import Foundation

struct nvram: Codable {
    var add: nAdd
    var delete: nDelete
    var legacyEnable: Bool = false
    var legacyOverwrite: Bool = false
    var legacySchema: legacySchema
    var writeFlash: Bool = true
    
    enum CodingKeys: String, CodingKey {
        case add = "Add"
        case delete = "Delete"
        case legacyEnable = "LegacyEnable"
        case legacyOverwrite = "LegacyOverwrite"
        case legacySchema = "LegacySchema"
        case writeFlash = "WriteFlash"
    }
}

struct nAdd: Codable {
    var addAppleVendorVariableGuid: addAppleVendorVariableGuid
    var addAppleVendorGuid: addAppleVendorGuid
    var addAppleBootVariableGuid: addAppleBootVariableGuid
    
    enum CodingKeys: String, CodingKey {
        case addAppleVendorVariableGuid = "4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14"
        case addAppleVendorGuid = "4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102"
        case addAppleBootVariableGuid = "7C436110-AB2A-4BBB-A880-FE41995C9F82"
    }
}

struct addAppleVendorVariableGuid: Codable {
    var defaultBackgroundColor: Data = Data([0x00,0x00,0x00,0x00])
    var uiScale: Data = Data([0x01])
    
    enum CodingKeys: String, CodingKey {
        case defaultBackgroundColor = "DefaultBackgroundColor"
        case uiScale = "UIScale"
    }
}

struct addAppleVendorGuid: Codable {
    var rtcBlacklist: Data = Data()
    
    enum CodingKeys: String, CodingKey {
        case rtcBlacklist = "rtc-blacklist"
    }
}

struct addAppleBootVariableGuid: Codable {
    var systemAudioVolume: Data = Data([0x46])
    var bootArgs: String = "-v keepsyms=1"
    var csrActiveConfig: Data = Data([0x00,0x00,0x00,0x00])
    var prevLangKbd: Data = Data([0x72,0x75,0x2D,0x52,0x55,0x3A,0x32,0x35,0x32])
    var runefiupdater: String = "No"
    
    enum CodingKeys: String, CodingKey {
        case systemAudioVolume = "SystemAudioVolume"
        case bootArgs = "boot-args"
        case csrActiveConfig = "csr-active-config"
        case prevLangKbd = "prev-lang:kbd"
        case runefiupdater = "run-efi-updater"
    }
}

struct nDelete: Codable {
    var blockAppleVendorVariableGuid: [String] = ["UIScale", "DefaultBackgroundColor"]
    var blockAppleVendorGuid: [String] = ["rtc-blacklist"]
    var blockAppleBootVariableGuid: [String] = ["boot-args"]
    
    enum CodingKeys: String, CodingKey {
        case blockAppleVendorVariableGuid = "4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14"
        case blockAppleVendorGuid = "4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102"
        case blockAppleBootVariableGuid = "7C436110-AB2A-4BBB-A880-FE41995C9F82"
    }
}

struct legacySchema: Codable {
    var legacyAppleBootVariableGuid: [String] = ["EFILoginHiDPI", "EFIBluetoothDelay", "LocationServicesEnabled", "SystemAudioVolume", "SystemAudioVolumeDB", "SystemAudioVolumeSaved", "bluetoothActiveControllerInfo", "bluetoothInternalControllerInfo", "flagstate", "fmm-computer-name", "fmm-mobileme-token-FMM", "fmm-mobileme-token-FMM-BridgeHasAccount", "nvda_drv", "prev-lang:kbd"]
    var legacyEfiGlobalVariable: [String] = ["Boot0080", "Boot0081", "Boot0082", "BootNext", "BootOrder"]
    
    enum CodingKeys: String, CodingKey {
        case legacyAppleBootVariableGuid = "7C436110-AB2A-4BBB-A880-FE41995C9F82"
        case legacyEfiGlobalVariable = "8BE4DF61-93CA-11D2-AA0D-00E098032B8C"
    }
}
