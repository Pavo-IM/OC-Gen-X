import Foundation

struct deviceProperties: Codable {
    var add: dpAdd
    var delete: dpDelete
    
    enum CodingKeys: String, CodingKey {
        case add = "Add"
        case delete = "Delete"
    }
}

struct dpAdd: Codable {
    
}

struct dpDelete: Codable {
    
}
