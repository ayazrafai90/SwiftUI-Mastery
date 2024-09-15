//
//  ViewModifiersPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 15/09/24.
//

import SwiftUI

struct ViewModifiersPractice: View {
    var body: some View {
        VStack {
            Text("Hello everyone!")
                .foregroundStyle(.white)
                .font(.title)
                .padding()
                .fullWidthContent()
                .filledCapsuleFormatting()
            
            Button(action: {
                print("Tap Me pressed!")
            }, label: {
                Text("Tap me!")
                    .frame(height: 100)
                    .fullWidthContent()
                    .filledCapsuleFormatting()
            })
            Button("Press Me!") {
                print("Press Me tapped!")
            }
            .padding()
            .fullWidthContent()
            .filledCapsuleFormatting()
        }
        .padding()
    }
}

#Preview {
    ViewModifiersPractice()
}

struct FilledCapsuleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(.pink)
            .clipShape(Capsule())
    }
}

struct FullWidthModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
    }
}

struct BorderedCapsuleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(.pink)
            .clipShape(Capsule())
    }
}

extension View {
    func filledCapsuleFormatting() -> some View {
        modifier(FilledCapsuleModifier())
    }
    
    func borderedCapsuleFormatting() -> some View {
        modifier(BorderedCapsuleModifier())
    }
    
    func fullWidthContent() -> some View {
        modifier(FullWidthModifier())
    }
}
