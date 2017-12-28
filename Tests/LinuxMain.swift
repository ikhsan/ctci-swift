// Generated using Sourcery 0.10.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import XCTest
@testable import CrackingTests

extension ArrayStringTests {
  static var allTests: [(String, (ArrayStringTests) -> () throws -> Void)] = [
    ("test_01_AllUnique", test_01_AllUnique),
    ("test_02_CheckPermutation", test_02_CheckPermutation),
    ("test_03_Urlify", test_03_Urlify),
    ("test_04_PalindromPermutation", test_04_PalindromPermutation),
    ("test_05_OneAway", test_05_OneAway),
  ]
}
extension LinkedListsTests {
  static var allTests: [(String, (LinkedListsTests) -> () throws -> Void)] = [
    ("test_01_RemoveDups", test_01_RemoveDups)
  ]
}

// swiftlint:disable trailing_comma
XCTMain([
  testCase(ArrayStringTests.allTests),
  testCase(LinkedListsTests.allTests),
])
// swiftlint:enable trailing_comma
