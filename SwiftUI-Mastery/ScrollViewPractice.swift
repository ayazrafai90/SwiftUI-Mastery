//
//  ScrollViewPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 14/08/24.
//

import SwiftUI

struct ScrollViewPractice: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<11) { indexI in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<11) { indexJ in
                                Rectangle()
                                    .fill(indexI % 2 == 0 ? (indexJ % 2 == 0 ? .customPink : .customSky) : (indexJ % 2 == 0 ? .customSky : .customPink))
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(12)
                            }
                        }
                    }
                }
            }
        }.padding()
    }
}

#Preview {
    ScrollViewPractice()
}
