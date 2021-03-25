import XCTest
@testable import Konbini

final class konbiniTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(konbini().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
