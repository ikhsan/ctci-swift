import RecursionAndDynamicProgrammingQuestions
import XCTest

class RecursionAndDynamicProgrammingTests: XCTestCase {

    /**
     8.1: Insertion

     A child is running up a staircase with n steps and can hop either 1 step, 2 steps, or 3 steps at a a time. Implement a method to count how many possible ways the child can run up the stairs.
     */
    func test_8_1_TripleSteps() {
        XCTAssertEqual(possibleWaysToStep(n: 1), 1)
        XCTAssertEqual(possibleWaysToStep(n: 2), 2)
        XCTAssertEqual(possibleWaysToStep(n: 3), 4)

        XCTAssertEqual(possibleWaysToStep(n: 50), 10562230626642)
    }

    /**
     8.2: Robot Grid

     Imagine a robot sitting on the upper left corner of grid r rows and c columns. The robot can only move in two directions, right and down, but certain cells are "off limits" such that the robot cannot step on them. Design an algorithm to find a path for the robot from the top left to the bottom right.
    */
    func test_8_2_RobotInAGrid() {
        assertPointsEqual(getPath(grid: [
            [0, 0, 1],
            [1, 0, 0],
            [1, 1, 0],
        ]),
        [
            (0,0), (0,1), (1,1), (1,2), (2,2)
        ])

        assertPointsEqual(getPath(grid: [
            [0, 0, 1, 0],
            [0, 0, 1, 0],
            [1, 0, 0, 0],
            [1, 1, 0, 0],
        ]),
        [
            (0,0), (0,1), (1,1), (2,1), (2,2), (2,3), (3,3)
        ])
    }

    /**
     8.4: Power Set

     Write a method to return all subsets of a set
    */
    func test_8_4_PowerSet() {
        let result = allSubset(["b", "e", "c", "a"])
        XCTAssertEqual(result.count, 16)
    }

    /**
     8.5: Recursive Multiply

     Write a recursive function to multiply two positive integers without using the * operator. You can use addition, subtraction, and bit shifting, but you should minimize the number of those operations.
    */
    func test_8_5_RecursiveMultiply() {
        XCTAssertEqual(recursiveMultiply(124, 31), 3844)
        XCTAssertEqual(recursiveMultiply2(124, 31), 3844)
    }

    /**
     8.9: Parens

     Implement an alforithm to rpint all valid (e.g., properly opened and closed) combinations of n pairs of parentheses

     EXAMPLE

     Input: 3

     Output: ((())), (()()), (())(), ()(()), ()()()
    */
    func test_8_9_Parens() {
        XCTAssertEqual(generateParentheses(3), ["((()))", "(()())", "(())()", "()(())", "()()()"])
        XCTAssertEqual(generateParentheses(4), [
          "((()))()", "(()())()", "((()()))", "(()()())", "(()(()))", "()()(())", "()()()()",
          "()((()))", "()(()())", "()(())()", "(((())))", "((())())", "(())()()"
        ])
    }

    /**
     8.11: Coins

     Given an infinite number of quarters (25 cents), dimes (10 cents), nickels (5 cents), and pennies (1 cent), write code to calculate the number of ways for representing n cents.
    */
    func test_8_11_Coins() {
        XCTAssertEqual(countWaysForChange(10), 4)
        XCTAssertEqual(countWaysForChange(26), 13)
        XCTAssertEqual(countWaysForChange(100), 242)
        XCTAssertEqual(countWaysForChange(10000), 134235101)
    }

}
