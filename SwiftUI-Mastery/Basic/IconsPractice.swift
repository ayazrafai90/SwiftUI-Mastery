//
//  IconsPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 13/08/24.
//

import SwiftUI

struct IconsPractice: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            //.font(.title)
            .font(.system(size: 120))
            .foregroundColor(Color("custom_pink"))
            .shadow(color: Color("custom_pink").opacity(0.45),
                    radius: 20, x: 20, y: 20)
            .frame(width: 200, height: 200)
            
    }
}

#Preview {
    IconsPractice()
}
