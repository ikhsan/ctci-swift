import DataStructure

extension BinaryTree {
    var value: T? {
        if case .node(_, let value, _) = self {
            return value
        }
        return nil
    }

    var left: BinaryTree<T>? {
        if case .node(let leftChild, _, _) = self {
            return leftChild
        }
        return nil
    }

    var right: BinaryTree<T>? {
        if case .node(_, _, let rightChild) = self {
            return rightChild
        }
        return nil
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
            let levelList = backfill(q.flatMap { $0.value })
            print(q.first)
            print(levelList)

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
        if let leftChild = t.left { q.append(leftChild) }
        if let rightChild = t.right { q.append(rightChild) }
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
