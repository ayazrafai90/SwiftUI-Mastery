//
//  Padding_SpacerPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 14/08/24.
//

import SwiftUI

struct Padding_SpacerPractice: View {
    var body: some View {
        
        //        Text("SwiftUI-Mastery")
        //            .bold()
        //            .font(.title)
        //            .foregroundColor(.white)
        //            .padding(.leading, 8)
        //            .padding(.horizontal, 8)
        //            .padding(.all, 8)
        //            .background(Color.cyan)
        VStack() {
            HStack() {
                Image(systemName: "arrowshape.backward.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                Spacer()
                Image(systemName: "square.and.arrow.up.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
            }
            .foregroundColor(Color("custom_sky"))
            .scaledToFit()
            
            Spacer()
            VStack() {
                HStack() {
                    Spacer()
                    Circle()
                        .frame(width: 80, height: 80)
                    Spacer()
                    Circle()
                        .frame(width: 80, height: 80)
                    Spacer()
                }
                HStack() {
                    Circle()
                        .frame(width: 80, height: 80)
                    Spacer()
                    Circle()
                        .frame(width: 120, height: 120)
                        .overlay(
                            Text("SwiftUI\nMastery")
                                .bold()
                                .font(.headline)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                        )
                    Spacer()
                    Circle()
                        .frame(width: 80, height: 80)
                }
                HStack() {
                    Spacer()
                    Circle()
                        .frame(width: 80, height: 80)
                    Spacer()
                    Circle()
                        .frame(width: 80, height: 80)
                    Spacer()
                }
            }
            .padding(.bottom, 36)
            .foregroundColor(Color("custom_sky"))
            .shadow(color: Color("custom_sky"), radius: 10, x: 0.0, y: 0.0)
            
            
            Text("Welcome to my SwiftUI Exploration repository! This is where I dive deep into SwiftUI, exploring everything from basic components to advanced techniques. It's both a learning resource for myself and a demonstration of my SwiftUI skills.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    Padding_SpacerPractice()
}
