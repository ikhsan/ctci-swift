import Foundation

public var isSubstringCallCount = 0

public func isSubstring(_ needle: String, _ haystack: String) -> Bool {
    isSubstringCallCount += 1
    return haystack.range(of: needle) != nil
}

public func isRotation(_ s1: String, _ s2: String) -> Bool {
    return isSubstring(s1, s2 + s2)
}
