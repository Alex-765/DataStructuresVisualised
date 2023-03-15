//
//  QueueView.swift
//  DataStructuresVisualised
//
//  Created by Alexander Bater on 15/03/2023.
//

import SwiftUI

struct QueueView: View {
    @State private var queue = Queue(length: 5)
    @State private var input: String = ""
    @State private var peeking: String = ""
    
    var body: some View {
        VStack{
            List {
                if queue.tail == -1{
                    Text("Queue Currently Empty")
                }
                else{
                    Text("")
                }
                ForEach(queue.stackArray.indices, id: \.self) { index in
                    HStack{
                        Text(String(queue.stackArray[index]))
                        if queue.tail != -1{
                            if index == queue.tail{
                                Spacer()
                                Text("Tail Pointer")
                            }
                            if index == queue.head{
                                Spacer()
                                Text("Head Pointer")
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
                            queue.push(item: Int(input)!)} }) {
                            Text("Push number")
                        }
                }
                HStack{
                    Button(action: { queue.pop() }) {
                        Text("Pop number")
                    }
                }
            }
        }
    }}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}
