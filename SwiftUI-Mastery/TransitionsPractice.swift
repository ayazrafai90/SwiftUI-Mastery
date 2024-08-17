//
//  TransitionsPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 17/08/24.
//

import SwiftUI

struct TransitionsPractice: View {
    
    @State var showView = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Tap me") {
                    withAnimation(.spring) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 35)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .bottom),
                                            removal: .move(edge: .bottom)))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionsPractice()
}
