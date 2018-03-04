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

}
