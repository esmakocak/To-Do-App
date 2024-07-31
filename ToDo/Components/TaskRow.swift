//
//  TaskRow.swift
//  ToDo
//
//  Created by Esma Koçak on 28.07.2024.
//

import SwiftUI
import RealmSwift

struct TaskRow: View {
    var task: String
    var completed: Bool
    @EnvironmentObject var realmManager: RealmManager
    var forDelete: ObjectId?
    
    var body: some View {
        HStack (spacing: 20) {
            Image(systemName: completed ? "checkmark.circle" : "circle" )
                .bold()
                .foregroundColor(completed ? Color("AccentColor") : Color("gr"))
            
            Text(task)
            
            Spacer()
            
            Image(systemName: "xmark")
                .foregroundColor(Color("AccentColor"))
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)){
                        realmManager.deleteTask(id: forDelete!)
                    }
                    
                }

        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(30)
        .background(Color("primary"))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: .black.opacity(0.3), radius: 5, x: 3, y: 3)

    }
}

#Preview {
    TaskRow(task: "Do laundry", completed: true)
        .preferredColorScheme(.dark)
        .environmentObject(RealmManager())
}
