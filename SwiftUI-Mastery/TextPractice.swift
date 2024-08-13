//
//  TextPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 13/08/24.
//

import SwiftUI

struct TextPractice: View {
    var body: some View {
        Text("Welcome to my SwiftUI repository!")
            //.fontWeight(.bold)
            //.bold()
            .font(.system(size: 16, weight: .semibold, design: .serif))
            .underline(color: .red)
            .foregroundColor(.red)
            .kerning(1.0) // Characters spacing
            .padding()
            .multilineTextAlignment(.center)
            .textCase(.uppercase)
        
        Text("SwiftUI Exploration A personal journey through SwiftUI, covering fundamental to advanced concepts. This repository serves as a self-learning tool and a showcase of my expertise in SwiftUI development.")
            .multilineTextAlignment(.center)
            .font(.system(size: 16, weight: .light, design: .rounded))
            .baselineOffset(5.0) // Line spacing
            .padding(16)
    }
}

#Preview {
    TextPractice()
}
