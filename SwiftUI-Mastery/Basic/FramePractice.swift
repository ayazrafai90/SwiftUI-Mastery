//
//  FramePractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 14/08/24.
//

import SwiftUI

struct FramePractice: View {
    var body: some View {
        Text("Welcome to SwiftUI-Mastery! 🎉")
            .background(.pink)
            .frame(width: 120, alignment: .top)
            .background(.yellow)
        
            .frame(width: 150)
            .background(.cyan)
        
            .frame(width: 180)
            .background(.green)
            
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.brown)
        
            .frame(height: 200, alignment: .top)
            .background(.yellow)
        
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.purple)
    }
}

#Preview {
    FramePractice()
}
