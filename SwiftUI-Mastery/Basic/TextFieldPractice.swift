//
//  TextFieldPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 21/08/24.
//

import SwiftUI

struct TextFieldPractice: View {
    
    @State var content: String = ""
    
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.1)
                .ignoresSafeArea(.all)
            
            VStack {
                TitleView(description: "Learn some basics about the TextField", color: .green)
                TextField("Enter...", text: $content)
                    .padding()
                    .frame(height: 60)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 18))
                    .textFieldStyle(.plain)
                    .tint(.black)
                    .shadow(color: .black.opacity(0.25), radius: 5)
                
                TextEditor(text: $content)
                    .padding()
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 18))
                    .tint(.black)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .shadow(color: .black.opacity(0.25), radius: 5)
                
                Button("Save") {
                    
                }
                .font(.headline)
                .bold()
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue)
                .tint(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .disabled(content.isEmpty)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    TextFieldPractice()
}
