//
//  TasksView.swift
//  ToDo
//
//  Created by Esma Koçak on 28.07.2024.
//

import SwiftUI

struct TasksView: View {
    var body: some View {
            VStack {
                Text("My tasks")
            } 
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("bg"))
    }
}

#Preview {
    TasksView()
        .preferredColorScheme(.dark)
}
