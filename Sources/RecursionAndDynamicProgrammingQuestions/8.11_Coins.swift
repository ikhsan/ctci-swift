import Foundation

public func countWaysForChange(_ cents: Int) -> Int {
    var memo: [String : Int] = [:]
    return _countWaysForChange(cents, [25, 10, 5, 1], &memo)
}

private func _countWaysForChange(_ cents: Int, _ denoms: [Int], _ memo: inout [String : Int]) -> Int {
    guard cents > 0 && denoms.count > 1 else { return 1 }

    let key = createKey(cents, denoms)
    if memo[key] == nil {
        var ways = 0

        var mDenoms = denoms
        let denom = mDenoms.removeFirst()

        for i in stride(from: 0, through: cents, by: denom) {
            let remain = cents - i
            ways += _countWaysForChange(remain, mDenoms, &memo)
        }

        memo[key] = ways
    }

    return memo[key]!
}

private func createKey(_ cents: Int, _ denoms: [Int]) -> String {
    return "\(cents)_\(denoms.first!)"
}
