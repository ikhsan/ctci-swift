import DataStructure

public func validateBST<T: Comparable>(tree: BinaryTree<T>) -> Bool {
    guard case .node(let leftChild, let value, let rightChild) = tree else { return false }

    if case .node(_, let leftValue, _) = leftChild {
        let isLeftValid = (leftValue <= value) && validateBST(tree: leftChild)
        if !isLeftValid { return false }
    }

    if case .node(_, let rightValue, _) = rightChild {
        let isRightValid = (value <= rightValue) && validateBST(tree: rightChild)
        if !isRightValid { return false }
    }

    return true
}
