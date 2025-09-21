//
//  GridView.swift
//  SwiftUIMastery
//
//  Created by Arman on 14/9/25.
//

import SwiftUI

struct GridView: View {
    let arr = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight"]
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(arr, id: \.self) { item in
                    Text(item)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 80) // Makes boxes equal size
                        .background(Color.blue)
                        .cornerRadius(12)
                        .shadow(radius: 5)
                        .onTapGesture {
                            print("\(item) tapped!")
                        }
                }
            }
            .padding()
        }
    }
}


#Preview {
    GridView()
}
