//
//  PopoverPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 17/08/24.
//

import SwiftUI

struct PopoverPractice: View {
    
    @State var showAnotherScreen = false
    let sheetTopPadding = UIScreen.main.bounds.height * 0.3
    
    var body: some View {
        ZStack {
            Color.indigo
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("TAP ME") {
                    withAnimation(.spring) {
                        showAnotherScreen.toggle()
                    }
                }
                .font(.title2)
                .bold()
                .accentColor(.white)
                Spacer()
            }
            
            // METHOD 1: SHEET
//            .sheet(isPresented: $showAnotherScreen, content: {
//                AnotherScreen()
//            })
            
            // METHOD 2: TRANSITION
//            ZStack {
//                if showAnotherScreen {
//                    AnotherScreen(showAnotherScreen: $showAnotherScreen)
//                        .padding(.top, UIScreen.main.bounds.height * 0.3)
//                        .transition(.asymmetric(insertion: .move(edge: .bottom),
//                                                removal: .move(edge: .bottom)))
//                }
//            }.zIndex(2.0)
            
            // METHOD 3: ANIMATION OFFSET
            AnotherScreen(topPadding: sheetTopPadding, showAnotherScreen: $showAnotherScreen)
                .offset(y: showAnotherScreen ? 0 : UIScreen.main.bounds.height)
        }
    }
}

struct AnotherScreen: View {
    
    let topPadding: CGFloat
    @Environment(\.dismiss) var dismiss
    @Environment(\.dismiss) var isPresented
    @Binding var showAnotherScreen: Bool
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            
            
            ZStack {
                VStack {
                    HStack {
                        Button(action: {
                            dismiss()
                            showAnotherScreen.toggle()
                        }, label: {
                            Image(systemName: "xmark")
                                .frame(width: 40, height: 40)
                                .background(
                                    Circle().fill(.white)
                                )
                        })
                        .accentColor(.green)
                        .bold()
                        .padding(.leading, 8)
                        
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.top, 20)
                .frame(maxHeight: .infinity)
                .background(.red)
                
            }.padding(.top, topPadding)
        }
    }
}

#Preview {
    PopoverPractice()
//    AnotherScreen(topPadding: 100, showAnotherScreen: .constant(true))
}
