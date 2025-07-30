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
            .baselineOffset(-50)
            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.red)
            
        
    }
}

#Preview {
    TextViewBootcamp()
}
