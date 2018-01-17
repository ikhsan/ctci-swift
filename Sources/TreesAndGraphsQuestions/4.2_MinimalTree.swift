import DataStructure

public func minimalTree<T: Equatable>(_ list: [T]) -> BinaryTree<T> {
    guard !list.isEmpty else { return .empty }

    let size = list.count
    if size == 1 { return BinaryTree.node(.empty, list.first!, .empty) }

    let center = size / 2
    let rootValue = list[center]

    let leftSide = Array(list[0..<center])
    let leftChild = leftSide.isEmpty ? .empty : minimalTree(leftSide)
    let rightSide = Array(list[center+1..<size])
    let rightChild = rightSide.isEmpty ? .empty : minimalTree(rightSide)

    return .node(leftChild, rootValue, rightChild)
}
