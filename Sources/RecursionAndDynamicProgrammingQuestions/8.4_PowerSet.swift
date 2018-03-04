import Foundation

public func allSubset<T : Comparable>(_ theSet: [T]) -> [[T]] {
    let all = theSet

    if all.isEmpty {
        return [Array<T>()]
    }

    let lastElement = all.last!
    let previousSet = allSubset(Array(all.dropLast()))

    let newSet: [[T]] = previousSet.map {
        var currentSet = $0
        currentSet.append(lastElement)
        return currentSet
    }

    return previousSet + newSet
}
