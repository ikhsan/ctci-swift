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

    /**
     16.8: English Int

     Given any integer, print an English phrase that describes the integer
    */
    func test_16_8_EnglishInt() {
        XCTAssertEqual(english(for: 0), "Zero")
        XCTAssertEqual(english(for: 12), "Twelve")
        XCTAssertEqual(english(for: 1_234), "One Thousand, Two Hundred Thirty Four")
        XCTAssertEqual(english(for: 14_101_023), "Fourteen Million, One Hundred One Thousand, Twenty Three")
    }

    /**
     16.11: Diving Board

     You are building a diving board by placing a bunch of planks of weed end-to-end. There are two types of planks, one of length `shorter` and one of length `longer`. You must use exactly K planks of wood. Write a method to generate all possible lengths for the diving board.
    */
    func test_16_11_DivingBoard() {
        XCTAssertEqual(allLengthsForBoard(length1: 3, length2: 5, k: 1), [3, 5])
        XCTAssertEqual(allLengthsForBoard(length1: 3, length2: 5, k: 3), [9, 11, 13, 15])
    }

    /**
     16.12: XML Encoding

     Since XML is very verbose, you are given a way of encoding it where each tag gets mapped to a pre-defined integer value. The language/grammar is as follows:

     Element    --> Tag Attributes END Children END
     Attribute  --> Tag Value
     END        --> 0
     Tag        --> some predefined mapping to int
     Value      --> string value

     For example, the following XML might be converted into the compressed string below (assuming a mapping of
     - family       -> 1
     - person       -> 2
     - firstName    -> 3
     - lastName     -> 4
     - state        -> 5

     Write code to print the encoded version of an XML element (passed in Element and Attribute objects).
    */
    func test_16_13_XMLEncoding() {
        let xml = """
        <family lastName="McDowell" state="CA">
            <person firstName="Gayle">Some Message</person>
        </family>
        """
        XCTAssertEqual(encode(xml: xml), "1 4 McDowell 5 CA 0 2 3 Gayle 0 Some Message 0 0")
    }

    /**
     16.15: Master Mind

     The Game of Master Mind is played as follows:

     The computer has four slots, and each slot will contain a ball that is red (R), yellow (Y), green (G) or blue (B). For example, the computer might have RGGB (Slot #1 is red, Slots #2 and #3 are green, Slot #4 is blue).

     When you guess the correct color for the correct slot, you get a "hit". If you guess a color taht exists but is in the wrong slot, you get a "pseudo-hit". Note that a slot that is a hit can never count as a pseudo-hit.

     For example, if the actual solution is RGBY and you guess GGRR, you have one hit and one pseudo-hit.

     Write a method that, given a guess and a solution, retruns the number of hits and pseudo-hits.
    */
    func test_16_15_MasterMind() {
        // tuple of (hit, pseudo-hit)
        XCTAssert(masterMind(solution: "RGBY", guess: "RGBY") == (4, 0))
        XCTAssert(masterMind(solution: "RGBY", guess: "GBYR") == (0, 4))
        XCTAssert(masterMind(solution: "RGBB", guess: "YYYY") == (0, 0))
        XCTAssert(masterMind(solution: "RGBY", guess: "GGRR") == (1, 1))
        XCTAssert(masterMind(solution: "RGGB", guess: "YRGB") == (2, 1))
    }

    /**
     16.17: Contiguous Sequence

     You are given an array of integers (both positive and negative). Find the contiguous sequence with the largest sum. Return the sum.
    */
    func test_16_17_ContiguousSequence() {
        XCTAssertEqual(largestSum([8]), 8)
        XCTAssertEqual(largestSum([2, -8, 3, -2, 4, -10]), 5)
        XCTAssertEqual(largestSum([-2, 3, 2, -1]), 5)
    }

    /**
     16.19: Pond Sizes

     You have an integer matrix representing a plot of land, where the value at that location represents the height above sea level. A value of zero indicates water. A pond is a region of water connected vertically, horizontally, or diagonally. The size of the pond is the total number of connected water cells. Write a method to compute the sizes of all ponds in the matrix.
    */
    func test_16_19_PondSize() {
        var pond = [
            [0, 2, 1, 0],
            [0, 1, 0, 1],
            [1, 1, 0, 1],
            [0, 1, 0, 1]
        ]
        XCTAssertEqual(getPondSizes(&pond), [1, 2, 4])

        var emptyPond: [[Int]] = []
        XCTAssertEqual(getPondSizes(&emptyPond), [])

        var pond1 = [[0]]
        XCTAssertEqual(getPondSizes(&pond1), [1])

        var pond2 = [[1]]
        XCTAssertEqual(getPondSizes(&pond2), [])
    }

    /**
     16.21: Sum Swap

     Given two arrays of integers, find a pair of values (one value from each array) that you can swap to give the two arrays the same sum.
    */
    func test_16_21_SumSwap() {
        XCTAssertNil(sumSwap([], []))
        XCTAssertNil(sumSwap([4, 2], [3, 2]))

        let res = sumSwap([4, 1, 2, 1, 1, 2], [3, 6, 3, 3])!
        XCTAssert(res == (1, 3) || res == (4, 6))

        let res2 = sumSwap([3, 6, 3, 3], [4, 1, 2, 1, 1, 2])!
        XCTAssert(res2 == (3, 1) || res2 == (6, 4))
    }

    /**
     16.22: Langton's Ant:

     An ant is sitting on an infinite grid of white and black squares. Initially, the grid is all white and the ant faces right. At each step, it does the following:

     1) At a white square, flip the color of the square, turn 90 degrees right (clockwise), and move forward one unit.

     2) At a black square, flip the color of the square, turn 90 degrees left (counter-clockwise), and move forward one unit.

     Write a program to simulate the first K moves that the ant makes and print the final board as a grid. Note that you are not provided with thte data structure to represent the grid. This is something you must design yourself. The only input to your method is K. You should print the final grid and return nothing. The method signature might be something like printAnt(moves: Int) -> String.
    */
    func test_16_22_LangtonsAnt() {
        XCTAssertEqual(printAnt(moves: 1), """
            1
            0
            """
        )

        XCTAssertEqual(printAnt(moves: 6), """
            010
            100
            110
            """
        )

        XCTAssertEqual(printAnt(moves: 48), """
            001100
            010010
            100001
            100001
            011110
            """
        )
    }
}
