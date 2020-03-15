import Foundation

struct acpi: Codable {
    var add: [acpiAdd]
    var block: [acpiBlock]
    var patch: [acpiPatch]
    var quirks: acpuQuirks
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
}
