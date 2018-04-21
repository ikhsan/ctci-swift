import Foundation

public func largestSum(_ arr: [Int]) -> Int {
    guard !arr.isEmpty else { return 0 }
    guard arr.count > 1 else { return arr.first! }
    
    var current = arr.first!
    var maxSum = arr.first!
    for val in arr.dropFirst() {
        current = max(val, current + val)
        maxSum = max(maxSum, current)
    }
    return maxSum
}