import Foundation
import DataStructure

class NameVertex: Vertex {
    var value: String
    var count = 0
    var isVisited = false

    required init(_ value: String) {  self.value = value }
    var description: String { return value }
    static func ==(lhs: NameVertex, rhs: NameVertex) -> Bool { return lhs.value == rhs.value }
}

func getCount(for name: String, in graph: Graph<NameVertex>) -> Int {
    guard let vertex = graph.getVertex(name), !vertex.isVisited else { return 0 }
    var count = 0
    var q = [vertex]
    while (!q.isEmpty) {
        let node = q.removeFirst()
        count += node.count
        node.isVisited = true
        for edge in graph.getEdges(node) where !edge.isVisited {
            q.append(edge)
        }
    }
    return count
}

public func countBabyNames(names: [(String, Int)], synonyms: [(String, String)]) -> [String : Int] {
    let graph = Graph<NameVertex>(vertices: [], edges: [])
    for (name, count) in names {
        let v = NameVertex(name)
        v.count = count
        graph.addVertex(v)
    }
    for (node1, node2) in synonyms {
        graph.addEdge(from: node1, to: node2)
        graph.addEdge(from: node2, to: node1)
    }

    var res: [String : Int] = [:]
    for (name, _) in names {
        let count = getCount(for: name, in: graph)
        if count > 0 { res[name] = count }
    }
    return res
}