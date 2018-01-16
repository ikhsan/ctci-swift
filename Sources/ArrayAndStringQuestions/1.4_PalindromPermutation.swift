import Foundation

/// Only accept letters and returns all lowercase letters
private func clean(_ str: String) -> String {
    let charSet = CharacterSet.lowercaseLetters.inverted.union(.whitespacesAndNewlines)
    return str.lowercased().components(separatedBy: charSet).joined()
}

private func isOdd(_ number: Int) -> Bool { return number % 2 == 1 }

/// Complexity: O(n) time and space
public func isPalindromePermutation(_ str: String) -> Bool {
    let cleaned = clean(str)

    var counter: [Character : Int] = [:]
    for char in cleaned {
        counter[char, default: 0] += 1
    }

    let oddCharCount = counter.values.filter(isOdd).count

    return oddCharCount < 2
}

private func asciiIndex(_ char: Character) -> Int {
    let s = String(char).unicodeScalars
    return Int(s[s.startIndex].value)
}

private func toggle(_ vector: Int, _ offset: Int) -> Int {
    guard offset >= 0 else { return vector }

    let mask = (1 << offset)
    return (vector & mask == 0)
        ? vector | mask
        : vector & ~mask
}

/// Complexity: O(n) time and O(1) space
/// Use bit vector
public func isPalindromePermutation2(_ str: String) -> Bool {
    let cleaned = clean(str)

    var counter: Int = 0
    for char in cleaned {
        let offset = asciiIndex(char) - asciiIndex("a")
        counter = toggle(counter, offset)
    }

    let isOnlyOneBitSet = (counter - 1) & counter == 0
    return counter == 0 || isOnlyOneBitSet
}



/**
 Learnings:
 - Hash table is really powerful!
 - Don't forget to clean up the input
 - Think again about the information needed in the hash table, if we only need a flag-y value, then bit vector (Int32) should work
 */
