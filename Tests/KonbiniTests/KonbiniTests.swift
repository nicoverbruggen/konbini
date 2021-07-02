import XCTest
@testable import Konbini

final class konbiniTests: XCTestCase {
    func testJsonPrimitive() {
        let string = JSON.encode([1, 2, 3])
        XCTAssertEqual(string, "[1,2,3]")
        
        let integers = JSON.decode(string, type: [Int].self)
        XCTAssertEqual(integers, [1, 2, 3])
    }
    
    func testJsonDictionary() {
        let original = [
            "a": [1, 2, 3],
            "b": [4, 5, 6],
            "c": [0]
        ]
        let string = JSON.encode(original)
        XCTAssertEqual(string, "{\"b\":[4,5,6],\"c\":[0],\"a\":[1,2,3]}")
        
        let decoded = JSON.decode(string, type: [String: [Int]].self)
        XCTAssertEqual(decoded, original)
    }

    static var allTests = [
        ("testJsonPrimitive", testJsonPrimitive),
        ("testJsonDictionary", testJsonDictionary),
    ]
}
