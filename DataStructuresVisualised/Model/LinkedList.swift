//
//  LinkedList.swift
//  DataStructuresVisualised
//
//  Created by Alexander Bater on 16/03/2023.
//

import Foundation

class Node{
    let data: String
    var next: Node?
    
    init(data: String){
        self.data = data
        self.next = nil
    }
    
}

class LinkedList: ObservableObject{
    @Published var head: Node?
    @Published var message: String
    
    init(){
        self.head = nil
        self.message = ""
    }
    
    func traverse() -> [String]{
        var list1 = [String]()
        var currentItem = head
        while currentItem != nil {
            list1.append(currentItem!.data)
            currentItem = currentItem?.next
        }
        return list1
    }
    
    func addNode(data: String){
        if self.head == nil{
            self.head = Node(data: data)
        } else{
            var currentItem = self.head
            while currentItem?.next != nil{
                currentItem = currentItem?.next
            }
            let newItem = Node(data: data)
            currentItem?.next = newItem
        }
        self.message = "\(data) was added to the list"
    }
    func removeNode(data: String) {
        if head?.data == data {
            head = head?.next
            self.message = "\(data) was removed from the list"
        } else {
            var currentItem = head
            var previousItem: Node?
            while currentItem != nil && currentItem?.data != data {
                previousItem = currentItem
                currentItem = currentItem?.next
                self.message = "\(data) was removed from the list"
            }
            if currentItem == nil{
                self.message = "\(data) was not in the list"
            }
            else{
                self.message = "\(data) was removed from the list"
            }
            previousItem?.next = currentItem?.next
        }
        
    }
}
