@testable import ParseiTunes
import XCTest

class SearchResultTests: XCTestCase {
  
  var sut: SearchResult!
  
  override func setUpWithError() throws {
    super.setUp()
    let data = try getData(fromJSON: "SearchResult")
    sut = try JSONDecoder().decode(SearchResult.self, from: data)
  }
  
  override func tearDownWithError() throws {
    sut = nil
    super.tearDown()
  }
  
  func testJSONMapping() {
    XCTAssertEqual(sut.resultCount, 50)
    XCTAssertEqual(sut.results.count, 50)
  }
}


