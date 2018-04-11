import DataStructure

extension BinaryTree {
    var value: T? {
        guard case .node(_, let value, _) = self else { return nil }
        return value
    }

    var left: BinaryTree<T>? {
        guard case .node(let leftChild, _, _) = self else { return nil }
        return leftChild
    }

    var right: BinaryTree<T>? {
        guard case .node(_, _, let rightChild) = self else { return nil }
        return rightChild
    }
}

public typealias DepthList<T: Equatable> = LinkedList<LinkedList<T>>

public func listOfDepth<T>(_ tree: BinaryTree<T>) -> DepthList<T> {
    let list = DepthList<T>()

    var q = [BinaryTree<T>]()
    q.append(tree)

    var levelSize = 0
    var previous: DepthList<T>.Node? = nil

    while !q.isEmpty {
        if levelSize == 0 {
            // backfill
            levelSize = q.count
            let levelList = backfill(q.compactMap { $0.value })

            let node = DepthList<T>.Node(levelList)
            if list.head == nil {
                list.head = node
            } else {
                previous?.next = node
            }
            previous = node
        }

        // dequeue
        let t = q.removeFirst()
        if let leftChild = t.left, leftChild != .empty { q.append(leftChild) }
        if let rightChild = t.right, rightChild != .empty { q.append(rightChild) }
        levelSize -= 1
    }

    return list
}

private func backfill<T>(_ items: [T]) -> LinkedList<T> {
    let list = LinkedList<T>()

    var previous: LinkedList<T>.Node? = nil
    for item in items {
        let node = LinkedList<T>.Node(item)
        if list.head == nil {
            list.head = node
        } else {
            previous?.next = node
        }
        previous = node
    }

    return list
}
