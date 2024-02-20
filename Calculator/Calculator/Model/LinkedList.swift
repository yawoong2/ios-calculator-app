//
//  CustomLinkedList.swift
//  Calculator
//
//  Created by JIWOONG on 2024/02/17.
//

struct LinkedList<Element> {
    private var head: Node<Element>?
    private var tail: Node<Element>?
    
    var isEmpty: Bool { head == nil }
    
    var count: Int {
        var result = 0
        var temp = head
        while temp != nil {
            temp = temp?.next
            result += 1
        }
        return result
    }
    
    mutating func addLast(element: Element) {
        let newNode = Node(data: element, next: nil)
        if isEmpty {
            head = newNode
            tail = head
        } else {
            tail?.next = newNode
            tail = newNode
        }
    }
    
    mutating func deleteFirst() -> Element? {
        guard let result = head?.data else {
            return nil
        }
        
        if head?.next == nil {
            head = nil
            tail = nil
            
            return result
        }

        head = head?.next
        
        return result
    }
    
    func peek() -> Element? {
        isEmpty ? nil : head?.data
    }
    
    mutating func clear() {
        head = nil
        tail = nil
    }
}
