import Foundation

struct deviceProperties: Codable {
    var add: [dpAdd]
    var block: [dpBlock]
    
    enum CodingKeys: String, CodingKey {
        case add = "Add"
        case block = "Block"
    }
}

struct dpAdd: Codable {
    
}

struct dpBlock: Codable {
    
}
