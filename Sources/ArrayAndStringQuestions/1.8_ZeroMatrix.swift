import Foundation

public func zero(matrix: inout [[Int]]) {
    guard !matrix.isEmpty else { return }

    let height = matrix.count
    let width = matrix.first!.count
    var isFirstRowZero = false
    var isFirstColZero = false

    for row in 0..<height {
        for col in 0..<width {
            let val = matrix[row][col]
            if val != 0 { continue }

            if row == 0 { 
                isFirstRowZero = true 
            } 
            if col == 0 { 
                isFirstColZero = true 
            }
            matrix[row][0] = 0
            matrix[0][col] = 0
        }
    }

    // zeroing out
    for row in 1..<height {
        if matrix[row][0] == 0 {
            zero(row: row, for: &matrix)
        }
    }

    for col in 1..<width {
        if matrix[0][col] == 0 {
            zero(col: col, for: &matrix)
        }
    }

    if isFirstRowZero { zero(row: 0, for: &matrix) }
    if isFirstColZero { zero(col: 0, for: &matrix) }
}

private func zero(col: Int, for matrix: inout [[Int]]) {
    let height = matrix.count
    for row in 0..<height {
        matrix[row][col] = 0
    }
}

private func zero(row: Int, for matrix: inout [[Int]]) {
    let width = matrix.first!.count
    for col in 0..<width {
        matrix[row][col] = 0
    }
}