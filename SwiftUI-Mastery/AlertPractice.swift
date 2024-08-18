//
//  AlertPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 18/08/24.
//

import SwiftUI

struct AlertPractice: View {
    
    @State var showAlert = false
    @State var showActionSheet = false
    
    var body: some View {
        ZStack {
            Color.customPink.ignoresSafeArea()
            ScrollView {
                VStack {
                    VStack {
                        HStack {
                            Image(systemName: "person.fill")
                                .foregroundStyle(.black)
                                .frame(width: 34, height: 34)
                                .background(Circle().fill(.gray))
                            Text("Ayaz Rafai")
                            Spacer()
                            
                            Button {
                                showAlert = true
                            } label: {
                                Image(systemName: "ellipsis")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.horizontal, 4)
                                    .frame(width: 34, height: 34)
                                    .foregroundStyle(.customPink)
                            }
                            .frame(width: 34, height: 34)
                        }.foregroundStyle(.black)
                            .zIndex(1)
                        TitleView(description: "Explore basic integration for the alert view", color: .customPink)
                        Image("steve")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 8.0))
                    }
                    .padding()
                    .background(.white)
                    HStack {
                        Button("Show alert") {
                            showAlert.toggle()
                        }
                        .frame(height: 60)
                        .padding(.horizontal, 22)
                        .background(RoundedRectangle(cornerRadius: 8).fill(.white))
                        .tint(.customSky)
                        
                        Button("Show Sheet") {
                            showActionSheet.toggle()
                        }
                        .frame(height: 60)
                        .padding(.horizontal, 22)
                        .background(RoundedRectangle(cornerRadius: 8).fill(.white))
                        .tint(.customPink)
                    }
                    
                    .font(.headline)
                    .shadow(color: .white, radius: 5, x: 0, y: 0)
                    Spacer()
                }
                .alert(isPresented: $showAlert, content: {
                    getAlert(title: "SwiftUI-Mastery",
                             message: "Are you sure you want to delete?")
                })
                .actionSheet(isPresented: $showActionSheet, content: {
                    getActionSheet(title: "SwiftUI-Mastery",
                                   message: "Are you sure you want to remove?")
                })
            }
        }
    }
    
    func getAlert(title: String, message: String) -> Alert {
        return Alert(title: Text(title),
                     message: Text(message),
                     primaryButton: .destructive(Text("DELETE")),
                     secondaryButton: .cancel())
    }
    
    func getActionSheet(title: String, message: String) -> ActionSheet {
        
        let removeButton: ActionSheet.Button = .destructive(Text("Remove"))
        let cancelButton: ActionSheet.Button = .cancel()
        
        return ActionSheet(title: Text(title),
                           message: Text(message),
                           buttons: [cancelButton, removeButton])
    }
}

#Preview {
    AlertPractice()
}
