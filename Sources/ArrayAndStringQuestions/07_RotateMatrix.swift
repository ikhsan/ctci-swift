import Foundation

/// Complexity: O(n^2)
public func rotate<T: Equatable>(matrix: [[T]]) -> [[T]] {
    var m = matrix

    var size = matrix.count
    var (row, col) = (0,0)

    while size > 1 {
        for i in 0..<(size-1) {
            let (r1, c1) = (row,                col + i)
            let (r2, c2) = (row + i,            col + (size - 1))
            let (r3, c3) = (row + (size-1),     col + (size - 1) - i)
            let (r4, c4) = (row + (size-1) - i, col)

            let temp = m[r4][c4]
            m[r4][c4] = m[r3][c3]
            m[r3][c3] = m[r2][c2]
            m[r2][c2] = m[r1][c1]
            m[r1][c1] = temp
        }

        size -= 2
        (row, col) = (row + 1, col + 1)
    }

    return m
}

/**
 Learnings:
 - Realise how I struggle to convert my algo from visual to text
 */
