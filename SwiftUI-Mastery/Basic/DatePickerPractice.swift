//
//  DatePickerPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 22/08/24.
//

import SwiftUI

struct DatePickerPractice: View {
    
    @State var selectedDate: Date = .now
    let startDate = Date.now
    let endDate = Calendar.current.date(byAdding: .day, value: 5, to: .now) ?? .now
    
    var dateFormatter: DateFormatter {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
            
        return formatter
    }
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea(.all)
            
            VStack {
                TitleView(description: "Explore the default date picker", color: .customPink)
                
                Text(dateFormatter.string(from: selectedDate))
                    .font(.title2)
                    .foregroundStyle(.red)
                
                DatePicker("Choose Date:",
                           selection: $selectedDate,
                           displayedComponents: [.date])
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).fill(.white))
                    .datePickerStyle(.compact)
                
                DatePicker("Choose Date:",
                           selection: $selectedDate,
                           in: startDate...endDate, displayedComponents: [.date])
            }
            .padding()
        }
    }
}

#Preview {
    DatePickerPractice()
}
