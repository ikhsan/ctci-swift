import XCTest
import ArrayString

class ArrayStringTests: XCTestCase {

    /**
     Problem: Is Unique

     Implement an algorihtm to determine if a string has all unique characters. What if you cannot use additional data structures?
     */
    func test_01_AllUnique() {
        let abcd = "abcdefABCDEF"
        XCTAssert(isUnique1(abcd))
        XCTAssert(isUnique2(abcd))

        let hello = "hello"
        XCTAssertFalse(isUnique1(hello))
        XCTAssertFalse(isUnique2(hello))
    }

    /**
     Problem: Check Permutation

     Given two strings, write a method to decide if one is permutation of the other.
     */
    func test_02_CheckPermutation()  {
        XCTAssert(isPermutation("abcde", "ebacd"))
        XCTAssert(isPermutation("abbba", "babab"))

        XCTAssertFalse(isPermutation("hello", "world"))
        XCTAssertFalse(isPermutation("hello", "world!"))
    }

    /**
     Problem: URLify

     Write a method to replace all spaces in a string with '%20'. You may assume that the string has sufficient space at the end to hold the additional characters, and that you are given the "true" length of the string.
     */
    func test_03_Urlify()  {
        XCTAssertEqual(urlify("Mr John Smith  ", 13), "Mr%20John%20Smith")

        // with whitespace
        XCTAssertEqual(urlify("  Mr John Smith   ", 13), "Mr%20John%20Smith")
    }

}

