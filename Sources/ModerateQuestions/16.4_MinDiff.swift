import Foundation

public func minDiff(_ a: [Int], _ b: [Int]) -> Int? {
    guard !a.isEmpty && !b.isEmpty else { return nil }

    let sortedA = a.sorted()
    let sortedB = b.sorted()

    var indexA = 0
    var indexB = 0
    var result = Int.max

    while indexA < sortedA.count && indexB < sortedB.count {
        let valA = sortedA[indexA]
        let valB = sortedB[indexB]

        result = min(result, abs(valA - valB))
        if valA < valB {
            indexA += 1
        } else if valA > valB {
            indexB += 1
        } else {
            return 0
        }
    }

    return result
}