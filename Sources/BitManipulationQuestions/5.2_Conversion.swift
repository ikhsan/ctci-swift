import Foundation

public func bitsToFlip(_ x: Int, _ y: Int) -> Int {
    return countSetBits(x ^ y)
}

private func countSetBits(_ x: Int) -> Int {
    var counter = 0
    var n = x
    while n > 0 {
        counter += n & 1
        n >>= 1
    }
    return counter
}
