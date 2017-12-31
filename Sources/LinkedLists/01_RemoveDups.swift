import Foundation
import DataStructure

/// Complexity: O(n) time & space
public func removeDups<T: Hashable>(_ list: LinkedList<T>) {
    var node = list.head
    var previous: LinkedList<T>.Node? = nil

    var founds: Set<T> = []

    while node != nil {
        let val = node!.value
        if founds.contains(val) {
            previous?.next = node?.next
        } else {
            founds.insert(val)
            previous = node
        }

        node = node?.next
    }
}

/// Complexity: O(n^2) time and O(1) space
public func removeDups2<T>(_ list: LinkedList<T>) {
    var node = list.head

    while node != nil {
        var runner = node?.next

        var previous = node
        while runner != nil {
            if runner?.value == node!.value {
                previous?.next = runner?.next
            } else {
                previous = runner
            }
            runner = runner?.next
        }

        node = node?.next
    }
}

/*
 Learnings:
 - Use set instead of dictionary
 */
