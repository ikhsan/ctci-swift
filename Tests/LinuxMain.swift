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
    ("test_1_8_ZeroMatrix", test_1_8_ZeroMatrix),
    ("test_1_9_StringRotation", test_1_9_StringRotation)
  ]
}
extension BitManipulationTests {
  static var allTests: [(String, (BitManipulationTests) -> () throws -> Void)] = [
    ("test_5_1_Insertion", test_5_1_Insertion),
    ("test_5_6_Conversion", test_5_6_Conversion)
  ]
}
extension LinkedListsTests {
  static var allTests: [(String, (LinkedListsTests) -> () throws -> Void)] = [
    ("test_2_1_RemoveDups", test_2_1_RemoveDups),
    ("test_2_2_ReturnKthToLast", test_2_2_ReturnKthToLast),
    ("test_2_5_SumLists", test_2_5_SumLists),
    ("test_2_6_Palindrome", test_2_6_Palindrome),
    ("test_2_7_Intersection", test_2_7_Intersection),
    ("test_2_8_LoopDetection", test_2_8_LoopDetection)
  ]
}
extension ModerateTests {
  static var allTests: [(String, (ModerateTests) -> () throws -> Void)] = [
    ("test_16_1_NumberSwap", test_16_1_NumberSwap),
    ("test_16_2_WordFrequencies", test_16_2_WordFrequencies),
    ("test_16_3_CountZeroFactorial", test_16_3_CountZeroFactorial),
    ("test_16_4_FindMinDiff", test_16_4_FindMinDiff),
    ("test_16_15_MasterMind", test_16_15_MasterMind),
    ("test_16_19_PondSize", test_16_19_PondSize),
    ("test_16_8_EnglishInt", test_16_8_EnglishInt),
    ("test_16_11_DivingBoard", test_16_11_DivingBoard),
    ("test_16_17_ContiguousSequence", test_16_17_ContiguousSequence),
    ("test_16_21_SumSwap", test_16_21_SumSwap)
  ]
}
extension RecursionAndDynamicProgrammingTests {
  static var allTests: [(String, (RecursionAndDynamicProgrammingTests) -> () throws -> Void)] = [
    ("test_8_1_TripleSteps", test_8_1_TripleSteps),
    ("test_8_2_RobotInAGrid", test_8_2_RobotInAGrid),
    ("test_8_4_PowerSet", test_8_4_PowerSet),
    ("test_8_5_RecursiveMultiply", test_8_5_RecursiveMultiply),
    ("test_8_9_Parens", test_8_9_Parens),
    ("test_8_11_Coins", test_8_11_Coins)
  ]
}
extension SortingAndSearchingTests {
  static var allTests: [(String, (SortingAndSearchingTests) -> () throws -> Void)] = [
    ("test_10_1_SortedMerge", test_10_1_SortedMerge)
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
    ("test_4_2_MinimalTree", test_4_2_MinimalTree),
    ("test_4_3_ListOfDepth", test_4_3_ListOfDepth),
    ("test_4_5_ValidateBST", test_4_5_ValidateBST),
    ("test_4_7_BuildOrder", test_4_7_BuildOrder),
    ("test_4_8_FirstCommonAncestor", test_4_8_FirstCommonAncestor)
  ]
}

// swiftlint:disable trailing_comma
XCTMain([
  testCase(ArrayAndStringTests.allTests),
  testCase(BitManipulationTests.allTests),
  testCase(LinkedListsTests.allTests),
  testCase(ModerateTests.allTests),
  testCase(RecursionAndDynamicProgrammingTests.allTests),
  testCase(SortingAndSearchingTests.allTests),
  testCase(StacksAndQueuesTests.allTests),
  testCase(TreesAndGraphsTests.allTests),
])
// swiftlint:enable trailing_comma
