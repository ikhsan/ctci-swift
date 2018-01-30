import DataStructure

public func listIntersection<T>(_ lhs: LinkedList<T>, _ rhs: LinkedList<T>) -> LinkedList<T>.Node? {
    let (leftTail, leftCount) = countAndTail(list: lhs)
    let (rightTail, rightCount) = countAndTail(list: rhs)

    guard leftTail === rightTail else { return nil }

    var left = lhs.head
    var right = rhs.head

    let moveCount = abs(leftCount - rightCount)
    var moveNode = leftCount > rightCount ? left : right
    move(node: &moveNode, by: moveCount)

    while left != nil && right != nil {
        if left === right { return left }

        left = left?.next
        right = right?.next
    }

    return nil
}

private func move<T>(node: inout LinkedList<T>.Node?, by offset: Int) {
    var offset = offset
    while offset > 0 {
        node = node?.next
        offset -= 1
    }
}

private func countAndTail<T>(list: LinkedList<T>) -> (LinkedList<T>.Node?, Int) {
    var node = list.head
    var count = 0

    while node != nil {
        count += 1
        node = node?.next
    }

    return (node, count)
}
