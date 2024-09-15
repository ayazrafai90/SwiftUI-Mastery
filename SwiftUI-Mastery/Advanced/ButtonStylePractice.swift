//
//  ButtonStylePractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 15/09/24.
//

import SwiftUI

struct ButtonStylePractice: View {
    var body: some View {
        VStack {
            Button {
                print("Button tapped!")
            } label: {
                Text("Custom Button")
                    .foregroundStyle(.white)
                    .padding()
                    .fullWidthContent()
                    .filledCapsuleFormatting()
            }
        }
        .bounceEffecting()
        .padding()
    }
}

#Preview {
    ButtonStylePractice()
}

struct EaseInButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.75 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

extension View {
    func bounceEffecting() -> some View {
        buttonStyle(EaseInButtonStyle())
    }
}
