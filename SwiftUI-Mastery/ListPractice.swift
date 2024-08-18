//
//  ListPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 17/08/24.
//

import SwiftUI

struct ListPractice: View {
    
    @State var fruits = ["apple", "orange", "strawberry", "guava"]
    @State var veggies = ["carrot", "capsicum", "spinach", "guava"]
    
    var body: some View {
        
        NavigationView {
            List {
                Section(header: HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }.font(.headline)) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .foregroundStyle(.black)
                            .multilineTextAlignment(.leading)
                        
                    }
                    .onDelete(perform: performDelete)
                    .onMove(perform: moveOperation)
                    .listRowBackground(Color.customSky)
                }
                
                Section(header: HStack {
                    Text("Vegetables")
                    Image(systemName: "flame.fi ll")
                }.font(.headline)) {
                    ForEach(veggies, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .foregroundStyle(.black)
                    }
                }
            }
            .foregroundStyle(.customPink)
            .listStyle(.sidebar)
            .clipped()
            .navigationTitle("Fruits List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
    }
    
    func performDelete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveOperation(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    var addButton: some View {
        Button("Add") { fruits.append("coconut")}
    }
}

#Preview {
    ListPractice()
}
