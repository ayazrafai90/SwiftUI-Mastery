//
//  ForEach_LoopPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 14/08/24.
//

import SwiftUI

struct ForEach_LoopPractice: View {
    
    let dataList: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString = "Hello"
    
    var body: some View {
        VStack(spacing: 36) {
            
            Rectangle()
                .fill(.gray.opacity(0.2))
                .frame(height: 2)
            
            HStack {
                ForEach(0..<6) { index in
                    Circle()
                        .fill(index % 2 == 0 ? .customPink : .customSky)
                        .frame(width: 40, height: 40)
                        .overlay(
                            Text("\(index)")
                                .foregroundColor(index % 2 == 0 ? .white : .black)
                                .bold()
                        )
                        .shadow(color: index % 2 == 0 ? .customPink : .customSky, radius: 3, x: 2, y: 2)
                }
            }
            Rectangle()
                .fill(.gray.opacity(0.2))
                .frame(height: 2)
            
            VStack(alignment: .leading, spacing: 16) {
                ForEach(dataList.indices, id: \.self) { index in
                    
                    HStack {
                        Circle()
                            .fill(index % 2 == 0 ? .customPink : .customSky)
                            .frame(width: 40, height: 40)
                            .overlay(
                                Text("\(index)")
                                    .foregroundColor(index % 2 == 0 ? .white : .black)
                                    .bold()
                            )
                            .shadow(color: index % 2 == 0 ? .customPink : .customSky, radius: 3, x: 2, y: 2)
                        Text("\(index): \(dataList[index])")
                            .foregroundColor(index % 2 == 0 ? .customPink : .customSky)
                            .bold()
                    }
                }
            }
            Rectangle()
                .fill(.gray.opacity(0.2))
                .frame(height: 2)
        }
    }
}

#Preview {
    ForEach_LoopPractice()
}
