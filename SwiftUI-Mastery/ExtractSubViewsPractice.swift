//
//  ExtractSubViewsPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 16/08/24.
//

import SwiftUI

struct ExtractSubViewsPractice: View {
    var body: some View {
        ZStack {
            // BACKGROUND LAYER
            Color.customSky
                .edgesIgnoringSafeArea(.all)
            
            // CONTENT LAYER
            VStack {
                TitleView(description: "Explore Extracted Views to keep code clean and reusable", color: .black)
                Spacer()
                CustomView(title: "Apples", count: 5, color: .red)
                CustomView(title: "Strawberry", count: 20, color: .customPink)
                CustomView(title: "Bananas", count: 10, color: .yellow)
                Spacer()
            }
        }
    }
}

#Preview {
    ExtractSubViewsPractice()
}

struct CustomView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .bold()
                .font(.title)
                .underline()
            
            Text(title)
                .font(.title2)
        }
        .padding(.all, 26)
        .foregroundColor(.white)
        .background(color)
        .cornerRadius(8)
        .shadow(color: color, radius: 5)
    }
}

struct TitleView: View {
    let description: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 12) {
            Text("SwiftUI-Mastery")
                .bold()
                .font(.title)
                .foregroundColor(color)
                .shadow(color: color, radius: 8, x: 5, y: 5)
            
            Text(description)
                .font(.system(size: 18))
                .foregroundColor(color.opacity(0.5))
        }
        .multilineTextAlignment(.center)
    }
}
