import XCTest
import DataStructure
import LinkedLists

class LinkedListsTests: XCTestCase {

    /**
     1:  Remove Dups

     Write code to remove duplicates from an unsorted linked list. How would you solve this problem if a temporary buffer is not allowed?
     */
    func test_01_RemoveDups() {
        let list1: LinkedList<Int> = [1, 2, 3, 4, 5, 3, 5]
        removeDups(list1)
        XCTAssertEqual(list1, [1, 2, 3, 4, 5])

        let list2: LinkedList<Int> = [1, 1, 1, 1, 1, 1]
        removeDups(list2)
        XCTAssertEqual(list2, [1])

        let list3: LinkedList<Int> = [1, 3, 5]
        removeDups(list3)
        XCTAssertEqual(list3, [1, 3, 5])

        let list4: LinkedList<Int> = [1, 2, 3, 4, 5, 3, 5]
        removeDups2(list4)
        XCTAssertEqual(list4, [1, 2, 3, 4, 5])

        let list5: LinkedList<Int> = [1, 1, 1, 1, 1, 1]
        removeDups2(list5)
        XCTAssertEqual(list5, [1])

        let list6: LinkedList<Int> = [1, 3, 5]
        removeDups2(list6)
        XCTAssertEqual(list6, [1, 3, 5])
    }

}
