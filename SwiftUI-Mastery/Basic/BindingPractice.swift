//
//  BindingPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 16/08/24.
//

import SwiftUI

struct BindingPractice: View {
    
    @State var backgroundColor = Color.orange
    @State var title = "This is sample title content"
    
    var body: some View {
        ZStack {
            // Background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // Content
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .font(.title)
                CustomButton(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingPractice()
}

struct CustomButton: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .blue
    
    var body: some View {
        Button(action: {
            if backgroundColor == .red {
                backgroundColor = .orange
                buttonColor = .blue
                title = "It's ORANGE background"
            } else {
                backgroundColor = .red
                buttonColor = .black
                title = "It's RED background"
            }
            
        }, label: {
            Text("Button")
                .bold()
        })
        .foregroundColor(.white)
        .padding()
        .background(buttonColor)
        .cornerRadius(8.0)
        .shadow(color: buttonColor, radius: 5)
    }
}
