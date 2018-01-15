import TreesAndGraphsQuestions

import XCTest

extension XCTestCase {

    fileprivate func assertOrderSorted<T>(_ order: [T], in graph: Graph<T>, file: StaticString = #file, line: UInt = #line) {
        guard !graph.vertices.isEmpty && !order.isEmpty else { return XCTFail("graph/order is empty", file: file, line: line) }

        for (index, vertex) in order.enumerated() {
            for p in graph.getEdges(vertex) {
                let depIndex = order.index(where: { $0.description == p.description })!
                if depIndex <= index { XCTFail("dependents precedes parent node", file: file, line: line) }
            }
        }
    }

}

class TreesAndGraphsTests: XCTestCase {

    /**
     1: Route Between Nodes

     Given a directed graph, design an algorithm to find out whether there is a route between two nodes.
     */
    func test_01_RouteBetweenNodes() {
        let nodes = ["a","b","c","d","e","f"]
        let dependencies = [("a","d"), ("f","b"), ("b","d"), ("f","a"), ("d","c") ]
        let graph = Graph<MarkedVertex>(strings: nodes, dependencies: dependencies)

        let f = graph.getVertex("f")!
        let e = graph.getVertex("e")!
        let c = graph.getVertex("c")!

        graph.reset()
        XCTAssertFalse(isDfsRouted(from: f, to: e, in: graph))

        graph.reset()
        XCTAssert(isDfsRouted(from: f, to: c, in: graph))

        graph.reset()
        XCTAssertFalse(isBfsRouted(from: f, to: e, in: graph))

        graph.reset()
        XCTAssert(isBfsRouted(from: f, to: c, in: graph))
    }

    /**
     7: Build Order

     You are given a list of projects and a list of dependencies (which is a list of pairs of projects, where the second project is dependent on the first project). All of a project's dependencies must be built before the project is. Find a build order that will allow the projects to be built. If there is no valid build order, return an error.

     Input:
      `projects: a, b, c, d, e, f`
      `dependencies: (a,d), (f,b), (b,d), (f,a), (d,c)`
    Output: `f, e, a, b, d, c`
     */
    func test_07_BuildOrder() {
        let projects = ["a","b","c","d","e","f"]
        let dependencies = [("a","d"), ("f","b"), ("b","d"), ("f","a"), ("d","c") ]
        let graph = Graph<Project>(strings: projects, dependencies: dependencies)

        graph.reset()
        assertOrderSorted(order(graph), in: graph)

        graph.reset()
        assertOrderSorted(order2(graph), in: graph)
    }

}
