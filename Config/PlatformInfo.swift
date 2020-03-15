import Foundation

struct platFormInfo: Codable {
    var automatic: Bool
    var generic: generic
    var updateDataHub: Bool
    var updateNVRAM: Bool
    var updateSMBIOS: Bool
    var updateSMBIOSMode: String
}

struct generic: Codable {
    var adviseWindows: Bool
    var mlb: String
    var rom: Data
    var spoofVendor: Bool
    var systemProductName: String
    var systemSerialNumber: String
    var systemUUID: String
}
