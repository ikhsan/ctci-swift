// Generated using Sourcery 0.10.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import XCTest
@testable import ArrayAndStringTests

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

// swiftlint:disable trailing_comma
XCTMain([
  testCase(CheckPermutationTests.allTests),
  testCase(IsUniqueTests.allTests),
])
// swiftlint:enable trailing_comma
