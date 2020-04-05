@testable import ParseiTunes
import XCTest

class SongTests: XCTestCase {
  
  var sut: Song!
  
  override func setUpWithError() throws {
    super.setUp()
    let data = try getData(fromJSON: "SearchResult")
    let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
    sut = searchResult.results.first!
  }
  
  override func tearDownWithError() throws {
    sut = nil
    super.tearDown()
  }
}
