//
//  GridView.swift
//  SwiftUIMastery
//
//  Created by Arman on 14/9/25.
//

import SwiftUI

struct GridView: View {
    var arr = ["Item 1","Item 2","Item 3","Item 4","Item 5","Item 6"]
    let column = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        
        LazyVGrid(columns: column) {
            ForEach(arr, id: \.self) { item in
                Text(item)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
            }
        }
        
    }
}

#Preview {
    GridView()
}
