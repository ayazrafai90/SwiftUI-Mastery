//
//  TogglePractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 22/08/24.
//

import SwiftUI

struct TogglePractice: View {
    
    @State var isOnline: Bool = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            VStack(spacing: 16) {
                TitleView(description: "Learn about the Toggle/Switch", color: .white)
                VStack(spacing: 22) {
                    HStack {
                        Toggle("Online:", isOn: $isOnline)
                            .foregroundStyle(.white)
                    }
                    
                    Text(isOnline ? "I'm Online!" : "I'am currently Offline")
                        .font(.title)
                        .foregroundStyle(isOnline ? .green : .yellow)
                }
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    TogglePractice()
}
