import Foundation

/*
 Problem: Check Permutation
 Given two strings, write a method to diecide if one is permutation of the other.
 */

func isPermutation(_ str1: String, _ str2: String) -> Bool {
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

assert(isPermutation("abcde", "ebacd"))
assert(isPermutation("bba", "bab"))
assert(!isPermutation("hello", "world"))
assert(!isPermutation("hello", "world!"))

/*
 Learnings:
 - Forgot to clarify about whitespaces and case sensivity
 */

print("🤘")
