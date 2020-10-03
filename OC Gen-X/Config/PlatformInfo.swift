import Foundation

struct platFormInfo: Codable {
    var automatic: Bool = true
    var generic: generic
    var updateDataHub: Bool = true
    var updateNVRAM: Bool = true
    var updateSMBIOS: Bool = true
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
    var adviseWindows: Bool = false
    var mlb: String
    var rom: Data
    var processorType: Int = 0
    var spoofVendor: Bool = false
    var systemMemoryStatus: String = "Auto"
    var systemProductName: String
    var systemSerialNumber: String
    var systemUUID: String
    
    enum CodingKeys: String, CodingKey {
        case adviseWindows = "AdviseWindows"
        case mlb = "MLB"
        case rom = "ROM"
        case processorType = "ProcessorType"
        case spoofVendor = "SpoofVendor"
        case systemMemoryStatus = "SystemMemoryStatus"
        case systemProductName = "SystemProductName"
        case systemSerialNumber = "SystemSerialNumber"
        case systemUUID = "SystemUUID"
    }
}
