//
//  ContextPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 21/08/24.
//

import SwiftUI

struct ContextPractice: View {
    
    @State var color: Color = .customSky
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            Image(systemName: "house.fill")
                .font(.title)
            VStack(alignment: .leading) {
                Text("SwiftUI-Mastery")
                    .bold()
                Text("Show context view in SwiftUI")
            }
        }
        .foregroundStyle(.white)
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 16)
            .fill(color)
        )
        .contextMenu(ContextMenu(menuItems: {
            Button(action: { color = .red }, label: {
                Label("Red", systemImage: "flame.fill")
            })
            
            Button(action: { color = .customSky }, label: {
                Label("Sky", systemImage: "flame.fill")
            })
            
            Button(action: { color = .yellow }, label: {
                Label("Yellow", systemImage: "flame.fill")
            })
            
            Button(action: { color = .customPink }, label: {
                Label("Pink", systemImage: "flame.fill")
            })
        }))
    }
}

#Preview {
    ContextPractice()
}
