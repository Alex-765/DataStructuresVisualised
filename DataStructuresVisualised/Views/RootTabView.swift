//
//  TabView.swift
//  DataStructuresVisualised
//
//  Created by Alexander Bater on 16/03/2023.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            StackView()
                .tabItem{
                    Image(systemName: "chart.bar")
                    Text("Stack")
                    
                }
            QueueView()
                .tabItem{
                    Image(systemName: "chart.bar")
                    Text("Queue")
                    
                }
            LinkedListView(linkedList: LinkedList())
                .tabItem{
                    Image(systemName: "chart.bar")
                    Text("Linked List")
                    
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
