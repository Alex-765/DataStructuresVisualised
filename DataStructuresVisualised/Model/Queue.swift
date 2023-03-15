//
//  Queue.swift
//  DataStructuresVisualised
//
//  Created by Alexander Bater on 15/03/2023.
//

import Foundation

class Queue{
    
    var length: Int
    var tail: Int
    var head: Int
    var stackArray: [Int]
    
    init(length: Int){
        self.length = length
        self.stackArray = Array(repeating: 0, count: length)
        self.tail = -1
        self.head = 0
    }
    
    func pop(){
        if self.tail > -1 {
//            print("Value \(self.stackArray[self.head]) was popped out the list")
            self.head += 1
        }
        else{
//            print("Empty List. Cannot pop")
        }
    }
    
    func push(item: Int){
        if self.tail < self.length - 1 {
            self.tail += 1
            self.stackArray[self.tail] = item
        }
        else{
//            print("List Full. Cannot push")
        }
    }
    
    func peek(){
        if tail == -1{
//            print("Empty")
        }
        else{
//            print("Value \(self.stackArray[head]) is at the start of the queue")
        }
    }
}
