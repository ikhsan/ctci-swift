import BitManipulationQuestions
import XCTest

class BitManipulationTests: XCTestCase {

    /**
     5.1: Insertion

     You are given two 32-bit numbers, N and M, and two bit positions, i and j. Write a method to insert M into N such that M starts at bit j and ends at bit i. You can assume that the bits j through i have enough space to fit all of M. That is, if M = 10011, you can assume that there are at least 5 bits between j and i. You would not, for example, have j = 3 and i = 2, because M could not fully fit between bit 3 and bit 2.

     EXAMPLE

     Input:  N = 10000000000, M = 10011, i = 2, j = 6

     Output: N = 10001001100
     */
    func test_5_1_Insertion() {
        let subject = insertBit(n: 0b10000000000, m: 0b10011, i: 2, j: 6)
        XCTAssertEqual(subject, 0b10001001100)
    }

    /**
     5.6: Conversion

     Write a function to determine the number of bits you would need to flip to covert integer A to integer B.

     EXAMPLE
     11111111

     Input: 29 (or: 11101), 15 (or: 01111)
     Output: 2
    */
    func test_5_6_Conversion() {
        XCTAssertEqual(bitsToFlip(29, 15), 2)
        XCTAssertEqual(bitsToFlip(255, 0), 8)
    }

}
