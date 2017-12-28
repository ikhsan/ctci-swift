import XCTest
import ArrayString

class ArrayStringTests: XCTestCase {

    /**
     1: Is Unique

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
     2: Check Permutation

     Given two strings, write a method to decide if one is permutation of the other.
     */
    func test_02_CheckPermutation()  {
        XCTAssert(isPermutation("abcde", "ebacd"))
        XCTAssert(isPermutation("abbba", "babab"))

        XCTAssertFalse(isPermutation("hello", "world"))
        XCTAssertFalse(isPermutation("hello", "world!"))
    }

    /**
     3: URLify

     Write a method to replace all spaces in a string with '%20'. You may assume that the string has sufficient space at the end to hold the additional characters, and that you are given the "true" length of the string.
     */
    func test_03_Urlify()  {
        XCTAssertEqual(urlify("Mr John Smith  ", 13), "Mr%20John%20Smith")

        // with whitespace
        XCTAssertEqual(urlify("  Mr John Smith   ", 13), "Mr%20John%20Smith")
    }

    /**
     4: Palindrom Permutation

     Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrom does not need to be limited to just dictionary words.
     */
    func test_04_PalindromPermutation() {
        XCTAssert(isPalindromePermutation("Tact Coa"))
        XCTAssert(isPalindromePermutation2("abba"))
        XCTAssert(isPalindromePermutation("Kasur Nababan rusak"))
        XCTAssertFalse(isPalindromePermutation("hello world"))

        XCTAssert(isPalindromePermutation2("Tact Coa"))
        XCTAssert(isPalindromePermutation2("ABBA"))
        XCTAssert(isPalindromePermutation2("Kasur Nababan rusak"))
        XCTAssertFalse(isPalindromePermutation2("hello world"))
    }

    /**
     5: One Away

     There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.
     */
    func _test_05_OneAway() {
        XCTAssert(isOneAway("test", "test"))
        XCTAssert(isOneAway("pale", "ple"))
        XCTAssert(isOneAway("pales", "ple"))
        XCTAssert(isOneAway("pales", "bale"))
        XCTAssertFalse(isOneAway("pales", "bake"))
    }

}

