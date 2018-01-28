import DataStructure

private enum Result<T> {
    case notFound
    case found(T)
    case ancestor(T)
}

private func _commonAncestor<T>(root: BinaryTree<T>, p: BinaryTree<T>, q: BinaryTree<T>) -> Result<BinaryTree<T>> {
    guard case .node(let left, _, let right) = root else { return .notFound }

    if root == p && root == q { return .ancestor(root) }

    let x = _commonAncestor(root: left, p: p, q: q)
    if case .ancestor = x { return x }

    let y = _commonAncestor(root: right, p: p, q: q)
    if case .ancestor = y { return y }

    let isFoundInRoot = (root == p || root == q)
    switch (x, y) {
    case (.found, .found):
        return .ancestor(root)
    case (.found, .notFound):
        return isFoundInRoot ? .ancestor(root) : x
    case (.notFound, .found):
        return isFoundInRoot ? .ancestor(root) : y
    default:
        return isFoundInRoot ? .found(root) : .notFound
    }
}

public func commonAncestor<T>(root: BinaryTree<T>, p: BinaryTree<T>, q: BinaryTree<T>) -> BinaryTree<T>? {
    let result = _commonAncestor(root: root, p: p, q: q)
    guard case .ancestor(let tree) = result else { return nil }
    return tree
}

/**
 Learnings:
 - I spent too long trying to understand how the recursion solution works
 - What confused me most is how many cases the return type of the recursion can be
 - Try to think all of the different cases and try to summarise it to a type, I tried with enum and I can get my head around it
 - The solution from the book explained all the cases but the code's structure scatters the all possibilities which made it hard to digest
*/
