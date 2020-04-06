import Foundation

struct Song: Decodable {
  let artistName: String
  let collectionName: String
  let trackName: String
  let previewUrl: String?
  let trackPrice: Double
}
