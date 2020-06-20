import Foundation

struct nvram: Codable {
    var add: nAdd
    var delete: nDelete
    var legacyEnable: Bool
    var legacyOverwrite: Bool
    var legacySchema: legacySchema
    var writeFlash: Bool
    
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
    var defaultBackgroundColor: Data
    var uiScale: Data
    
    enum CodingKeys: String, CodingKey {
        case defaultBackgroundColor = "DefaultBackgroundColor"
        case uiScale = "UIScale"
    }
}

struct addAppleVendorGuid: Codable {
    var rtcBlacklist: Data
    
    enum CodingKeys: String, CodingKey {
        case rtcBlacklist = "rtc-blacklist"
    }
}

struct addAppleBootVariableGuid: Codable {
    var systemAudioVolume: Data
    var bootArgs: String
    var csrActiveConfig: Data
    var nvdaDrv: Data
    var prevLangKbd: Data
    
    enum CodingKeys: String, CodingKey {
        case systemAudioVolume = "SystemAudioVolume"
        case bootArgs = "boot-args"
        case csrActiveConfig = "csr-active-config"
        case nvdaDrv = "nvda_drv"
        case prevLangKbd = "prev-lang:kbd"
    }
}

struct nDelete: Codable {
    var blockAppleVendorVariableGuid: [blockAppleVendorVariableGuid]
    var blockAppleBootVariableGuid: [blockAppleBootVariableGuid]
    
    enum CodingKeys: String, CodingKey {
        case blockAppleVendorVariableGuid = "4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14"
        case blockAppleBootVariableGuid = "7C436110-AB2A-4BBB-A880-FE41995C9F82"
    }
}

struct blockAppleVendorVariableGuid: Codable {
}

struct blockAppleBootVariableGuid: Codable {
}

struct legacySchema: Codable {
    var legacyAppleBootVariableGuid: [legacyAppleBootVariableGuid]
    var legacyEfiGlobalVariable: [legacyEfiGlobalVariable]
    
    enum CodingKeys: String, CodingKey {
        case legacyAppleBootVariableGuid = "7C436110-AB2A-4BBB-A880-FE41995C9F82"
        case legacyEfiGlobalVariable = "8BE4DF61-93CA-11D2-AA0D-00E098032B8C"
    }
}

struct legacyAppleBootVariableGuid: Codable {
}

struct legacyEfiGlobalVariable: Codable {
}
