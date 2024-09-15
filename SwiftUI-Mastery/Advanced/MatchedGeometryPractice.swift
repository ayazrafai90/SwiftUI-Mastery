//
//  MatchedGeometryPractice.swift
//  SwiftUI-Mastery
//
//  Created by Ayaz Rafai on 15/09/24.
//

import SwiftUI

struct MatchedGeometryPractice: View {
    
    @State var isClicked: Bool = false
    @Namespace private var namespace
    
    var body: some View {
        VStack {
            if !isClicked {
                Circle().fill(.pink)
                    .matchedGeometryEffect(id: "circle", in: namespace)
                    .frame(width: 100, height: 100)
            }
            Spacer()
            if isClicked {
                Circle().fill(.yellow)
                    .matchedGeometryEffect(id: "circle", in: namespace)
                    .frame(width: 200, height: 200)
            }
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.pink.opacity(0.1))
        .clipped()
        .onTapGesture {
            withAnimation(.easeInOut) {
                isClicked.toggle()
            }
        }
    }
}

#Preview {
    CustomSegmentTabView()
}


struct CustomSegmentTabView: View {
    
    private var tabs = ["Home", "Search", "Settings"]
    @State private var selectedTab: String = ""
    @Namespace private var selectionNamespace
    var body: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                ZStack {
                    if tab == selectedTab {
                        VStack {
                            Capsule().fill(.cyan)
                                .shadow(color: .cyan.opacity(0.1), radius: 5, y: 5)
                                .frame(width: 20, height: 4)
                        }
                        .matchedGeometryEffect(id: "selected_tab", in: selectionNamespace)
                        .offset(y: 20)
                    }
                    
                    Text(tab)
                        .foregroundStyle(tab == selectedTab ? .cyan : .gray)
                        .font(.system(size: tab == selectedTab ? 16 : 14, weight: .bold))
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .onTapGesture {
                    withAnimation(.linear(duration: 0.1)) {
                        selectedTab = tab
                    }
                }
            }
        }
        .padding()
        Spacer()
    }
}
