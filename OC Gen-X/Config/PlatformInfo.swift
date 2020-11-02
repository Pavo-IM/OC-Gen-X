import Foundation

struct platFormInfo: Codable {
    var automatic: Bool = true
    var customMemory: Bool = false
    var generic: generic
    var memory: memory
    var updateDataHub: Bool = true
    var updateNVRAM: Bool = true
    var updateSMBIOS: Bool = true
    var updateSMBIOSMode: String = "Create"
    
    enum CodingKeys: String, CodingKey {
        case automatic = "Automatic"
        case customMemory = "CustomMemory"
        case generic = "Generic"
        case memory = "Memory"
        case updateDataHub = "UpdateDataHub"
        case updateNVRAM = "UpdateNVRAM"
        case updateSMBIOS = "UpdateSMBIOS"
        case updateSMBIOSMode = "UpdateSMBIOSMode"
    }
}

struct generic: Codable {
    var adviseWindows: Bool = false
    var mlb: String = ""
    var rom: Data = Data()
    var processorType: Int = 0
    var spoofVendor: Bool = false
    var systemMemoryStatus: String = "Auto"
    var systemProductName: String = ""
    var systemSerialNumber: String = ""
    var systemUUID: String = ""
    
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

struct memory: Codable {
    var dataWidth: Int = 64
    var devices: [devices]
    var errorCorrection: Int = 3
    var formFactor: Int = 9
    var maxCapacity: Int = 68719476736
    var totalWidth: Int = 64
    var type: Int = 26
    var typeDetail: Int = 128
    
    enum CodingKeys: String, CodingKey {
        case dataWidth = "DataWidth"
        case devices = "Devices"
        case errorCorrection = "ErrorCorrection"
        case formFactor = "FormFactor"
        case maxCapacity = "MaxCapacity"
        case totalWidth = "TotalWidth"
        case type = "Type"
        case typeDetail = "TypeDetail"
    }
}

struct devices: Codable {
}
