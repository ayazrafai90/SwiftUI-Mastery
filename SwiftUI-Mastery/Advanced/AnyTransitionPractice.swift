//
//  AnyTransitionPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 18/09/24.
//

import SwiftUI

struct RotateViewModifier: ViewModifier {
    
    let rotation: Double
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: rotation))
            .offset(x: rotation != 0 ? UIScreen.main.bounds.width : 0,
                    y: rotation != 0 ? UIScreen.main.bounds.height : 0)
    }
}

extension AnyTransition {
    static var rotating: AnyTransition {
        modifier(active: RotateViewModifier(rotation: 180),
                 identity: RotateViewModifier(rotation: 0))
    }
    
    static func rotating(amount: Double) -> AnyTransition {
        modifier(active: RotateViewModifier(rotation: amount),
                 identity: RotateViewModifier(rotation: 0))
    }
    
    static var rotateOn: AnyTransition {
        asymmetric(insertion: .rotating, removal: .move(edge: .leading))
    }
}

struct AnyTransitionPractice: View {
    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            if showRectangle {
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: 200, height: 300)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    //.transition(.move(edge: .leading))
                    //.transition(.rotating(amount: 1080))
                    .transition(.rotateOn)
                    //.modifier(RotateViewModifier())
            }
            Spacer()
            Button(action: {
                withAnimation(.easeInOut(duration: 0.2)) {
                    showRectangle.toggle()
                }
            }, label: {
                Text("Click Me!")
                    .padding()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .filledCapsuleFormatting()
            })
        }
        .padding()
    }
}

#Preview {
    AnyTransitionPractice()
}
