import DataStructure
import XCTest

extension XCTestCase {
    func assertMatrixEqual<T: Equatable>(_ lhs: [[T]], _ rhs: [[T]], file: StaticString = #file, line: UInt = #line) {
        for (index, leftRow) in lhs.enumerated() {
            let rightRow = rhs[index]
            XCTAssertEqual(leftRow, rightRow, file: file, line: line)
        }
    }

    func assertOrderSorted<T>(_ order: [T], in graph: Graph<T>, file: StaticString = #file, line: UInt = #line) {
        guard !graph.vertices.isEmpty && !order.isEmpty else { return XCTFail("graph/order is empty", file: file, line: line) }

        for (index, vertex) in order.enumerated() {
            for p in graph.getEdges(vertex) {
                let depIndex = order.index(where: { $0.description == p.description })!
                if depIndex <= index { XCTFail("dependents precedes parent node", file: file, line: line) }
            }
        }
    }

    func assertPointsEqual<T: Equatable>(_ lhs: [(T, T)], _ rhs: [(T, T)], file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(lhs.count, rhs.count, file: file, line: line)
        for (index, leftTuple) in lhs.enumerated() {
            let rightTuple = rhs[index]
            XCTAssertEqual(leftTuple.0, rightTuple.0, file: file, line: line)
            XCTAssertEqual(leftTuple.1, rightTuple.1, file: file, line: line)
        }
    }
}
