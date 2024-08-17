//
//  SheetsPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 17/08/24.
//

import SwiftUI

struct SheetsPractice: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 16) {
                TitleView(description: "Exploring Sheets", color: .customPink, descriptionColor: .black)
                
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Text("Show Sheet")
                        .bold()
                        .font(.system(size: 18))
                        .padding()
                        .background(Color.white.cornerRadius(8))
                        .foregroundColor(.blue)
                })
//                .fullScreenCover(isPresented: $showSheet, content: {
//                    CustomSheet()
//                })
                .sheet(isPresented: $showSheet, content: {
                    // DO NOT ADD CONDITIONAL LOGIC HERE.
                    CustomSheet()
                })
                
                Spacer()
            }
        }
    }
}

struct CustomSheet: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack() {
            Color.customPink
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 16) {
                HStack() {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .bold()
                            .scaledToFit()
                            .padding(.all, 10)
                            .foregroundColor(.customPink)
                            .background(Circle().fill(.white))
                    })
                    .frame(width: 40, height: 40)
                    
                    
                    Spacer()
                }.padding(.leading, 8)
                
                TitleView(description: "Custom Sheet", color: .yellow, descriptionColor: .black)
                    .frame(alignment: .center)
                Spacer()
                
            }.padding(.top, 20)
        }
    }
}

#Preview {
    SheetsPractice()
//    CustomSheet()
}
