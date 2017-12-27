import Foundation

private func clean(_ string: String) -> String {
    let charSet = CharacterSet.lowercaseLetters.inverted.union(.whitespacesAndNewlines)
    return string.components(separatedBy: charSet).joined()
}

private func asciiIndex(_ char: Character) -> Int {
    let s = String(char).unicodeScalars
    return Int(s[s.startIndex].value)
}

/// Solution #1: Use dictionary
///
/// Complexity: O(n) time, O(n) space where n is number of unique char
public func isUnique1(_ string: String) -> Bool {
    var chars: [Character : Int] = [:]

    for char in clean(string) {
        if chars[char] != nil { return false }
        chars[char, default: 0] += 1
    }

    return true
}

/// Solution #2: Use bits
///
/// Complexity: O(n) time, O(1) space
/// Int can either be Int32 or Int64 based on its platform, to make a safe assumption,
/// we only support lowercase letter in ascii which only needs 26 bit
public func isUnique2(_ string: String) -> Bool {
    let words = clean(string)
    var letter = 0

    for char in words {
        let offset = asciiIndex(char) - asciiIndex("a")
        if (letter & (1 << offset) > 0) {
            return false
        }
        letter = letter | (1 << offset)
    }

    return true
}


/*
 Learnings:
 - Don't forget about whitespaces
 - Make assumption on character encoding, above just assumes that it only supports lowercase letters
 - Bit manipulation: switch with OR (&), check with AND(|), and shift 1 to the left using offset (BITWISE SHIFT <<)
 */

