//
//  PickerPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 22/08/24.
//

import SwiftUI

struct PickerPractice: View {
    
    @State var pickerOptions = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    
    @State var selected: String = "25"
    @State var selectedSegment: String = "Friends"
    let segmentOptions = ["Friends", "Followers", "Following"]
    
    var body: some View {
        
        VStack {
            TitleView(description: "Picker control", color: .customPink)
            Spacer()
            Picker(selection: $selectedSegment) {
                ForEach(segmentOptions, id: \.self) { option in
                    Text(option)
                }
            } label: {
                Text("Choose option")
            }
            .pickerStyle(.segmented)
            .font(.title)
            Spacer()
            Text("Age: \(selected)")
            Picker("Picker", selection: $selected) {
                ForEach(18..<51) { value in
                    Text(String(value)).tag(String(value))
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    PickerPractice()
}
