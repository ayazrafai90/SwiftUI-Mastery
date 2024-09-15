//
//  ColorPickerPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 22/08/24.
//

import SwiftUI

struct ColorPickerPractice: View {
    
    @State var selectedColor: Color = .white
    var body: some View {
        ZStack {
            Color.customSky
                .ignoresSafeArea(.all)
            
            VStack {
                TitleView(description: "Learn about the default Color Picker", color: .customPink)
                
                ColorPicker("Choose Color", selection: $selectedColor)
                    .padding()
                    .background(.white)
                    .foregroundStyle(.customPink)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .bold()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ColorPickerPractice()
}
