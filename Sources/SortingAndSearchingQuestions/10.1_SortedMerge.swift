import Foundation

public func mergeSortedArray(_ a: inout [Int], _ countA: Int, _ b: [Int]) {
    var indexA = countA - 1 // -1
    var indexB = b.count - 1 // 0
    var indexMerge = countA + b.count - 1 // 0

    while indexB >= 0 {
        if indexA < 0 || b[indexB] > a[indexA] {
            a[indexMerge] = b[indexB]
            indexB -= 1
        } else {
            a[indexMerge] = a[indexA]
            indexA -= 1
        }
        indexMerge -= 1
    }
}
