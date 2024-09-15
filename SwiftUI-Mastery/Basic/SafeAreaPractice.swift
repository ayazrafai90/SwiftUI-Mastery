//
//  SafeAreaPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 15/08/24.
//

import SwiftUI

struct SafeAreaPractice: View {
    var body: some View {

        ZStack {
            Color.customSky
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Text("SwiftUI-Mastery")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 16)
                
                ForEach(0..<11) { index in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.white)
                        .frame(height: 100)
                        .shadow(color: .customPink.opacity(0.25), radius: 5)
                        .padding([.horizontal, .bottom], 16)
                    
                }
            }
            .clipped()
        }
        
//        ZStack {
//            /// Background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            
//            /// Foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.cyan)
//        }
    }
}

#Preview {
    SafeAreaPractice()
}
