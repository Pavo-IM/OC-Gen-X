import Foundation

struct nvram: Codable {
    var add: nAdd
    var block: nBlock
    var legacyEnable: Bool
    var legacyOverwrite: Bool
    var legacySchema: legacySchema
    var writeFlash: Bool
}

struct nAdd: Codable {
    var addAppleVendorVariableGuid: addAppleVendorVariableGuid
    var addAppleBootVariableGuid: addAppleBootVariableGuid
}

struct addAppleVendorVariableGuid: Codable {
    var defaultBackgroundColor: Data
    var uiScale: Data
}

struct addAppleBootVariableGuid: Codable {
    var systemAudioVolume: Data
    var bootArgs: String
    var csrActiveConfig: Data
    var nvdaDrv: Data
    var prevLangKbd: Data
}

struct nBlock: Codable {
    var blockAppleVendorVariableGuid: [blockAppleVendorVariableGuid]
    var blockAppleBootVariableGuid: [blockAppleBootVariableGuid]
}

struct blockAppleVendorVariableGuid: Codable {
    
}

struct blockAppleBootVariableGuid: Codable {
    
}

struct legacySchema: Codable {
    var legacyAppleBootVariableGuid: [legacyAppleBootVariableGuid]
    var legacyEfiGlobalVariable: [legacyEfiGlobalVariable]
}

struct legacyAppleBootVariableGuid: Codable {
    
}

struct legacyEfiGlobalVariable: Codable {
    
}
