//
//  ContentView.swift
//  DataStructuresVisualised
//
//  Created by Alexander Bater on 15/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var stack = Stack(length: 5)
    @State private var input: String = ""
    @State private var peeking: String = ""
    
    var body: some View {
        VStack{
            List {
                if stack.tail == -1{
                    Text("Stack Currently Empty")
                }
                else{
                    Text("")
                }
                ForEach(stack.stackArray.indices, id: \.self) { index in
                    HStack{
                        Text(String(stack.stackArray[index]))
                        if stack.tail != -1{
                            if index == stack.tail{
                                Spacer()
                                Text("Pointer")
                            }
                        }
                    }
                }
                Text("")
                HStack{
                    TextField("Enter a number to push", text: $input)
                    Spacer()
                    Button(action: {
                        if input != ""{
                            stack.push(item: Int(input)!)} }) {
                            Text("Push number")
                        }
                }
                HStack{
                    Button(action: { stack.pop() }) {
                        Text("Pop number")
                    }
                }
                HStack{
                    Button(action: { peeking = String(stack.peek()) }) {
                        Text("Peek at number")
                    }
                }
                if peeking != "0"{
                    Text(peeking)
                }
                else{
                    Text("Invalid")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
