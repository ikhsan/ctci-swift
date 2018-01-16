import DataStructure

private func isPalindromeWrapper<T>(_ left: inout LinkedList<T>.Node?, _ right: LinkedList<T>.Node?) -> Bool {
    if right == nil { return true }

    if !isPalindromeWrapper(&left, right?.next) {
        return false
    }

    let isSymmetrical = left?.value == right?.value
    left = left?.next
    return isSymmetrical
}

/// Complexity: O(n)
public func isPalindrome<T>(_ list: LinkedList<T>) -> Bool {
    return isPalindromeWrapper(&list.head, list.head)
}

/*
 Learnings:
 - Only thought as far as O(2n) where first traversal to determine its size, then put it on a stack
 - If we need stack to put our variables, call stack can be your stack! :mindblown:
 - inout params, use c-like ampersand
 */
