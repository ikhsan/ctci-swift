import DataStructure

public class MinStack<T: Comparable> {
    private var mainStack: [T]
    private var minStack: [T]

    public init() {
        mainStack = .init()
        minStack = .init()
    }

    public func peek() -> T? {
        return mainStack.last
    }

    public func min() -> T? {
        return minStack.last
    }

    public func push(_ value: T) {
        mainStack.append(value)

        if !minStack.isEmpty && value > min()! { return }
        minStack.append(value)
    }

    public func pop() -> T? {
        guard !mainStack.isEmpty else { return nil }

        let lastValue = mainStack.removeLast()
        if lastValue == min() {
            minStack.removeLast()
        }
        return lastValue
    }
}

/**
 Learnings:
 - Realise another easy solution is to have the value as pair (value, minValue) but it might waste more space than this current solution
*/
