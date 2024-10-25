//
//  TabViewPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 25/10/24.
//

import SwiftUI

struct TabViewPractice: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        let width = UIScreen.main.bounds.width - 16
        TabView(selection: $selectedTab) {
            
            RoundedRectangle(cornerRadius: 16)
                .fill(.red)
                .frame(width: width, height: 160)
                .tag(0)
            RoundedRectangle(cornerRadius: 16)
                .fill(.blue)
                .frame(width: width, height: 160)
                .tag(1)
            RoundedRectangle(cornerRadius: 16)
                .fill(.green)
                .frame(width: width, height: 160)
                .tag(2)
        }
        .tint(.blue)
        .tabViewStyle(.page)
        .frame(height: 160)
    }
}

struct TabViewPractice1: View {
    
    @State var selectedTab: Int = 0
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
        UITabBar.appearance().unselectedItemTintColor = UIColor.lightGray
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tag(0)
            BrowseView()
                .tag(1)
            ProfileView()
                .tag(2)
        }
        .tint(.blue)
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Text("Home Tab")
                    .foregroundStyle(.white)
                    .font(.title)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("GO TO PROFILE")
                        .foregroundStyle(.red)
                        .padding()
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .shadow(color: .white, radius: 3)
                })
            }
        }
        .tabItem {
            VStack {
                Image(systemName: "house.fill")
                Text("Home")
            }
            .background(.white)
        }
    }
}

struct ProfileView: View {
    var body: some View {
        Color.red.ignoresSafeArea()
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
    }
}

struct BrowseView: View {
    var body: some View {
        Color.red.ignoresSafeArea()
            .tabItem {
                Image(systemName: "globe")
                Text("Browse")
            }
    }
}
#Preview {
    TabViewPractice()
}
