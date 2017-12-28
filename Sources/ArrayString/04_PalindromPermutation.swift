import Foundation

/// Only accept letters and returns all lowercase letters
private func clean(_ str: String) -> String {
    let charSet = CharacterSet.lowercaseLetters.inverted.union(.whitespacesAndNewlines)
    return str.lowercased().components(separatedBy: charSet).joined()
}

private func isOdd(_ number: Int) -> Bool { return number % 2 == 1 }

public func isPalindromePermutation(_ str: String) -> Bool {
    let cleaned = clean(str)

    var counter: [Character : Int] = [:]
    for char in cleaned {
        counter[char, default: 0] += 1
    }

    let oddCharCount = counter.values.filter(isOdd).count

    return oddCharCount < 2
}

/**
 Learnings:
 - Hash table is really powerful!
 - Don't forget to clean up the input
 */
