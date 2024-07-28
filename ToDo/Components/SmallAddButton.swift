//
//  SmallAddButton.swift
//  ToDo
//
//  Created by Esma Koçak on 28.07.2024.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("AccentColor"), Color("secondary")]), startPoint: .leading, endPoint: .trailing)
                )
        
            Image(systemName: "plus")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .bold))
                
                
            
        }
        .frame(width: 60, height: 60)
    }
}

#Preview {
    SmallAddButton()
}