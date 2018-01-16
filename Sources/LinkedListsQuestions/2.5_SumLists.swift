import DataStructure

/// Complexity: O(n) time & space
public func sumList(_ lhs: LinkedList<Int>, _ rhs: LinkedList<Int>) -> LinkedList<Int> {
    let result = LinkedList<Int>()

    var leftCurrent = lhs.head
    var rightCurrent = rhs.head
    var node: LinkedList<Int>.Node? = nil

    var carry = 0
    while leftCurrent != nil || rightCurrent != nil {
        let sum = (leftCurrent?.value ?? 0) + (rightCurrent?.value ?? 0) + carry

        carry = sum / 10
        let number = sum % 10

        let newNode = LinkedList.Node(number)
        if result.head == nil {
            result.head = newNode
        } else {
            node?.next = newNode
        }

        node = newNode
        leftCurrent = leftCurrent?.next
        rightCurrent = rightCurrent?.next
    }

    if carry > 0 {
        node?.next = .init(carry)
    }

    return result
}

/// Complexity: O(n) time & space
public func sumListReverse(_ lhs: LinkedList<Int>, _ rhs: LinkedList<Int>) -> LinkedList<Int> {
    return intToList(listToInt(lhs) + listToInt(rhs))
}

private func listToInt(_ list: LinkedList<Int>) -> Int {
    return list.reduce(into: 0) { (result, node) in
        result = (result * 10) + node.value
    }
}

private func intToList(_ number: Int) -> LinkedList<Int> {
    let list = LinkedList<Int>()
    var num = number
    while num > 0 {
        let node = LinkedList<Int>.Node(num % 10)
        node.next = list.head

        list.head = node
        num /= 10
    }
    return list
}

// TODO: Recursion

/*
 Learnings:
 - Reduce into is awesome
 - Didn't think of recursion as the solution
 */
