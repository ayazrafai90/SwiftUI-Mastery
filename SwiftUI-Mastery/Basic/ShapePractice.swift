//
//  ShapePractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 13/08/24.
//

import SwiftUI

struct ShapePractice: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule()
        //Rectangle()
        RoundedRectangle(cornerRadius: 16)
            //.fill(.yellow)
            //.foregroundColor(.purple)
            //.stroke(Color.indigo)
            //.stroke(Color.indigo, lineWidth: 20)
            //.stroke(.pink, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [50]))
            .trim(from: 0.5, to: 1)
            .fill(.yellow)
            .background(.pink)
            .cornerRadius(16)
            //.stroke(.pink, lineWidth: 10)
            //.stroke(.white, lineWidth: 10)
            //.frame(width: 200, height: 190)
            //.padding()
            //.background(.red)
            .frame(width: 250, height: 200)
            
    }
}

#Preview {
    ShapePractice()
}
