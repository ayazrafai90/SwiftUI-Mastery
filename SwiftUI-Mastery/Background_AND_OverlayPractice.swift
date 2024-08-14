//
//  Background_AND_OverlayPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 14/08/24.
//

import SwiftUI

struct Background_AND_OverlayPractice: View {
    var body: some View {
//        Circle()
//            .fill(.orange)
//            .frame(width: 80, height: 80, alignment: .center)
//            .overlay(
//                Text("99+")
//                    .bold()
//                    .foregroundColor(.white)
//            )
//            .shadow(color: .orange, radius: 10)
//            .background(
//                Circle().fill(.green)
//                    .frame(width: 120, height: 120)
//                    .shadow(color: .green, radius: 10)
//            )
        
//        Rectangle()
//            .frame(width: 120, height: 120)
//            .overlay(
//                Circle()
//                    .fill(.red)
//                    .frame(width: 70, height: 70)
//                , alignment: .topTrailing
//            )
//            .background(
//                Rectangle()
//                    .fill(.orange)
//                    .frame(width: 170, height: 170)
//                , alignment: .bottomLeading
//            )
        
        Image("apple")
            .resizable()
            .foregroundColor(.white.opacity(0.65))
            .frame(width: 50, height: 50)
            .shadow(color: .white, radius: 10)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [.cyan, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 120, height: 120)
                    .shadow(color: .cyan.opacity(0.75), radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.pink)
                            .frame(width: 40, height: 40)
                            .overlay(
                                Text("7")
                                    .foregroundColor(.white)
                                    .bold()
                            )
                            .shadow(color: .pink.opacity(0.75), radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    Background_AND_OverlayPractice()
}
