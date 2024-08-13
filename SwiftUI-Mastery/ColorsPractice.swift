//
//  ColorsPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 13/08/24.
//

import SwiftUI

struct ColorsPractice: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(
                //.orange
                //Color(.secondarySystemBackground)
                Color("custom_pink")
            )
            .frame(width: 100, height: 100)
            .shadow(color: Color("custom_pink").opacity(0.5),
                    radius: 10,
                    x: 10, y: 10)
    }
}

#Preview {
    ColorsPractice()
}
