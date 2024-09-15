//
//  GridPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 15/08/24.
//

import SwiftUI

struct GridPractice: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 1, alignment: nil),
        GridItem(.flexible(), spacing: 1, alignment: nil),
        GridItem(.flexible(), spacing: 1, alignment: nil),
    ]
    var body: some View {
        ScrollView() {
            Rectangle()
                .fill(.green)
                .frame(height: 400)
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 1,
                      pinnedViews: [.sectionHeaders]) {
                Section(header:
                            Text("Section 1")
                    .bold()
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .background(.red)
                    .foregroundColor(.white)
                ) {
                    ForEach(0..<51) { index in
                        Rectangle()
                            .fill(index % 2 == 0 ? Color.customPink : Color.customSky)
                            .aspectRatio(1, contentMode: .fill)
                    }
                }
                
                Section(header:Text("Section 1")
                    .bold()
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .background(.cyan)
                    .foregroundColor(.white)
                ) {
                    ForEach(0..<51) { index in
                        Rectangle()
                            .fill(index % 2 == 0 ? .black : .white)
                            .aspectRatio(1, contentMode: .fill)
                    }
                }
            }
        }
    }
}

#Preview {
    GridPractice()
}
