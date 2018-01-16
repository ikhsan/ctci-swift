// Generated using Sourcery 0.10.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import XCTest
@testable import CrackingTests

extension ArrayAndStringTests {
  static var allTests: [(String, (ArrayAndStringTests) -> () throws -> Void)] = [
    ("test_1_1_AllUnique", test_1_1_AllUnique),
    ("test_1_2_CheckPermutation", test_1_2_CheckPermutation),
    ("test_1_3_Urlify", test_1_3_Urlify),
    ("test_1_4_PalindromPermutation", test_1_4_PalindromPermutation),
    ("test_1_5_OneAway", test_1_5_OneAway),
    ("test_1_6_StringCompression", test_1_6_StringCompression),
    ("test_1_7_RotateMatrix", test_1_7_RotateMatrix),
    ("test_1_9_StringRotation", test_1_9_StringRotation)
  ]
}
extension LinkedListsTests {
  static var allTests: [(String, (LinkedListsTests) -> () throws -> Void)] = [
    ("test_2_1_RemoveDups", test_2_1_RemoveDups),
    ("test_2_2_ReturnKthToLast", test_2_2_ReturnKthToLast),
    ("test_2_5_SumLists", test_2_5_SumLists),
    ("test_2_6_Palindrome", test_2_6_Palindrome),
  ]
}
extension StacksAndQueuesTests {
  static var allTests: [(String, (StacksAndQueuesTests) -> () throws -> Void)] = [
    ("test_3_2_StackMin", test_3_2_StackMin),
    ("test_3_4_QueueViaStacks", test_3_4_QueueViaStacks),
    ("test_3_5_SortStack", test_3_5_SortStack),
  ]
}
extension TreesAndGraphsTests {
  static var allTests: [(String, (TreesAndGraphsTests) -> () throws -> Void)] = [
    ("test_4_1_RouteBetweenNodes", test_4_1_RouteBetweenNodes),
    ("test_4_7_BuildOrder", test_4_7_BuildOrder)
  ]
}

// swiftlint:disable trailing_comma
XCTMain([
  testCase(ArrayAndStringTests.allTests),
  testCase(LinkedListsTests.allTests),
  testCase(StacksAndQueuesTests.allTests),
  testCase(TreesAndGraphsTests.allTests),
])
// swiftlint:enable trailing_comma
