import DataStructure

public func sortStack<T: Comparable>(_ s: Stack<T>) -> Stack<T> {
    var r = Stack<T>()
    var t = Stack<T>()
    while !s.isEmpty {
        let val = s.pop()!
        while let p = r.peek(), p < val {
            t.push(r.pop()!)
        }
        r.push(val)
        backfill(from: &t, to: &r)
    }
    return r
}

private func backfill<T>(from source: inout Stack<T>, to target: inout Stack<T>) {
    while !source.isEmpty {
        target.push(source.pop()!)
    }
}
