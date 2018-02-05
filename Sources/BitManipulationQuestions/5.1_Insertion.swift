import Foundation

public func insertBit(n: Int, m: Int, i: Int, j: Int) -> Int {
    let mask = createMask(from: i, to: j)
    let nCleared = n & mask
    let mShifted = m << i
    return 0
}

private func createMask(from start: Int, to end: Int) -> Int {
    let left = createMask(to: start)
    let right = createMask(from: start + end)

    // print(String(allOnes))
    print(String(right, radix: 2))
    return left | right
}

func createMask(to i: Int) -> Int {
    return (1 << i) - 1
}

func createMask(from i: Int) -> Int {
    let allOnes = 0b1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
    return allOnes << i
}
