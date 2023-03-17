//
//  DataStructuresVisualisedTests.swift
//  DataStructuresVisualisedTests
//
//  Created by Alexander Bater on 15/03/2023.
//

import XCTest
@testable import DataStructuresVisualised

class DataStructuresVisualisedTests: XCTestCase {

    func testPushingStack() {
        let stack = Stack(length: 5)
        stack.push(item: 5)
        stack.push(item: 8)
        stack.push(item: 4)
        let expected = [5,8,4,0,0]
        let actual = stack.stackArray
        
        XCTAssertEqual(expected,actual)
    }
    
    func testPushingFullStack() {
        let stack = Stack(length: 1)
        stack.push(item: 5)
        stack.push(item: 8)
        let expected = "Stack Full. Cannot push"
        let actual = stack.message
        
        XCTAssertEqual(expected,actual)
    }
    
    func testPoppingEmptyStack() {
        let stack = Stack(length: 5)
        stack.pop()
        let expected = "Empty Stack. Cannot pop"
        let actual = stack.message
        
        XCTAssertEqual(expected,actual)
    }
    
    func testPoppingFilledStack() {
        let stack = Stack(length: 5)
        stack.push(item: 5)
        stack.pop()
        let expected = "5 was popped"
        let actual = stack.message
        
        XCTAssertEqual(expected,actual)
    }
    
    func testPushingQueue() {
        let queue = Queue(length: 5)
        queue.push(item: 5)
        queue.push(item: 8)
        queue.push(item: 4)
        let expected = [5,8,4,0,0]
        let actual = queue.stackArray
        
        XCTAssertEqual(expected,actual)
    }
    
    func testPushingFullQueue() {
        let queue = Queue(length: 1)
        queue.push(item: 5)
        queue.push(item: 8)
        let expected = "Queue Full. Cannot push"
        let actual = queue.message
        
        XCTAssertEqual(expected,actual)
    }
    
    func testPoppingEmptyQueue() {
        let queue = Queue(length: 5)
        queue.pop()
        let expected = "Empty Queue. Cannot pop"
        let actual = queue.message
        
        XCTAssertEqual(expected,actual)
    }

    func testPoppingFilledQueue() {
        let queue = Queue(length: 5)
        queue.push(item: 5)
        queue.push(item: 8)
        queue.pop()
        let expected = "5 was popped"
        let actual = queue.message
        
        XCTAssertEqual(expected,actual)
    }

    func testAddNodeLinkedList(){
        let linkedList = LinkedList()
        linkedList.addNode(data: "5")
        
        let expected = "5 was added to the list"
        let actual = linkedList.message
        
        XCTAssertEqual(expected,actual)
    }
    
    func testTraverseLinkedList(){
        let linkedList = LinkedList()
        linkedList.addNode(data: "5")
        linkedList.addNode(data: "4")
        
        let expected = linkedList.traverse()
        let actual = ["5","4"]
        
        XCTAssertEqual(expected,actual)
    }
    
    func testremoveEmptyLinkedList(){
        let linkedList = LinkedList()
        linkedList.removeNode(data: "5")
        
        let expected = "5 was not in the list"
        let actual = linkedList.message
        
        XCTAssertEqual(expected,actual)
    }
    func testremoveFilledLinkedList(){
        let linkedList = LinkedList()
        linkedList.addNode(data: "5")
        linkedList.removeNode(data: "5")
        
        let expected = "5 was removed from the list"
        let actual = linkedList.message
        
        XCTAssertEqual(expected,actual)
    }
    func testremoveValueNotInLinkedList(){
        let linkedList = LinkedList()
        linkedList.addNode(data: "5")
        linkedList.removeNode(data: "7")
        
        let expected = "7 was not in the list"
        let actual = linkedList.message
        
        XCTAssertEqual(expected,actual)
    }
}
