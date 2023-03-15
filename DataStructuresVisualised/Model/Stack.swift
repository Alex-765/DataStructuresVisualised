//
//  Stack.swift
//  DataStructuresVisualised
//
//  Created by Alexander Bater on 15/03/2023.
//

import Foundation

class Stack{
    var length: Int
    var tail: Int
    var stackArray: [Int]
    
    init(length: Int){
        self.length = length
        self.stackArray = Array(repeating: 0, count: length)
        self.tail = -1
    }
    
    func pop(){
        if self.tail > -1 {
            self.tail -= 1
        }
        //    else{
        //    }
    }
    
    func push(item: Int){
        if self.tail < self.length - 1 {
            self.tail += 1
            self.stackArray[self.tail] = item
        }
        //    else{
        //    }
    }
    
    func peek() -> Int {
        if tail != -1{
            return self.stackArray[self.tail]
        }
        else {
            return 0
        }
    }
}
