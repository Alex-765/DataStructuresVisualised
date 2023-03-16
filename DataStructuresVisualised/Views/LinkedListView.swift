//
//  LinkedListView.swift
//  DataStructuresVisualised
//
//  Created by Alexander Bater on 16/03/2023.
//

import SwiftUI

struct LinkedListView: View {
    @State private var input1: String = ""
    @State private var input2: String = ""
    @StateObject var linkedList: LinkedList
    
    var body: some View {
        List {
            Text("Linked List Below")
            ForEach(linkedList.traverse().indices, id: \.self) { index in
                HStack{
                    Text(linkedList.traverse()[index])
                    if linkedList.traverse().count-2 >= index{
                        Spacer()
                        Text("Points To")
                        Image(systemName: "chevron.down")
                    }

                }
            }
            Text("")
            HStack{
                TextField("Enter a number to add", text: $input1)
                Spacer()
                Button(action: {
                    if input1 != ""{
                        linkedList.addNode(data: input1)} }) {
                        Text("Add to List")
                    }
            }
            HStack{
                TextField("Enter a number to remove", text: $input2)
                Spacer()
                Button(action: {
                    if input2 != ""{
                        linkedList.removeNode(data: input2)} }) {
                        Text("Remove")
                    }
            }
            Text(linkedList.message)
        }
    }
}

struct LinkedListView_Previews: PreviewProvider {
    static var previews: some View {
        LinkedListView(linkedList: LinkedList())
    }
}
