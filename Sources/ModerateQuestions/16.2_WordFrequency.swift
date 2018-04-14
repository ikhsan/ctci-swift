import Foundation

public func wordFreq(_ word: String, from book: [String]) -> Int {
    let dict = createDictionary(book: book)
    let key = normalizeKey(word)
    return dict[key] ?? 0
}

private func normalizeKey(_ word: String) -> String {
    return word.lowercased()
}

private func createDictionary(book: [String]) -> [String : Int] {
    var dict: [String : Int] = [:]

    for word in book where !word.isEmpty {
        let key = normalizeKey(word)
        dict[key, default: 0] += 1
    }

    return dict
}