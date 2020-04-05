import Foundation

// MARK: - SearchResult
struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Song]
}

struct Song: Decodable {
  
}
