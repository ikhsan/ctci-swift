import Foundation

/*
[0, 2, 1, 0],
[0, 1, 0, 1],
[1, 1, 0, 1],
[0, 1, 0, 1]
*/

public func getPondSizes(_ ponds: inout [[Int]]) -> [Int] {
    guard !ponds.isEmpty else { return [] }

    var sizes: [Int] = []
    let size = ponds.count
    for row in 0..<size {
        for col in 0..<size {
            if ponds[row][col] == 0 {
                let size = getSize(&ponds, row, col)
                sizes.append(size)
            }
        }
    }

    sizes.sort() // only because the order doesn't matter
    return sizes
}

private func getSize(_ ponds: inout [[Int]], _ row: Int, _ col: Int) -> Int {
    let isBound = (row >= 0 && col >= 0 && row < ponds.count && col < ponds.count)
    guard isBound else { return 0 }

    let isPond = (ponds[row][col] == 0)
    guard isPond else { return 0 }

    ponds[row][col] = -1

    var count = 1
    for i in row-1...row+1 {
        for j in col-1...col+1 {
            count += getSize(&ponds, i, j)
        }
    }

    return count
}