import Foundation

public typealias Grid = [[Int]]
public typealias Point = (Int, Int) // row, column
public typealias PathCache = [Int : [Point]]

public func getPath(grid: Grid) -> [Point] {
    guard !grid.isEmpty && !grid.first!.isEmpty else { fatalError("grid can't be empty") }

    var memo: PathCache = [ 0: [(0,0)] ]
    let destination: Point = (height(for: grid) - 1, width(for: grid) - 1)
    return _getPath(grid: grid, point: destination, memo: &memo)
}

private func _getPath(grid: Grid, point: Point, memo: inout PathCache) -> [Point] {
    guard isGridValid(grid: grid, point: point) else { return [] }

    let cacheKey = getKey(point: point, width: width(for: grid))
    if memo[cacheKey] == nil {
        let upper = _getPath(grid: grid, point: (point.0 - 1, point.1), memo: &memo)
        let lefty = _getPath(grid: grid, point: (point.0, point.1 - 1), memo: &memo)

        let result: [Point]
        if !upper.isEmpty {
            result = upper + [point]
        } else if !lefty.isEmpty {
            result = lefty + [point]
        } else {
            result = []
        }
        memo[cacheKey] = result
    }
    return memo[cacheKey]!
}

private func isGridValid(grid: Grid, point: Point) -> Bool {
    let (row, column) = point

    if 0 > row || row >= height(for: grid) { return false }
    if 0 > column || column >= width(for: grid) { return false }
    if grid[row][column] != 0 { return false }
    return true
}

// MARK: - Helper

private func getKey(point p: Point, width: Int) -> Int { return (p.0 * width) + p.1 }
private func height(for grid: Grid) -> Int { return grid.count }
private func width(for grid: Grid) -> Int { return grid[0].count }
