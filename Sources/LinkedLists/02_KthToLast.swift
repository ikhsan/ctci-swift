import Foundation
import DataStructure

/// Complexity: O(n) space, O(1) time
public func kthToLast<T>(_ k: Int, _ list: LinkedList<T>) -> T? {
    guard k > 0 else { return nil }

    var runner1 = list.head
    var runner2: LinkedList<T>.Node? = nil
    var index = 0

    while runner1?.next != nil {
        index += 1

        if k == index {
            runner2 = list.head
        }

        runner1 = runner1?.next
        runner2 = runner2?.next
    }

    return runner2?.value
}

/*
 Learnings:
 - First thought is using hash table and make a copy as array
 - Thought of the multiple runner solution after reading the hints
 */
