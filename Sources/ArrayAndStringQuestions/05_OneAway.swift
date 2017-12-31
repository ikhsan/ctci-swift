import Foundation

public func isOneAway(_ lhs: String, _ rhs: String) -> Bool {
    if (lhs.count == rhs.count) {
        return isOneEdit(lhs, rhs)
    } else if (lhs.count + 1 == rhs.count) {
        return isOneInsertion(rhs, lhs)
    } else if (lhs.count == rhs.count + 1) {
        return isOneInsertion(lhs, rhs)
    }
    return false
}

private func isOneInsertion(_ lhs: String, _ rhs: String) -> Bool {
    var leftIndex = 0
    var rightIndex = 0

    while leftIndex < lhs.count && rightIndex < rhs.count {
        let leftChar = lhs[lhs.index(lhs.startIndex, offsetBy: leftIndex)]
        let rightChar = rhs[rhs.index(rhs.startIndex, offsetBy: rightIndex)]

        if leftChar == rightChar {
            leftIndex += 1
            rightIndex += 1
        } else {
            if (leftIndex != rightIndex) {
                return false
            }
            leftIndex += 1
        }
    }
    return true
}

private func isOneEdit(_ lhs: String, _ rhs: String) -> Bool {
    var foundEdit = false
    for (i, leftChar) in lhs.enumerated() {
        let index = rhs.index(rhs.startIndex, offsetBy: i)
        if (leftChar != rhs[index]) {
            if foundEdit {
                return false
            }
            foundEdit = true
        }
    }
    return true
}

/**
 Learnings:
 - Dictionary won't work, because order is important
 - Breakdown the problem and solve it one by one
 */
