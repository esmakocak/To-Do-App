//
//  TaskRow.swift
//  ToDo
//
//  Created by Esma Koçak on 28.07.2024.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack (spacing: 20) {
            Image(systemName: completed ? "checkmark.circle" : "circle" )
                .bold()
                .foregroundColor(completed ? Color("AccentColor") : Color("gr"))
            
            Text(task)
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
}
