//
//  CustomShapesPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 18/09/24.
//

import SwiftUI

struct CustomShapesPractice: View {
    var body: some View {
        ZStack {
            Image(.steve)
                .frame(width: 300, height: 150)
                .clipShape(Trapezoid())
            
//            Triangle()
//                .fill(.clear)
//                .stroke(.customPink, style: .init(lineWidth: 2))
//                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    CustomShapesPractice()
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .init(x: rect.midX, y: rect.minY))
            path.addLine(to: .init(x: rect.maxX, y: rect.maxY))
            path.addLine(to: .init(x: rect.minX, y: rect.maxY))
            path.addLine(to: .init(x: rect.midX, y: rect.minY))
        }
    }
}

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            
            let horizontalOffset: CGFloat = rect.width * 0.2
            
            path.move(to: .init(x: rect.midX, y: rect.minY))
            path.addLine(to: .init(x: rect.maxX - horizontalOffset, y: rect.midY))
            path.addLine(to: .init(x: rect.midX, y: rect.maxY))
            path.addLine(to: .init(x: rect.minX + horizontalOffset, y: rect.midY))
            path.addLine(to: .init(x: rect.midX, y: rect.minY))
        }
    }
}

struct Trapezoid: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            
            let horizontalOffset: CGFloat = rect.width * 0.2
            
            path.move(to: .init(x: rect.minX + horizontalOffset, y: rect.minY))
            path.addLine(to: .init(x: rect.maxX - horizontalOffset, y: rect.minY))
            path.addLine(to: .init(x: rect.maxX, y: rect.maxY))
            path.addLine(to: .init(x: rect.minX, y: rect.maxY))
            path.addLine(to: .init(x: rect.minX + horizontalOffset, y: rect.minY))
        }
    }
}
