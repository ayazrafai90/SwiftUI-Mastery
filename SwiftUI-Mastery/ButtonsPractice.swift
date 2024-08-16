//
//  ButtonsPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 16/08/24.
//

import SwiftUI

struct ButtonsPractice: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 32) {
            VStack(spacing: 12) {
                Text("SwiftUI-Mastery")
                    .font(.title)
                    .bold()
                    .foregroundColor(.customPink)
                    .shadow(color: .customPink, radius: 10)
                Text("Button Practice")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Text(title)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Button("Tap me!") {
                title = "Button was tapped!"
            }
            .font(.system(size: 18))
            .bold()
            .accentColor(.white)
            .padding(.horizontal, 26)
            .padding(.vertical, 12)
            .background(.customPink)
            .cornerRadius(8)
            .shadow(color: .customPink, radius: 5)
            
            Button(action: {
                title = "Button 2 was tapped"
            }, label: {
                Text("Button 2")
            })
            .accentColor(.green)
            
            Button {
                title = "❤️ Button was tapped"
            } label: {
                
                Circle()
                    .fill(.white)
                    .frame(width: 80, height: 80)
                    .shadow(color: .customPink.opacity(0.5), radius: 15)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .aspectRatio(1, contentMode: .fit)
                            .foregroundColor(.customPink)
                            .shadow(color: .customPink, radius: 2)
                    }
            }

            Button(action: {
                title = "SwiftUI-Mastery button was tapped"
            }, label: {
                Text("SwiftUI-Mastery")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.black)
                    .padding()
                    .padding(.horizontal, 16)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 1.0)
                    )
            })
            
            Spacer()
        }
    }
}

#Preview {
    ButtonsPractice()
}
