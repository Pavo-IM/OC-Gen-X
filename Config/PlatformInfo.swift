import Foundation

struct platFormInfo: Codable {
    var automatic: Bool
    var generic: generic
    var updateDataHub: Bool
    var updateNVRAM: Bool
    var updateSMBIOS: Bool
    var updateSMBIOSMode: String
    
    enum CodingKeys: String, CodingKey {
        case automatic = "Automatic"
        case generic = "Generic"
        case updateDataHub = "UpdateDataHub"
        case updateNVRAM = "UpdateNVRAM"
        case updateSMBIOS = "UpdateSMBIOS"
        case updateSMBIOSMode = "UpdateSMBIOSMode"
    }
}

struct generic: Codable {
    var adviseWindows: Bool
    var mlb: String
    var rom: Data
    var spoofVendor: Bool
    var systemProductName: String
    var systemSerialNumber: String
    var systemUUID: String
    
    enum CodingKeys: String, CodingKey {
        case adviseWindows = "AdviseWindows"
        case mlb = "MLB"
        case rom = "ROM"
        case spoofVendor = "SpoofVendor"
        case systemProductName = "SystemProductName"
        case systemSerialNumber = "SystemSerialNumber"
        case systemUUID = "SystemUUID"
    }
}
