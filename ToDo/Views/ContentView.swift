//
//  ContentView.swift
//  ToDo
//
//  Created by Esma Koçak on 28.07.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        
        ZStack (alignment: .bottomTrailing) {
            TasksView()
                .environmentObject(RealmManager())
            
            SmallAddButton()
                .padding()
                .padding(.trailing)
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(RealmManager())

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color("bg"))
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
