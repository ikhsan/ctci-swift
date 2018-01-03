import DataStructure
import StacksAndQueuesQuestions

import XCTest

class StacksAndQueuesTests: XCTestCase {

    /**
     4: Queue via Stacks

     Implement a MyQueue class which implements a queue using two stacks
     */
    func test_04_QueueViaStacks() {
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

}

