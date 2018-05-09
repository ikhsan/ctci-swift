import Foundation

public func calculateVolume(histogram: [Int]) -> Int {
    var maxBars: [Int] = []
    var maxBar = 0
    for i in (0..<histogram.count).reversed() {
        maxBar = max(maxBar, histogram[i])
        maxBars.insert(maxBar, at: 0)
    }

    var res = 0
    var leftBar = 0
    for i in 0..<histogram.count-1 {
        let bar = histogram[i]
        let rightBar = maxBars[i + 1]

        let h = min(leftBar, rightBar)
        let vol = h - bar
        if vol > 0 {
            res += vol
        }

        leftBar = max(leftBar, bar)
    }

    return res
}