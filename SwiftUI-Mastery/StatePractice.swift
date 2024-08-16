//
//  StatePractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 16/08/24.
//

import SwiftUI

struct StatePractice: View {
    
    @State var backgroundColor = Color.gray
    @State var title = "My Title"
    @State var tapCount = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            
            
            // Content area
            VStack(spacing: 12) {
                
                Text("SwiftUI-Mastery")
                    .font(.title)
                    .bold()
                    .shadow(color: .white, radius: 10)
                
                Text("State property wrapper")
                    .shadow(color: .white.opacity(0.5), radius: 10)
                Spacer()
                
                VStack(spacing: 16) {
                    Text(title)
                        .font(.system(size: 20))
                    Text("Count: \(tapCount)")
                        .underline(color: .white)
                        .font(.title)
                        .bold()
                    
                    HStack(spacing: 16) {
                        Button("Increment") {
                            backgroundColor = .green
                            title = "Increment button was tapped"
                            tapCount += 1
                        }
                        
                        Button("Decrement") {
                            backgroundColor = .red
                            title = "Decrement button was tapped"
                            tapCount -= 1
                        }
                    }
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StatePractice()
}
