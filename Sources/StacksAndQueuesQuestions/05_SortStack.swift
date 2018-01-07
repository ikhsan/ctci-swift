import DataStructure

/// Complexity: O(N^2) time, O(N) space
public func sortStack<T: Comparable>(_ s: Stack<T>) -> Stack<T> {
    let r = Stack<T>()
    while !s.isEmpty {
        let val = s.pop()!
        while let p = r.peek(), p < val {
            s.push(r.pop()!)
        }
        r.push(val)
    }
    return r
}

/**
 Learnings:
 - Realise that you don't need the 3rd stack
*/
