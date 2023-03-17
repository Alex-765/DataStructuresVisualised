//
//  Queue.swift
//  DataStructuresVisualised
//
//  Created by Alexander Bater on 15/03/2023.
//

import Foundation

class Queue: ObservableObject{
    
    var length: Int
    var tail: Int
    var head: Int
    var stackArray: [Int]
    @Published var message: String
    
    init(length: Int){
        self.length = length
        self.stackArray = Array(repeating: 0, count: length)
        self.tail = -1
        self.head = 0
        self.message = ""
    }
    
    func pop(){
        if self.head >= self.length {
            self.message = "Unable to pop anymore"
        }
        else if self.tail > -1 && self.tail >= self.head{
            self.message = "\(self.stackArray[self.head]) was popped"
            self.head += 1
        }
        else{
            self.message = "Empty Queue. Cannot pop"
        }
    }
    
    func push(item: Int){
        if self.tail < self.length - 1{
            self.tail += 1
            self.stackArray[self.tail] = item
            self.message = "\(String(stackArray[tail])) was pushed"
        }
        else{
            self.message = "Queue Full. Cannot push"
        }
    }
}
