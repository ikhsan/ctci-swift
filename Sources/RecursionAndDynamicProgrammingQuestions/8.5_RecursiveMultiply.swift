import Foundation

public func recursiveMultiply(_ x: Int, _ y: Int) -> Int {
    let s = min(x, y)
    let b = max(x, y)
    return _recursiveMultiply2(s, b)
}

private func _recursiveMultiply1(_ s: Int, _ b: Int) -> Int {
    switch s {
    case 0: return 0
    case 1: return b
    default: return _recursiveMultiply1(s - 1, b) + b
    }
}

public func recursiveMultiply2(_ x: Int, _ y: Int) -> Int {
    let s = min(x, y)
    let b = max(x, y)
    return _recursiveMultiply2(s, b)
}

private func _recursiveMultiply2(_ s: Int, _ b: Int) -> Int {
    switch s {
    case 0: return 0
    case 1: return b
    default:
        let halfS = s >> 1
        let half = _recursiveMultiply2(halfS, b)
        let offset = (s % 2 == 0) ? 0 : b
        return half + half + offset
    }
}
