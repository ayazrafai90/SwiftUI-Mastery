//
//  StacksPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 14/08/24.
//

import SwiftUI

struct StacksPractice: View {
    
    // ✦ VStack: Vertical Stack
    // ✦ HStack: Horizontal Stack
    // ✦ ZStack: zIndex(back to front)
    
    var body: some View {
        
        //HStack() {
        //ZStack() {
        //VStack(alignment: .leading, spacing: 0) {
        //HStack(alignment: .bottom, spacing: 0) {
//        ZStack(alignment: .bottom) {
//            Rectangle().fill(.pink)
//                .frame(width: 150, height: 150)
//            Rectangle().fill(.cyan)
//                .frame(width: 100, height: 100)
//            Rectangle().fill(.orange)
//                .frame(width: 50, height: 50)
//        }
//        .shadow(color: .blue.opacity(0.4), radius: 3,
//                x: 3, y: 3)
        
//        ZStack() {
//            Rectangle().fill(.pink)
//                .frame(width: 350, height: 400)
//            VStack(alignment: .center) {
//                Rectangle().fill(.orange)
//                    .frame(width: 120, height: 120)
//                Rectangle().fill(.yellow)
//                    .frame(width: 80, height: 80)
//                HStack(alignment: .bottom) {
//                    Rectangle().fill(.gray)
//                        .frame(width: 50, height: 50)
//                    Rectangle().fill(.purple)
//                        .frame(width: 60, height: 60)
//                    Rectangle().fill(.cyan)
//                        .frame(width: 30, height: 30)
//                }.background(.white)
//            }.background(.black)
//        }
        
        VStack(spacing: 20) {
            VStack(spacing: 12) {
                Text("SwiftUI-Mastery")
                    .font(.title)
                    .foregroundColor(.pink)
                    .fontWeight(.bold)
                    .shadow(color: .pink, radius: 10, x: 5, y: 5)
                Text("I am exploring SwiftUI from very basic to the advanced")
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
            }
            .multilineTextAlignment(.center)
            
            ZStack {
                Circle()
                    .fill(.pink)
                    .frame(width: 160, height: 160)
                VStack() {
                    Image("apple")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("SwiftUI")
                        .bold()
                }
                .foregroundColor(.white)
                .shadow(color: .white, radius: 5)
            }
            .shadow(color: .pink, radius: 5)
            .shadow(color: .white, radius: 10)
            .shadow(color: .pink, radius: 5)
        }
    }
}

#Preview {
    StacksPractice()
}
