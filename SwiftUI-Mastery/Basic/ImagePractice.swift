//
//  ImagePractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 14/08/24.
//

import SwiftUI

struct ImagePractice: View {
    var body: some View {
        Image("apple")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            //.scaledToFill()
            //.renderingMode(.template)
            .scaledToFit()
            .foregroundColor(.cyan)
            .frame(width: 250, height: 175)
            .shadow(color: .cyan.opacity(0.3), radius: 10, x: 10, y: 10)
            .clipped()
            //.cornerRadius(30)
            //.clipShape(
                //RoundedRectangle(cornerRadius: 30.0)
                //Ellipse()
                //Circle()
            //)
    }
}

#Preview {
    ImagePractice()
}
