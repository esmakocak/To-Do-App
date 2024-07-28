//
//  AddTaskView.swift
//  ToDo
//
//  Created by Esma Koçak on 28.07.2024.
//

import SwiftUI

struct AddTaskView: View {
    @State private var title: String = ""
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title2).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter your task here", text: $title )
                .padding()
                .background(Color("primary").cornerRadius(10))
                .font(.headline)
            
            
            // MARK: Add Task Button
            Button(action: {
                print("Task added!")
            }) {
                Text("Add Task")
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color("AccentColor"), Color("secondary")]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(30)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
            }
            
            Spacer()
            
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color("bg"))
    }
}

#Preview {
    AddTaskView()
        .preferredColorScheme(.dark)
}
