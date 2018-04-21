import Foundation

public func allLengthsForBoard(length1: Int, length2: Int, k: Int) -> Set<Int> {
    var result: Set<Int> = []
    for i in 0...k {
        let j = k - i
        result.insert(i * length1 + j * length2)
    }
    return result
}