import Foundation

public func isPermutation(_ str1: String, _ str2: String) -> Bool {
    if (str1.count != str2.count) {
        return false
    }

    var charCount: [Character : Int] = [:]

    for char in str1 {
        charCount[char, default: 0] += 1
    }
    for char in str2 {
        guard let count = charCount[char] else {
            return false
        }
        charCount[char] = count - 1
        if (charCount[char] == 0) {
            charCount.removeValue(forKey: char)
        }
    }

    return charCount.isEmpty
}


/*
 Learnings:
 - Forgot to clarify about whitespaces and case sensivity
 */

