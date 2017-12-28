// Generated using Sourcery 0.10.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import XCTest
@testable import CrackingTests

extension ArrayStringTests {
  static var allTests: [(String, (ArrayStringTests) -> () throws -> Void)] = [
    ("test_01_AllUnique", test_01_AllUnique),
    ("test_02_CheckPermutation", test_02_CheckPermutation),
    ("test_03_Urlify", test_03_Urlify)
  ]
}
extension CheckPermutationTests {
  static var allTests: [(String, (CheckPermutationTests) -> () throws -> Void)] = [
    ("testIsPermutation", testIsPermutation),
    ("testIsNotPermutation", testIsNotPermutation)
  ]
}
extension IsUniqueTests {
  static var allTests: [(String, (IsUniqueTests) -> () throws -> Void)] = [
    ("testAllUnique", testAllUnique),
    ("testNotUnique", testNotUnique)
  ]
}
extension UrlifyTests {
  static var allTests: [(String, (UrlifyTests) -> () throws -> Void)] = [
    ("testUrlify", testUrlify),
    ("testUrlifyShouldTrimWhitespace", testUrlifyShouldTrimWhitespace)
  ]
}

// swiftlint:disable trailing_comma
XCTMain([
  testCase(ArrayStringTests.allTests),
  testCase(CheckPermutationTests.allTests),
  testCase(IsUniqueTests.allTests),
  testCase(UrlifyTests.allTests),
])
// swiftlint:enable trailing_comma
