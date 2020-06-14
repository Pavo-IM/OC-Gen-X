import Foundation

struct acpi: Codable {
    var add: [acpiAdd]
    var delete: [acpiDelete]
    var patch: [acpiPatch]
    var quirks: acpuQuirks
    
    enum CodingKeys: String, CodingKey {
        case add = "Add"
        case delete = "Delete"
        case patch = "Patch"
        case quirks = "Quirks"
    }
}

struct acpiAdd: Codable {
    
}

struct acpiDelete: Codable {
    
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
