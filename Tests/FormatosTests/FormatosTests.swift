import XCTest
@testable import Formatos

final class FormatosTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Formatos().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
