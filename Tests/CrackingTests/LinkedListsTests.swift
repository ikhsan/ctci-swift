import DataStructure
import LinkedListsQuestions

import XCTest

class LinkedListsTests: XCTestCase {

    /**
     1:  Remove Dups

     Write code to remove duplicates from an unsorted linked list. **Follow Up**: How would you solve this problem if a temporary buffer is not allowed?
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

    /**
     2: Return Kth to Last

     Implement an algorithm to find the kth to last element of a singly linked list.
     */
    func test_02_ReturnKthToLast() {
        XCTAssertNil(kthToLast(-2, [1, 2, 3]))
        XCTAssertNil(kthToLast(10, [1, 2, 3, 4, 5, 6, 7, 8]))
        XCTAssertEqual(kthToLast(1, [1, 2, 3, 4, 5, 6, 7, 8]), 8)
        XCTAssertEqual(kthToLast(4, [1, 2, 3, 4, 5, 6, 7, 8]), 5)
    }

    /**
     3: Delete Middle Node

     Implement an algorithm to delete a node in the middle (i.r.m any node but the first and last node, not necessarily the exact middle) of a singly linked list, given only access to that node.

     Input: the ode c from the linked list a->b->c->d->e->f
     Result: nothing is returned, bit the new lnked list looks like a->b->d->e->f
     */
    func _test_03_DeleteMiddleNode() {}


    /**
     4: Partition

     Write code to partition a linked list around a value x, such that all nodes less than x come before all nodes greater than or equal to x. If x is contained within the list, the values of x only need to be after the elements less than x (see below). The partition element x can appear anywhere in the "right partition"; it does not to appear between the left and right partitions.

     Input: 3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1 [partition = 5]
     Output: 3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8
     */
    func _test_04_Partition() {}

    /**
     5: Sum Lists

     You have two numbers represented by a linked list, where each node contains a single digit. The digits are stored in reverse order, such that the 1's digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list.


     Input: (7 -> 1 -> 6) + (5 -> 9 -> 2). That is, 617 + 295
     Output: 2 -> 1 -> 9. That is, 912.

     **Follow up**: Suppose the digits are store in forward order. Repeat the above problem.
     Input: (6 -> 1 -> 7) + (2 -> 9 -> 5). That is, 617 + 295
     Output: 9 -> 1 -> 2. That is, 912.
     */
    func test_05_SumLists() {
        XCTAssertEqual(sumList([7, 1, 6], [5, 9 ,2]), [2, 1, 9])
        XCTAssertEqual(sumList([9, 9, 9], [1]), [0, 0, 0, 1])

        XCTAssertEqual(sumListReverse([6, 1, 7], [2, 9, 5]), [9, 1, 2])
        XCTAssertEqual(sumListReverse([9, 9, 9], [1]), [1, 0, 0, 0])
    }

    /**
     6: Palindrome

     Implement a function to check if a linked list is a palindrome.
     */
    func test_06_Palindrome() {
        XCTAssert(isPalindrome(LinkedList<Int>()))
        XCTAssert(isPalindrome([1]))

        XCTAssert(isPalindrome([1, 1]))
        XCTAssert(isPalindrome(["K","A","S","U","R","E","B","E","R","U","S","A","K"]))

        XCTAssertFalse(isPalindrome([1,2,3]))
        XCTAssertFalse(isPalindrome(["H", "E", "L", "L", "O"]))
    }

    /**
     7: Intersection

     Given two (singly) linked lists, determine if the two lists intersect. Return the intersecting node. Note that the intersection is definced based on reference, not value. That is, if the `kth` node of the first linked list is the exact same node (by reference) as the `jth` node of the second linked list, then they are intersecting.
     */
    func _test_07_Intersection() {}

    /**
     8: Loop Detection

     Given a circular linked list, implement an algoroightm that returns the node at the beginning of the loop.

     DEFINITION, Circular linked list: A (corrupt) linked list in which a node's next pointer points to an earlier node, so as to make a loop in the linked list.

     Input: A -> B -> C -> D -> E
     Output: C
     */
    func _test_08_LoopDetection() {}

}
