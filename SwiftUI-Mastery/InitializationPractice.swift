//
//  InitializationPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 14/08/24.
//

import SwiftUI

struct InitializationPractice: View {
    let backgroundColor: Color
    let count: Int = 5
    let title: String
    
    init(fruit: Fruit, count: Int = 5) {
        self.title = fruit.title
        self.backgroundColor = fruit.color
    }
    
    var body: some View {
        VStack(spacing: 8) {
            Text("\(count)")
                .underline()
                .font(.system(size: 36))
                .fontWeight(.semibold)
                
            Text(title)
                .font(.system(size: 26))
        }
        .foregroundColor(.white)
        .frame(width: 180, height: 140)
        .background(backgroundColor)
        .cornerRadius(16)
        .shadow(color: backgroundColor, radius: 5)
    }
}

#Preview {
    VStack {
        InitializationPractice(fruit: .guava, count: 10)
        InitializationPractice(fruit: .apples, count: 25)
    }
}

enum Fruit {
    case apples
    case banana
    case oranges
    case strawberry
    case guava
    
    var color: Color {
        switch self {
        case .apples, .strawberry:
            return .red
        case .banana:
            return .yellow
        case .oranges:
            return .orange
        case .guava:
            return .green
        }
    }
    
    var title: String {
        switch self {
        case .apples:
            return "Apples"
        case .banana:
            return "Banana"
        case .oranges:
            return "Oranges"
        case .strawberry:
            return "Strawberry"
        case .guava:
            return "Guava"
        }
    }
}
