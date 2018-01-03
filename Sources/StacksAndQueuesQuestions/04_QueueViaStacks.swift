import DataStructure

public class MyQueue<T> {

    private let enqueueStack: Stack<T>
    private let dequeueStack: Stack<T>

    public var isEmpty: Bool {
        return enqueueStack.isEmpty && dequeueStack.isEmpty
    }

    public init() {
        self.enqueueStack = .init()
        self.dequeueStack = .init()
    }

    public func enqueue(_ value: T) {
        enqueueStack.push(value)
    }

    public func dequeue() -> T? {
        if dequeueStack.isEmpty {
            backFill()
        }
        return dequeueStack.pop()
    }

    public func peek() -> T? {
        if dequeueStack.isEmpty {
            backFill()
        }
        return dequeueStack.peek()
    }

    private func backFill() {
        while let val = enqueueStack.pop() {
            dequeueStack.push(val)
        }
    }
}

