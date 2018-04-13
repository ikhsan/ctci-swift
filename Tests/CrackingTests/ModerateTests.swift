import ModerateQuestions
import XCTest

class ModerateTests: XCTestCase {

    /**
    */
    func test_16_1_NumberSwap() {
      var a = 1
      var b = 5
      numberSwap(&a, &b)
      XCTAssertEqual(a, 5)
      XCTAssertEqual(b, 1)

      a = -3
      b = -10
      numberSwap(&a, &b)
      XCTAssertEqual(a, -10)
      XCTAssertEqual(b, -3)
    }

    /**
     16.3. Count trailing zero for factorial
    */
    func test_16_3_CountZeroFactorial() {
        XCTAssertEqual(countZeroFactorial(1), 0)
        XCTAssertEqual(countZeroFactorial(6), 1)
        XCTAssertEqual(countZeroFactorial(28), 6)
        XCTAssertEqual(countZeroFactorial(129), 31)
    }

    /**
     16.4 Find minimum differences
    */
    func test_16_4_FindMinDiff() {
        XCTAssertNil(minDiff([], []))
        XCTAssertEqual(minDiff([1, 3, 15, 11, 2], [23, 127, 235, 19, 8]), 3)
        XCTAssertEqual(minDiff([1, 3, 15, 11], [23, 235, 15, 19, 8]), 0)
    }

}
