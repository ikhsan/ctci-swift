import DataStructure

public func detectLoop<T>(_ list: LinkedList<T>) -> Bool {
    guard !list.isEmpty else { return false }

    var hare = list.head
    var tortoise = list.head

    repeat {
        hare = hare?.next?.next
        tortoise = tortoise?.next

        if (hare === tortoise) { return true }
    } while (hare != nil && tortoise != nil)

    return false
}
