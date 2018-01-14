import Foundation

// MARK: - Solution #1

/// Complexity: O(P + D), P: # of projects, D: # of dependencies
public func order(_ graph: Graph<Project>) -> [Project] {
    var result: [Project?] = Array(repeating: nil, count: graph.vertices.count)

    var offset = 0
    var buildIndex = 0

    graph.vertices
        .filter { $0.dependsOn == 0 }
        .enumerated()
        .forEach { (index, node) in
            result[index] = node
            offset += 1
        }

    // return early, can't start build any projects
    if offset == 0 { return [] }

    while buildIndex < result.count {
        guard let proj = result[buildIndex] else { continue }
        for dependent in graph.getEdges(proj) {
            dependent.dependsOn -= 1
            if (dependent.dependsOn == 0) {
                result[offset] = dependent
                offset += 1
            }
        }
        buildIndex += 1
    }

    return result.flatMap { $0 }
}

// MARK: - Solution #2

/// Using DFS. Complexity: O(P + D), P: # of projects, D: # of dependencies
public func order2(_ graph: Graph<Project>) -> [Project] {
    var result = [Project]()
    for node in graph.vertices {
        if !shouldComplete(graph: graph, project: node, result: &result) {
            return []
        }
    }
    return result
}

private func shouldComplete(graph: Graph<Project>, project: Project, result: inout [Project]) -> Bool {
    switch project.state {
    case .processing:
        return false
    case .complete:
        return true
    case .uninitialized:
        project.state = .processing

        for dependent in graph.getEdges(project) {
            if !shouldComplete(graph: graph, project: dependent, result: &result) {
                return false
            }
        }

        project.state = .complete
        result.insert(project, at: 0)
        return true
    }
}

// MARK: - Data Structure

public class Project: Vertex {
    public enum State { case uninitialized, processing, complete }

    public let name: String
    public var dependsOn: Int
    public var state: State

    public required init(_ name: String) {
        self.name = name
        self.dependsOn = 0
        self.state = .uninitialized
    }

    public var description: String { return name }

    public static func ==(lhs: Project, rhs: Project) -> Bool {
        return lhs.name == rhs.name
    }
}

extension Graph where T == Project {

    public func reset() {
        for vertex in vertices {
            for child in getEdges(vertex) {
                child.dependsOn += 1
            }
        }
    }

}

/**
 Learnings:
 - Learned how to breakdown small problems with graph
 - Reminded that graph is just collection of nodes
 - Made aware of the term topological sort
*/
