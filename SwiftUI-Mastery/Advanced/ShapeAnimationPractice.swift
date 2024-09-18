//
//  ShapeAnimationPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 18/09/24.
//

import SwiftUI

struct ShapeAnimationPractice: View {
    
    @State var animate: Bool = false
    @State var cornerRadius: CGFloat = 0
    
    var body: some View {
        VStack {
            Spacer()
            RectangleWithSingleCornerAnimation(cornerRadius: animate ? 60 : 0)
                .frame(width: 200, height: 200)
                .background(.green.opacity(0.1))
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onTapGesture {
            withAnimation(.easeInOut(duration: 2).repeatForever()) {
                animate.toggle()
            }
        }
    }
}

#Preview {
    ShapeAnimationPractice()
}

struct RectangleWithSingleCornerAnimation: Shape {
    
    var cornerRadius: CGFloat
    var animatableData: CGFloat {
        get { cornerRadius }
        set { cornerRadius = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .zero)
            path.addLine(to: .init(x: rect.maxX, y: rect.minY))
            path.addLine(to: .init(x: rect.maxX, y: rect.maxY - cornerRadius))
            path.addArc(center: .init(x: rect.maxX - cornerRadius, y: rect.maxY - cornerRadius),
                        radius: cornerRadius,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 360),
                        clockwise: false)
            path.addLine(to: .init(x: rect.maxX - cornerRadius, y: rect.maxY))
            path.addLine(to: .init(x: rect.minY, y: rect.maxY))
            path.addLine(to: .zero)
        }
    }
}
