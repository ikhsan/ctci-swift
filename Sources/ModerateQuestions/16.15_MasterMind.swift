import Foundation

public func masterMind(solution: String, guess: String) -> (Int, Int) {
    let sol = Array(solution)
    let gss = Array(guess)

    guard sol.count == 4 && gss.count == 4 else { return (-1, -1) }

    var hits = 0
    var pseudoHits = 0
    var solDict: [Character : Int] = [:]
    var gssDict: [Character : Int] = [:]

    for i in 0..<sol.count {
        let char1 = sol[i]
        let char2 = gss[i]

        if char1 == char2 {
            hits += 1
        } else {
            solDict[char1, default: 0] += 1
            gssDict[char2, default: 0] += 1
        }
    }

    for (char, count) in solDict {
        pseudoHits += min(gssDict[char, default: 0], count)
    }

    return (hits, pseudoHits)
}