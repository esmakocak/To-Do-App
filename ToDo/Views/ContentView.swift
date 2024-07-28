//
//  ContentView.swift
//  ToDo
//
//  Created by Esma Koçak on 28.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showAddTaskView = false
    
    var body: some View {
        
        ZStack (alignment: .bottomTrailing) {
            TasksView()
            
            SmallAddButton()
                .padding()
                .padding(.trailing)
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color("bg"))
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
