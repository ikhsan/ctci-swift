import ModerateQuestions
import XCTest

class ModerateTests: XCTestCase {

    /**
     16.1: Number Swapper

     Wite a function to swap a number in place (that is, without temporary variable).
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
     16.2: Word Frequencies

     Design a method to find the frequency of occurrences of any given word in a book. What if we were running this algorithm multiple times?
    */
    func test_16_2_WordFrequencies() {
        let book = """
        Lorem ipsum dolor sit amet, etiam et consectetuer et, ipsum consequat mauris sed parturient, in nec nibh velit adipiscing penatibus sed, integer faucibus bibendum turpis ut proin, mauris nulla elit dui ultrices justo. Ultricies sed vitae vel. Amet tempus consectetuer nam fusce mattis, duis ligula fusce accusamus curabitur semper fusce, sodales ultrices vehicula natoque nisl quis, nec magna urna dis sit, volutpat suspendisse venenatis mi amet eu vehicula. Id nunc, morbi ratione a sit, placerat sollicitudin nunc, ut mi vehicula in eu blandit vitae. Id mollis felis ipsum nulla, magna maecenas sagittis vestibulum, eu in donec justo, est amet volutpat quisque suspendisse, nec luctus integer libero vitae lorem molestie. Pellentesque turpis assumenda ut ipsum nullam ut, habitant imperdiet tincidunt nisl. Dolor ac, arcu cupiditate id ultrices sociis velit in. Risus pharetra eleifend. Dictum enim tortor in vestibulum, donec libero.
        """.components(separatedBy: [" ", ".", ","])
        XCTAssertEqual(wordFreq("in", from: book), 5)
        XCTAssertEqual(wordFreq("ipsum", from: book), 4)
        XCTAssertEqual(wordFreq("lorem", from: book), 2)
    }

    /**
     16.5: Factorial Zeros

     Write an algorithm which computes the number of trailing zeros in n factorial
    */
    func test_16_3_CountZeroFactorial() {
        XCTAssertEqual(countZeroFactorial(1), 0)
        XCTAssertEqual(countZeroFactorial(6), 1)
        XCTAssertEqual(countZeroFactorial(28), 6)
        XCTAssertEqual(countZeroFactorial(129), 31)
    }

    /**
     16.6: Smallest Difference

     Given two arrays of integers, compute the pair of values (one value in each array) with the smallest (non-negative) difference. Return the difference.
    */
    func test_16_4_FindMinDiff() {
        XCTAssertNil(minDiff([], []))
        XCTAssertEqual(minDiff([1, 3, 15, 11, 2], [23, 127, 235, 19, 8]), 3)
        XCTAssertEqual(minDiff([1, 3, 15, 11], [23, 235, 15, 19, 8]), 0)
    }

}
