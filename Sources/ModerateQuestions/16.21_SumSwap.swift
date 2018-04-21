import Foundation

public func sumSwap(_ a: [Int], _ b: [Int]) -> (Int, Int)? {
    guard !a.isEmpty && !b.isEmpty else { return nil }

    let sumA = a.reduce(0, +)
    let sumB = b.reduce(0, +)
    guard abs(sumA - sumB) % 2 == 0 else { return nil }

    let diff = (sumA - sumB) / 2

    return findDiffWithSorting(diff, a.sorted(), b.sorted())
    // OR
    // return findDiffWithHash(diff, a, b)
}

private func findDiffWithSorting(_ diff: Int, _ a: [Int], _ b: [Int]) -> (Int, Int)? {
    var i = 0
    var j = 0

    while (i < a.count && j < b.count) {
        let valA = a[i]
        let valB = b[j]
        let d = valA - valB
        if d < diff {
            i += 1
        } else if d > diff {
            j += 1
        } else {
            return (valA, valB)
        }
    }

    return nil
}

private func findDiffWithHash(_ diff: Int, _ a: [Int], _ b: [Int]) -> (Int, Int)? {
    let setB : Set<Int> = Set(b)
    for val in a {
        let target = val - diff
        if setB.contains(target) {
            return (val, target)
        }
    }
    return nil
}