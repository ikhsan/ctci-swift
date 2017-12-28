import XCTest
import ArrayString

/**
 Problem: Check Permutation

 Given two strings, write a method to decide if one is permutation of the other.
 */
class CheckPermutationTests: XCTestCase {

    func testIsPermutation()  {
        XCTAssert(isPermutation("abcde", "ebacd"))
        XCTAssert(isPermutation("abbba", "babab"))
    }

    func testIsNotPermutation() {
        XCTAssertFalse(isPermutation("hello", "world"))
        XCTAssertFalse(isPermutation("hello", "world!"))
    }

}
