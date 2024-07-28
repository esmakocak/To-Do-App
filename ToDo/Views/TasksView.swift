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
                    .foregroundColor(.white)
                    .font(.title2).bold()
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("bg"))
    }
}

#Preview {
    TasksView()
        .environmentObject(RealmManager())
        .preferredColorScheme(.dark)
}
