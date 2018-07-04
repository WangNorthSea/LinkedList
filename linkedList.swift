
import Foundation

public class LinkedList {
    var value: Double
    var address: LinkedList?
    
    init(_ value: Double) {
        self.value = value
        self.address = nil
    }
}

public func createLinkedList(count: Int) -> LinkedList {
    let HeadNode = LinkedList(0)
    var Tail = HeadNode
    assert(count >= 1, "No linked list was created.")
    var Node = LinkedList(0)
    HeadNode.address = Node
    Tail = Node
    for _ in 1..<count {
        Node = LinkedList(0)
        Tail.address = Node
        Tail = Node
    }
    return HeadNode
}

public func showLinkedList(_ HeadNode: LinkedList) {
    var Tail = HeadNode.address
    if Tail == nil {
        return
    }
    print("The values of this linked list are: ")
    while Tail != nil {
        print(Tail!.value)
        Tail = Tail!.address
    }
}

print("Please enter the number of nodes in this linked list: ")
let count = Int(readLine()!)!
let lHead = createLinkedList(count: count)
var Tail = lHead.address
for i in 1...count {
    print("Please enter the value of No.\(i) node: ")
    let value = Double(readLine()!)!
    Tail!.value = value
    Tail = Tail!.address
}
showLinkedList(lHead)
