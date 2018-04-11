import Foundation

public func countZeroFactorial(_ num: Int) -> Int {
    var count = 0
    var i = 5
    while ((num / i) > 0) {
      count += num / i
      i *= 5
    }
    return count
}