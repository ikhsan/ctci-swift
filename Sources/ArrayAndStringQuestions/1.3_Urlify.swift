import Foundation

public func urlify(_ str: String, _ size: Int) -> String {
    let word = str.trimmingCharacters(in: .whitespacesAndNewlines)

    var stringSize = size
    for char in word {
        if char == " " { stringSize += 2 }
    }

    var chars: [Character] = Array(repeating: Character("_"), count: stringSize)
    var index = 0

    for char in word {
        if char != " " {
            chars[index] = char
            index += 1
        } else {
            chars[index] = "%"
            chars[index+1] = "2"
            chars[index+2] = "0"
            index += 3
        }
    }

    return String(chars)
}

/*
 Learnings:
 - Misunderstood the true size in the question
 - Don't forget trimming whitespaces
*/
