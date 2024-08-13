//
//  GradientPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 13/08/24.
//

import SwiftUI

struct GradientPractice: View {
    var body: some View {
//        LinearGradient(colors: [.white, .yellow, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 250, height: 250)
        
        Circle()
            .fill(
                //Color("custom_pink")
                LinearGradient(colors: [.white, .yellow, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                //RadialGradient(gradient: Gradient(colors: [.yellow, .pink]), center: .center, startRadius:  100, endRadius: 0)
                //AngularGradient.init(gradient: Gradient(colors: [Color.red, Color.blue]), center: .topLeading, angle: .degrees(180 + 45))
            )
            .frame(width: 250, height: 250)
    }
}

#Preview {
    GradientPractice()
}
