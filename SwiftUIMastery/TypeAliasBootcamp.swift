//
//  TypeAliasBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 15/8/25.
//

import SwiftUI

// MARK: - Model
struct MovieModel {
    let title: String
    let director: String
    var count: Int
}

// TVModel is just another name for MovieModel
typealias TVModel = MovieModel

// MARK: - View
struct TypeAliasBootcamp: View {
    @State private var item: TVModel = TVModel(title: "My Show", director: "Emily", count: 10)
    @State private var message: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text(item.title)
                .font(.title2)
                .bold()
            Text("Director: \(item.director)")
            Text("Count: \(item.count)")
                .foregroundColor(.blue)
            
            HStack {
                Button("Increase") {
                    item.count += 1
                    message = "You increased the count once!"
                }
                .buttonStyle(.borderedProminent)
                
                
                
                
                
                
                
                
                Button("Reset Button") {
                    item.count = 0
                    message = "Count reset."
                }
                .buttonStyle(.bordered)
            }
            
            if !message.isEmpty {
                Text(message)
                    .foregroundColor(.green)
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#Preview {
    TypeAliasBootcamp()
}

