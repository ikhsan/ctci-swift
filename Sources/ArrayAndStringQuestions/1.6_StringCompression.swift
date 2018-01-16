import Foundation

/// Complexity: O(n) time and space
public func compress(_ str: String) -> String {
    let strCount = str.utf8.count
    var chars: [Character] = Array(repeating: "_", count: strCount)
    var current: Character? = nil
    var counter = 0
    var index = 0

    for char in str {
        if char != current {
            if counter > 0 {
                chars[index] = Character("\(counter)")
                index += 1
                if index >= strCount { return str }
            }

            chars[index] = char
            index += 1
            if index >= strCount { return str }

            current = char
            counter = 0
        }
        counter += 1
    }

    if counter > 0 {
        chars[index] = Character("\(counter)")
    }

    return String(chars.prefix(index + 1))
}

/*
 Learnings:
 - Making many String concats is not efficient
 - In C/Java, terminating String is easier, in Swift we just cut the string until index
 */
