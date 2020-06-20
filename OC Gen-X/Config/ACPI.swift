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
    var comment: String
    var enabled: Bool
    var path: String
    
    enum CodingKeys: String, CodingKey {
        case comment = "Comment"
        case enabled = "Enabled"
        case path = "Path"
    }
}

struct acpiDelete: Codable {
    var all: Bool
    var comment: String
    var enabled: Bool
    var oemTableId: Data
    var tableLength: Int
    var tableSignature: Data
    
    enum CodingKeys: String, CodingKey {
        case all = "All"
        case comment = "Comment"
        case enabled = "Enabled"
        case oemTableId = "OemTableId"
        case tableLength = "TableLength"
        case tableSignature = "TableSignature"
    }
}

struct acpiPatch: Codable {
    var comment: String
    var count: Int
    var enabled: Bool
    var find: Data
    var limit: Int
    var mask: Data
    var oemTableId: Data
    var replace: Data
    var replaceMask: Data
    var skip: Int
    var tableLength: Int
    var tableSignature: Data
    
    enum CodingKeys: String, CodingKey {
        case comment = "Comment"
        case count = "Count"
        case enabled = "Enabled"
        case find = "Find"
        case limit = "Limit"
        case mask = "Mask"
        case oemTableId = "OemTableId"
        case replace = "Replace"
        case replaceMask = "ReplaceMask"
        case skip = "Skip"
        case tableLength = "TableLength"
        case tableSignature = "TableSignature"
    }
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
