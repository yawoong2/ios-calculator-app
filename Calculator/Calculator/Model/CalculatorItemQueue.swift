//
//  CalculatorItemQueue.swift
//  Calculator
//
//  Created by JIWOONG on 2024/02/19.
//

struct CalculatorItemQueue<Element>: CalculateItem {
    private var list = LinkedList<Element>()
    var isEmpty: Bool { list.isEmpty }
    var count: Int { list.count }
    
    mutating func enqueue(element: Element) {
        list.addLast(element: element)
    }
    
    mutating func dequeue() -> Element? {
        return list.deleteFirst()
    }
    
    func first() -> Element? {
        return list.peek()
    }
    
    mutating func clear() {
        list.clear()
    }
}
