//
//  TextViewBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 30/7/25.
//

import SwiftUI

struct TextViewBootcamp: View {
    var body: some View {
        Text("Hello, World! This is a textview practise app while learning SwiftUI")
            .font(.body)
            .fontWeight(.bold)
            .italic()
            .strikethrough()
            .underline(true, color: .blue)
            .baselineOffset(-50)
            .kerning(10)
            .tracking(5)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.red)
            .lineSpacing(15)
            .padding()
            .background(Color.yellow.opacity(0.3))
            .cornerRadius(12)
            .shadow(radius: 5)
            .rotationEffect(.degrees(-5))
            .frame(width: 300)

            
        
    }
}

#Preview {
    TextViewBootcamp()
}
