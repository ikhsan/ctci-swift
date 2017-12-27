import XCTest
import ArrayAndString

/**
 Problem: Is Unique

 Implement an algorihtm to determine if a string has all unique characters. What if you cannot use additional data structures?
 */
class IsUniqueTests: XCTestCase {

    func testAllUnique() {
        let abcd = "abcdefABCDEF"
        XCTAssert(isUnique1(abcd))
        XCTAssert(isUnique2(abcd))
    }

    func testNotUnique() {
        let hello = "hello"
        XCTAssertFalse(isUnique1(hello))
        XCTAssertFalse(isUnique2(hello))
    }
}
