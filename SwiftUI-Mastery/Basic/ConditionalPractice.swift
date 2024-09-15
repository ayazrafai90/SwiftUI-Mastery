//
//  ConditionalPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 16/08/24.
//

import SwiftUI

struct ConditionalPractice: View {
    
    @State var showApple: Bool = false
    @State var showBanana: Bool = false
    @State var showGuava: Bool = false
    @State var showStrawberry: Bool = false
    
    var body: some View {
        VStack(spacing: 16) {
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    FruitButton(show: $showApple, fruit: .apples)
                    FruitButton(show: $showBanana, fruit: .banana)
                    FruitButton(show: $showGuava, fruit: .guava)
                    FruitButton(show: $showStrawberry, fruit: .strawberry)
                }
                .padding()
            }
            
            Spacer()
            
            VStack {
                if showApple {
                    FruitView(fruit: .apples)
                }
                
                if showBanana {
                    FruitView(fruit: .banana)
                }
                
                if showGuava {
                    FruitView(fruit: .guava)
                }
                
                if showStrawberry {
                    FruitView(fruit: .strawberry)
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalPractice()
}

struct FruitView: View {
    var fruit: Fruit
    
    var body: some View {
        HStack {
            Text(fruit.emoji)
            Text(fruit.title)
        }
        .foregroundColor(fruit.color)
        .bold()
        .font(.title)
    }
}

struct FruitButton: View {
    @Binding var show: Bool
    var fruit: Fruit
    
    var body: some View {
        Button(action: {
            show.toggle()
        }, label: {
            Text(fruit.title)
                .bold()
        })
        .foregroundColor(show ? .white : fruit.color)
        .padding()
        .background(show ? fruit.color : .white)
        .cornerRadius(8.0)
        .shadow(color: fruit.color.opacity(0.5), radius: 5)
    }
}
