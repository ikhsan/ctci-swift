import Foundation

// MARK: - Solution #1

/// Complexity: O(P + D), P: # of projects, D: # of dependencies
public func buildOrder(_ projects: [String], _ dependencies: [(String, String)]) -> [Project] {
    let graph = createGraph(projects, dependencies)
    return order(graph)
}

public func order(_ graph: Graph<Project>) -> [Project] {
    var result: [Project?] = Array(repeating: nil, count: graph.nodes.count)

    var offset = 0
    var buildIndex = 0

    graph.nodes
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
        for dependent in proj.dependents {
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
public func buildOrder2(_ projects: [String], _ dependencies: [(String, String)]) -> [Project] {
  let graph = createGraph(projects, dependencies)
  return order2(graph)
}

public func order2(_ graph: Graph<Project>) -> [Project] {
    var result = [Project]()
    for node in graph.nodes {
        if !shouldComplete(project: node, result: &result) {
            return []
        }
    }
    return result
}

private func shouldComplete(project: Project, result: inout [Project]) -> Bool {
    switch project.state {
    case .processing:
        return false
    case .complete:
        return true
    case .uninitialized:
        project.state = .processing
        for dependent in project.dependents {
            if !shouldComplete(project: dependent, result: &result) {
                return false
            }
        }

        project.state = .complete
        result.insert(project, at: 0)
        return true
    }
}

// MARK: - Helpers

public func createGraph(_ projects: [String], _ dependencies: [(String, String)]) -> Graph<Project> {
    let graph = Graph<Project>()
    projects.forEach { graph.findOrCreate($0) }
    for (sourceKey, targetKey) in dependencies {
        let source = graph.findOrCreate(sourceKey)
        let target = graph.findOrCreate(targetKey)
        source.addDependent(target)
    }
    return graph
}

// MARK: - Data Structure

public class Graph<T> {
    private var _nodes: [String : T]
    public var nodes: [T] { return Array(_nodes.values) }

    public init() {
        self._nodes = [:]
    }
}

extension Graph where T == Project {
    @discardableResult
    public func findOrCreate(_ key: String) -> T {
        if let node = _nodes[key] {
            return node
        }

        let node = T(key)
        _nodes[key] = node
        return node
    }
}

public class Project {
    public enum State { case uninitialized, processing, complete }

    public let name: String
    public private(set) var dependents: [Project]
    public var dependsOn: Int
    public var state: State

    public init(_ name: String) {
        self.name = name
        self.dependsOn = 0
        self.dependents = []
        self.state = .uninitialized
    }

    public func addDependent(_ dependent: Project) {
        dependents.append(dependent)
        dependent.dependsOn += 1
    }
}

extension Project: CustomStringConvertible {
    public var description: String { return name }
}


/**
 Learnings:
 - Learned how to breakdown small problems with graph
 - Reminded that graph is just collection of nodes
 - Made aware of the term topological sort
*/
