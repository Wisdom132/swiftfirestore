//
//  ContentView.swift
//  funfirebase
//
//  Created by Wisdom Ekpot on 7/19/21.
//

import SwiftUI

struct ContentView: View {
    @State private var task:String = ""
    @ObservedObject private var viewModel = TodoViewModel()

    var body: some View {
        
        // input field
        TextField("Start typing a task...", text: $task)
            .padding()
            .border(Color.black)
            .frame(minWidth: 100, idealWidth: 150, maxWidth: 240, minHeight: 30, idealHeight: 40, maxHeight: 50, alignment: .leading)
        
        // button to add
        Button(action: { self.viewModel.addNewData(name: task)}) {
            Text("Add Task")
        }.padding()
        .foregroundColor(.white)
        .background(Color.black)
        .cornerRadius(5)
        
        
        // list all items
        NavigationView {
            List(viewModel.todos) { todo in
                            VStack(alignment: .leading) {
                                Text(todo.name ?? "")
                            }
                        }.onAppear() {
                            self.viewModel.getAllData()
                        }.navigationTitle("All Tasks")
//            List() {
//                Text("Read")
//                Text("Execise")
//                Text("Text John")
//                Text("Say hello")
//            }.navigationTitle("All Tasks")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
