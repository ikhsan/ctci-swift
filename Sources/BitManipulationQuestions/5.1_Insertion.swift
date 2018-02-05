import Foundation

public func insertBit(n: Int, m: Int, i: Int, j: Int) -> Int {
    let mask = createMask(from: i, to: j)
    let nCleared = n & mask
    let mShifted = m << i
    return nCleared | mShifted
}

private func createMask(from start: Int, to end: Int) -> Int {
    return createMask(to: start) | createMask(from: start + end)
}

private func createMask(to i: Int) -> Int {
    return (1 << i) - 1
}

private func createMask(from i: Int) -> Int {
    return ~0 << (i - 1)
}

/**

Learnings:
- Get, set, clear bits
- Print and assign integer in binary: `0b1111` and `String(s, radix: 2)`

*/
