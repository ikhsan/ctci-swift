import TreesAndGraphsQuestions

import XCTest

class TreesAndGraphsTests: XCTestCase {

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

        let order1 = buildOrder(projects, dependencies)
        print(order1)
        assertBuildOrder(order1)

        let order2 = buildOrder2(projects, dependencies)
        print(order2)
        assertBuildOrder(order2)
    }

    private func assertBuildOrder(_ projects: [Project], file: StaticString = #file, line: UInt = #line) {
        guard !projects.isEmpty else { return XCTFail("build order is empty", file: file, line: line) }

        for (index, project) in projects.enumerated() {
            for p in project.dependents {
                let depIndex = projects.index(where: { $0.name == p.name })!
                if depIndex <= index { XCTFail("dependents precedes parent node", file: file, line: line) }
            }
        }
    }

}
