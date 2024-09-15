//
//  AnimationPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 16/08/24.
//

import SwiftUI

struct AnimationPractice: View {
    
    @State private var isAnimate = false
    
    var body: some View {
        VStack {
            Button("Animate") {
                withAnimation(isAnimate ? .linear : .linear(duration: 0.5).repeatForever()) {
                    isAnimate.toggle()
                }
            }
            
            Spacer()
            
            ZStack {
                
                // Keep in center
                AnimationView(isAnimate: $isAnimate)
                
                // Move top
                AnimationView(isAnimate: $isAnimate)
                    .offset(y: isAnimate ? -150 : 0)
                
                // Move bottom
                AnimationView(isAnimate: $isAnimate)
                    .offset(y: isAnimate ? 150 : 0)

                // Move left
                AnimationView(isAnimate: $isAnimate)
                    .offset(x: isAnimate ? -150 : 0)
                
                // Move right
                AnimationView(isAnimate: $isAnimate)
                    .offset(x: isAnimate ? 150 : 0)
            }
            .rotationEffect(Angle(degrees: isAnimate ? 360 : 0))
            
            Spacer()
        }
    }
}

struct AnimationView: View {
    
    @Binding var isAnimate: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: isAnimate ? 50 : 16)
            .fill(isAnimate ? .customPink : .customSky)
            .frame(width: isAnimate ? 100 : 200,
                   height: isAnimate ? 100 : 200)
            .shadow(color: isAnimate ? Color.customPink : Color.customSky, radius: 10)
            
    }
}

#Preview {
    AnimationPractice()
}

