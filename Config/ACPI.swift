import Foundation

struct acpi: Codable {
    var add: [acpiAdd]
    var block: [acpiBlock]
    var patch: [acpiPatch]
    var quirks: acpuQuirks
    
    enum CodingKeys: String, CodingKey {
        case add = "Add"
        case block = "Block"
        case patch = "Patch"
        case quirks = "Quirks"
    }
}

struct acpiAdd: Codable {
    
}

struct acpiBlock: Codable {
    
}

struct acpiPatch: Codable {
    
}

struct acpuQuirks: Codable {
    var fadtEnableReset: Bool
    var normalizeHeader: Bool
    var rebaseRegions: Bool
    var resetHwSig: Bool
    var resetLogoStatus: Bool
    
    enum CodingKeys: String, CodingKey {
        case fadtEnableReset = "FadtEnableReset"
        case normalizeHeader = "NormalizeHeader"
        case rebaseRegions = "RebaseRegions"
        case resetHwSig = "ResetHwSig"
        case resetLogoStatus = "ResetLogoStatus"
    }
}
