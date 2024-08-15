//
//  ScrollViewPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 14/08/24.
//

import SwiftUI

struct ScrollViewPractice: View {
    
    let size = (UIScreen.main.bounds.size.width - 32) / 3
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<11) { indexI in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<11) { indexJ in
                                Rectangle()
                                    .fill(indexI % 2 == 0 ? (indexJ % 2 == 0 ? .customPink : .customSky) : (indexJ % 2 == 0 ? .customSky : .customPink))
                                    .frame(width: size, height: size)
                                    .cornerRadius(12)
                            }
                        }
                    }
                }
            }
        }.padding(.all, 8)
    }
}

#Preview {
    ScrollViewPractice()
}
