//
//  ExtractedFunctionsPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 16/08/24.
//

import SwiftUI

struct ExtractedFunctionsPractice: View {
    
    @State var backgroundColor = Color.customPink
    
    var body: some View {
        ZStack {
            // BACKGROUND
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // CONTENT
            bodyContent
        }
    }
    
    var bodyContent: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button("TAP ME") {
                tapMeButtonTapped()
            }
            .font(.system(.headline, weight: .bold))
            .padding()
            .background(.black)
            .accentColor(.white)
            .cornerRadius(8)
            .shadow(color: .black, radius: 5)
        }
    }
    
    private func tapMeButtonTapped() {
        backgroundColor = .customSky
    }
}

#Preview {
    ExtractedFunctionsPractice()
}
