import Foundation

struct amdPatches: Codable {
    var base: String
    var comment: String
    var count: Int
    var enabled: Bool
    var find: Data
    var identifier: String
    var limit: Int
    var mask: Data
    var maxKernel: String
    var minKernel: String
    var replace: Data
    var replaceMask: Data
    var skip: Int
    
    enum CodingKeys: String, CodingKey {
        case base = "base"
        case comment = "Comment"
        case count = "Count"
        case enabled = "Enabled"
        case find = "Find"
        case identifier = "Identifier"
        case limit = "Limit"
        case mask = "Mask"
        case maxKernel = "MaxKernel"
        case minKernel = "MinKernel"
        case replace = "Replace"
        case replaceMask = "ReplaceMask"
        case skip = "Skip"
    }
}
