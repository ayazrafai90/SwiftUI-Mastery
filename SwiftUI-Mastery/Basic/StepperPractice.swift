//
//  StepperPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 22/08/24.
//

import SwiftUI

struct StepperPractice: View {
    
    @State var stepperValue = 10
    
    var body: some View {
        VStack {
            TitleView(description: "Learn basic about the Stepper", color: .customSky)
            Stepper("Quantity: \(stepperValue)", value: $stepperValue)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    StepperPractice()
}
