//
//  CustomCurvesPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 18/09/24.
//

import SwiftUI

struct CustomCurvesPractice: View {
    var body: some View {
        ShapeWithArc()
            .fill(.clear)
            .stroke(.customSky, style: StrokeStyle(lineWidth: 5))
            .frame(width: 200, height: 200)
            .background(.red.opacity(0.1))
        
    }
}

#Preview {
    CustomCurvesPractice()
}

struct ArcSample: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .init(x: rect.maxX, y: rect.minY))
            path.addArc(center: .init(x: rect.midX, y: rect.minY),
                        radius: rect.height / 2,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 40),
                        clockwise: true)
        }
    }
}

struct ShapeWithArc: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .init(x: rect.minX, y: rect.minY))
            path.addLine(to: .init(x: rect.maxX, y: rect.minY))
            path.addLine(to: .init(x: rect.maxX, y: rect.midY))
            
            path.addArc(center: .init(x: rect.midX, y: rect.maxY - 20),
                        radius: 20,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 180),
                        clockwise: false)
            
            path.addLine(to: .init(x: rect.minX, y: rect.midY))
            path.addLine(to: .init(x: rect.minX, y: rect.minY))
        }
    }
}
