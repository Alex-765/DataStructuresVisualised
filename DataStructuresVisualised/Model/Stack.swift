//
//  Stack.swift
//  DataStructuresVisualised
//
//  Created by Alexander Bater on 15/03/2023.
//

import Foundation

class Stack: ObservableObject{
    var length: Int
    var tail: Int
    var stackArray: [Int]
    @Published var message: String
    
    init(length: Int){
        self.length = length
        self.stackArray = Array(repeating: 0, count: length)
        self.tail = -1
        self.message = ""
    }
    
    func pop(){
        if self.tail > -1 {
            self.message = "\(String(stackArray[tail])) was popped"
            self.tail -= 1
        }
            else{
                self.message = "Empty Stack. Cannot pop"
            }
    }
    
    func push(item: Int){
        if self.tail < self.length - 1{
            self.tail += 1
            self.stackArray[self.tail] = item
            self.message = "\(String(stackArray[tail])) was pushed"
        }
        else{
            self.message = "Stack Full. Cannot push"
        }
    }
    
}
