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
    var comment: String = ""
    var enabled: Bool = false
    var path: String = ""
    
    enum CodingKeys: String, CodingKey {
        case comment = "Comment"
        case enabled = "Enabled"
        case path = "Path"
    }
}

struct acpiDelete: Codable {
    var all: Bool = false
    var comment: String = ""
    var enabled: Bool = false
    var oemTableId: Data = Data()
    var tableLength: Int = 0
    var tableSignature: Data = Data()
    
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
    var base: String = ""
    var baseSkip: Int = 0
    var comment: String = ""
    var count: Int = 0
    var enabled: Bool = false
    var find: Data = Data()
    var limit: Int = 0
    var mask: Data = Data()
    var oemTableId: Data = Data()
    var replace: Data = Data()
    var replaceMask: Data = Data()
    var skip: Int = 0
    var tableLength: Int = 0
    var tableSignature: Data = Data()
    
    enum CodingKeys: String, CodingKey {
        case base = "Base"
        case baseSkip = "BaseSkip"
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
    var fadtEnableReset: Bool = false
    var normalizeHeader: Bool = false
    var rebaseRegions: Bool = false
    var resetHwSig: Bool = false
    var resetLogoStatus: Bool = false
    var syncTableIds: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case fadtEnableReset = "FadtEnableReset"
        case normalizeHeader = "NormalizeHeaders"
        case rebaseRegions = "RebaseRegions"
        case resetHwSig = "ResetHwSig"
        case resetLogoStatus = "ResetLogoStatus"
        case syncTableIds = "SyncTableIds"
    }
}
