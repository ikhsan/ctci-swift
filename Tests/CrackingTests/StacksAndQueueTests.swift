import DataStructure
import StacksAndQueuesQuestions
import XCTest

class StacksAndQueuesTests: XCTestCase {

    /**
     3.1: Three in One

     Describe how you could use a single array to implement three stacks
     */
    func _test_3_1_ThreeInOne() {}

    /**
     3.2: Stack Min

     How would you design a stack which, in addition to `push` and `pop`, has a function `min` which returns the minimum element? `Push`, `pop` and `min` should all operate in O(1) time
     */
    func test_3_2_StackMin() {
        let subject = MinStack<Int>()
        XCTAssertNil(subject.min())

        subject.push(3)
        XCTAssertEqual(subject.min(), 3)

        subject.push(5)
        XCTAssertEqual(subject.min(), 3)

        subject.push(10)
        XCTAssertEqual(subject.min(), 3)

        subject.push(1)
        XCTAssertEqual(subject.min(), 1)

        subject.push(9)
        subject.push(1)
        XCTAssertEqual(subject.min(), 1)

        XCTAssertEqual(subject.pop(), 1)
        XCTAssertEqual(subject.min(), 1)

        XCTAssertEqual(subject.pop(), 9)
        XCTAssertEqual(subject.min(), 1)

        XCTAssertEqual(subject.pop(), 1)
        XCTAssertEqual(subject.min(), 3)

        XCTAssertEqual(subject.pop(), 10)
        XCTAssertEqual(subject.pop(), 5)
        XCTAssertEqual(subject.pop(), 3)

        XCTAssertNil(subject.pop())
        XCTAssertNil(subject.min())
    }

    /**
     3.3: Stack of Plates: Imagine a (literal) stack of plates. If the stack gets too high, it might topple. Therefore, in real life, we would likely start a new stack when the previous stack exceeds some threshold. Implement a data structure `SetOfStacks` that mimics this. `SetOfStacks` should be composed of several stacks and should create a new stack once the previous one exceeds capacity. `SetOfStacks.push()` and `SetOfStacks.pop()` should behave identically to a single stack (that is, `pop()` should return the same values as it would if there were just a single stack).

     **FOLLOW UP**: Implement a function `popAt(int index)` which performs a pop operation on a specific sub-stack.
     */
    func _test_3_3_StackOfPlates() {}

    /**
     3.4: Queue via Stacks

     Implement a MyQueue class which implements a queue using two stacks
     */
    func test_3_4_QueueViaStacks() {
        let subject = MyQueue<Int>()

        subject.enqueue(1)
        subject.enqueue(2)
        subject.enqueue(3)

        XCTAssertEqual(subject.peek(), 1)
        XCTAssertEqual(subject.dequeue(), 1)
        XCTAssertEqual(subject.peek(), 2)

        subject.enqueue(4)
        subject.enqueue(5)

        XCTAssertEqual(subject.dequeue(), 2)
        XCTAssertEqual(subject.dequeue(), 3)
        XCTAssertEqual(subject.dequeue(), 4)
        XCTAssertEqual(subject.peek(), 5)
        XCTAssertEqual(subject.dequeue(), 5)

        XCTAssertNil(subject.peek())
        XCTAssert(subject.isEmpty)
    }

    /**
     3.5: Sort Stack

     Write a program to sort a stack such that the smallest items are on the top. You can use an additional temporary stack, but you may not copy the elements into any other data structure (such as an array). The stack supports the following operations: `push`, `pop`, `peek`, and `isEmpty`.
     */
    func test_3_5_SortStack() {
        let stack = Stack<Int>()
        stack.push(8)
        stack.push(5)
        stack.push(3)
        stack.push(10)
        stack.push(1)
        stack.push(5)

        let subject = sortStack(stack)

        XCTAssertEqual(subject.pop(), 1)
        XCTAssertEqual(subject.pop(), 3)
        XCTAssertEqual(subject.pop(), 5)
        XCTAssertEqual(subject.pop(), 5)
        XCTAssertEqual(subject.pop(), 8)
        XCTAssertEqual(subject.pop(), 10)
        XCTAssertNil(subject.peek())
    }

    /**
     3.6: Animal Shelter

     An animal shelter, which holds only dogs and cats, operates on a stricly "first in, first out" basis. People must adopt either the "oldest" (based on arrival time) of all animals at the shelter, or they can select whether they would prefer a dog or a cat (and will receive the oldest animal of that type). They cannot select which specific animal they would like. Create the data structures to maintain this system and impelement operations such as `enqueue`, `dequeueuAny`, `dequeueDog`, and `dequeueCat`. You may use the built-in LInkedList data structure.
     */
    func _test_3_6_AnimalShelter() {}
}
