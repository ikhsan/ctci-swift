import Foundation

public func generateParentheses(_ n: Int) -> Set<String> {
    switch n {
    case ..<1:
        return []
    case 1:
        return ["()"]
    default:
        let previousSet = generateParentheses(n - 1)
        return previousSet.reduce(into: []) { result, element in
            result.insert("()\(element)")
            result.insert("(\(element))")
            result.insert("\(element)()")
        }
    }
}
