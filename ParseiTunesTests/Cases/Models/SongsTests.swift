@testable import ParseiTunes
import XCTest

class SongsTests: XCTestCase {
  
  var sut: [Song]!
  
  override func setUpWithError() throws {
    super.setUp()
    let data = try getData(fromJSON: "Songs")
    sut = try JSONDecoder().decode([Song].self, from: data)
  }
  
  override func tearDownWithError() throws {
    sut = nil
    super.tearDown()
  }
  
  func testFirstSongJSONMapping() {
    let firstSong = sut.first!
    XCTAssertEqual(firstSong.artistName, "Camila Cabello")
    XCTAssertEqual(firstSong.collectionName, "Camila")
    XCTAssertEqual(firstSong.trackName, "Havana (feat. Young Thug)")
    XCTAssertNotNil(firstSong.previewUrl)
    XCTAssertEqual(firstSong.previewUrl, "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview123/v4/6b/50/b1/6b50b172-8c27-8174-5678-4be521f31f45/mzaf_3381011154197087093.plus.aac.p.m4a")
    XCTAssertEqual(firstSong.trackPrice, 1.29)
  }
  
  func testSecondSongJSONMapping() {
    let secondSong = sut[1]
    XCTAssertEqual(secondSong.artistName, "Camila Cabello & Daddy Yankee")
    XCTAssertEqual(secondSong.collectionName, "Havana (Remix) - Single")
    XCTAssertEqual(secondSong.trackName, "Havana")
    XCTAssertNil(secondSong.previewUrl)
    XCTAssertEqual(secondSong.trackPrice, 1.29)
  }
}
