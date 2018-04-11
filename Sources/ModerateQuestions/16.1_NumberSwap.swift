import Foundation

public func numberSwap(_ a: inout Int, _ b: inout Int) {
    a = b - a
    b = b - a
    a = a + b    
}