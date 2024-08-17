//
//  AnimationTimingPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 17/08/24.
//

import SwiftUI

struct AnimationTimingPractice: View {
    
    @State var shouldAnimate: Bool = false
    let timing: CGFloat = 1.0
    
    var body: some View {
        VStack {
            TitleView(description: "Explore Animation Timing", color: .green)
            Spacer()
            
            Button("Animate") {
                shouldAnimate.toggle()
            }
            .bold()
            .font(.title3)
            
            VStack {
                
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: shouldAnimate ? .infinity : 60, height: 100)
                    //.animation(.spring(), value: shouldAnimate)
                    .animation(.spring(response: 0.5,
                                       dampingFraction: 0.5,
                                       blendDuration: 1.0),
                               value: shouldAnimate)
                
//                RoundedRectangle(cornerRadius: 16)
//                    .frame(width: shouldAnimate ? .infinity : 60, height: 100)
//                    .animation(.easeIn(duration: timing), value: shouldAnimate)
//                
//                RoundedRectangle(cornerRadius: 16)
//                    .frame(width: shouldAnimate ? .infinity : 60, height: 100)
//                    .animation(.easeInOut(duration: timing), value: shouldAnimate)
//                
//                RoundedRectangle(cornerRadius: 16)
//                    .frame(width: shouldAnimate ? .infinity : 60, height: 100)
//                    .animation(.easeOut(duration: timing), value: shouldAnimate)
//                
//                RoundedRectangle(cornerRadius: 16)
//                    .frame(width: shouldAnimate ? .infinity : 60, height: 100)
//                    .animation(.linear(duration: timing), value: shouldAnimate)
            }
            .padding(.horizontal, 16)
            
            
            Spacer()
            
        }
    }
}

#Preview {
    AnimationTimingPractice()
}
