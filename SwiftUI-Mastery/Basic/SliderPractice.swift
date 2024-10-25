//
//  SliderPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 25/10/24.
//

import SwiftUI

struct SliderPractice: View {
    
    @State var sliderValue: Double = 10
    @State var sliderColor: Color = .red
    
    var body: some View {
        VStack {
            Text("Slider Value")
            Text(String(format: "%.2f", sliderValue))
            
            Slider(
                value: $sliderValue,
                in: 1...10,
                step: 1.0,
                label: {
                    Text(String(format: "%.2f", sliderValue))
                },
                minimumValueLabel: {
                    Text(1.description)
                },
                maximumValueLabel: {
                    Text(10.description)
                }
            )
            .tint(.red)
            //Slider(value: $sliderValue, in: 1...10, step: 0.5)
                
        }
        .padding(.horizontal)
    }
}

#Preview {
    SliderPractice()
}
