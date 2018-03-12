import SortingAndSearchingQuestions
import XCTest

class SortingAndSearchingTests: XCTestCase {

    /**
     10.1: Sorted Merge

     Youare given two sorted arrays, A and B, where A has a lage enough buffer at the end to hold B. Write a method to merge into A in sorted order.
     */
    func test_10_1_SortedMerge() {
        let b = [3, 5, 8, 10]
        var a = [12, 12, 13] + [Int](repeating: -99, count: b.count)

        mergeSortedArray(&a, 3, b)
        XCTAssertEqual(a, [3, 5, 8, 10, 12, 12, 13])
    }

}
