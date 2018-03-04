import Foundation

public func possibleWaysToStep(n: Int) -> Int {
    var memo = [1: 1, 2: 2, 3: 4]
    return _possibleWaysToStep(n: n, memo: &memo)
}

private func _possibleWaysToStep(n: Int, memo: inout [Int : Int]) -> Int {
    guard n > 0 else { return 0 }

    if memo[n] == nil {
      memo[n] = _possibleWaysToStep(n: n - 3, memo: &memo) + _possibleWaysToStep(n: n - 2, memo: &memo) + _possibleWaysToStep(n: n - 1, memo: &memo)
    }
    return memo[n]!
}
