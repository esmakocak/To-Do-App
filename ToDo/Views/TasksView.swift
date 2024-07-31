//
//  TasksView.swift
//  ToDo
//
//  Created by Esma Koçak on 28.07.2024.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        VStack {
            Text("My tasks")
                .font(.title2).bold()
                .padding(.horizontal)
                .padding(.top)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView {
                LazyVStack {
                    ForEach(realmManager.tasks, id: \.id) { task in
                        if !task.isInvalidated {
                            HStack {
                                TaskRow(task: task.title, completed: task.completed, forDelete: task.id)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.3)) {
                                            realmManager.updateTask(id: task.id, completed: !task.completed)
                                        }
                                    }
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            
            Spacer()
        }
    }
}


#Preview {
    TasksView()
        .environmentObject(RealmManager())
        .preferredColorScheme(.dark)
}
