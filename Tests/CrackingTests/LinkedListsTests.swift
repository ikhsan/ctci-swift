import XCTest
import DataStructure
import LinkedLists

class LinkedListsTests: XCTestCase {

    /**
     1:  Remove Dups

     Write code to remove duplicates from an unsorted linked list. How would you solve this problem if a temporary buffer is not allowed?
     */
    func test_01_RemoveDups() {
        let list = removeDups([1, 2, 3, 4, 5, 3, 5])
        XCTAssertNotNil(list)
        // XCTAssertEqual(removeDups([1, 2, 3, 4, 5, 3, 5]), [1, 2, 3, 4, 5])
    }

}
