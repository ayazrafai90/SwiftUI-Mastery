//
//  AlertPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 18/08/24.
//

import SwiftUI

struct AlertPractice: View {
    
    @State var showAlert = false
    
    var body: some View {
        ZStack {
            Color.customPink.ignoresSafeArea()
            
            VStack {
                TitleView(description: "Explore basic integration for the alert view", color: .white, descriptionColor: .white.opacity(0.5))
                Spacer()
                Button("Show alert") {
                    showAlert.toggle()
                }
                .tint(.customPink)
                .font(.headline)
                .frame(height: 60)
                .padding(.horizontal, 22)
                .background(RoundedRectangle(cornerRadius: 8).fill(.white))
                .shadow(color: .white, radius: 5, x: 0, y: 0)
                .alert(isPresented: $showAlert, content: {
                    //Alert(title: Text("SwiftUI-Mastery"))
                    getAlert(title: "SwiftUI-Mastery", message: "Are you sure you want to delete?")
                })
                Spacer()
            }
        }
    }
    
    func getAlert(title: String, message: String) -> Alert {
        return Alert(title: Text(title),
                     message: Text(message),
                     primaryButton: .destructive(Text("DELETE")),
                     secondaryButton: .cancel())
    }
}

#Preview {
    AlertPractice()
}
