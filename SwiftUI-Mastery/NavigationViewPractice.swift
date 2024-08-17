//
//  NavigationViewPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 17/08/24.
//

import SwiftUI

struct NavigationViewPractice: View {
    var body: some View {
        NavigationView() {
            ScrollView {
                NavigationLink("Hello, world!", destination: MyOtherScreen())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .clipped()
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(leading: HStack {
                NavigationLink(destination: MyOtherScreen(), label: { Image(systemName: "person.fill") }).tint(.customPink)
                NavigationLink(destination: MyOtherScreen(), label: { Image(systemName: "person") }).tint(.customSky)
            },
            trailing:NavigationLink(destination: MyOtherScreen(), label: { Image(systemName: "gear") }).tint(.customPink))
            //.toolbar(.hidden)
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.customSky.ignoresSafeArea(.all)
                .navigationTitle("Second Screen")
                //.toolbar(.hidden)
            
            VStack {
                NavigationLink("Friends", destination: Text("Hey everyone!"))
                Spacer()
            }
            
        }
        .navigationBarItems(leading: Button(action: { dismiss() }, label: {
                                    Image(systemName: "xmark")
                                        .frame(width: 40, height: 40)
                                        .bold()
                                        .background(
                                            Circle().fill(.white)
                                        )
                                }).tint(.customPink))
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    NavigationViewPractice()
//        MyOtherScreen()
}
