import DataStructure

/// Complexity: O(n) time & O(1) space
public func isDfsRouted(from source: MarkedVertex, to target: MarkedVertex, in graph: Graph<MarkedVertex>) -> Bool {
    if source == target { return true }
    for child in graph.getEdges(source) {
        if child.marked { continue }
        if isDfsRouted(from: child, to: target, in: graph) { return true }
        child.marked = true
    }
    return false
}

/// Complexity: O(n) time & O(1) space
public func isBfsRouted(from source: MarkedVertex, to target: MarkedVertex, in graph: Graph<MarkedVertex>) -> Bool {
    let queue = Queue<MarkedVertex>()

    queue.enqueue(source)
    source.marked = true

    while let node = queue.dequeue() {
        if node == target { return true }

        for child in graph.getEdges(node) where !child.marked {
            queue.enqueue(child)
            child.marked = true
        }
    }

    return false
}

// MARK: - Data Structure
public class MarkedVertex: Vertex {
    var value: String
    var marked: Bool

    public required init(_ value: String) {
        self.value = value
        self.marked = false
    }

    public var description: String { return value }
    public static func ==(lhs: MarkedVertex, rhs: MarkedVertex) -> Bool { return lhs.value == rhs.value }
}

extension Graph where T == MarkedVertex {
    public func reset() {
        for vertex in vertices { vertex.marked = false }
    }
}
