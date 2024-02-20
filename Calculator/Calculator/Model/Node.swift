//
//  Node.swift
//  Calculator
//
//  Created by JIWOONG on 2024/02/17.
//

class Node<T> {
    let data: T
    var next: Node?
    
    init(data: T, next: Node?) {
        self.data = data
        self.next = next
    }
}
