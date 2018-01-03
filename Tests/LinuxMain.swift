// Generated using Sourcery 0.10.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import XCTest
@testable import CrackingTests

extension ArrayAndStringTests {
  static var allTests: [(String, (ArrayAndStringTests) -> () throws -> Void)] = [
    ("test_01_AllUnique", test_01_AllUnique),
    ("test_02_CheckPermutation", test_02_CheckPermutation),
    ("test_03_Urlify", test_03_Urlify),
    ("test_04_PalindromPermutation", test_04_PalindromPermutation),
    ("test_05_OneAway", test_05_OneAway),
    ("test_06_StringCompression", test_06_StringCompression),
    ("test_09_StringRotation", test_09_StringRotation)
  ]
}
extension LinkedListsTests {
  static var allTests: [(String, (LinkedListsTests) -> () throws -> Void)] = [
    ("test_01_RemoveDups", test_01_RemoveDups),
    ("test_02_ReturnKthToLast", test_02_ReturnKthToLast),
    ("test_05_SumLists", test_05_SumLists),
    ("test_06_Palindrome", test_06_Palindrome),
  ]
}
extension StacksAndQueuesTests {
  static var allTests: [(String, (StacksAndQueuesTests) -> () throws -> Void)] = [
    ("test_04_QueueViaStacks", test_04_QueueViaStacks),
  ]
}

// swiftlint:disable trailing_comma
XCTMain([
  testCase(ArrayAndStringTests.allTests),
  testCase(LinkedListsTests.allTests),
  testCase(StacksAndQueuesTests.allTests),
])
// swiftlint:enable trailing_comma
