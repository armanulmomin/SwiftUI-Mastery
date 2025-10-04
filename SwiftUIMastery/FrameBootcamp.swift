//
//  FrameBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 10/8/25.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, World!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(12)
                .shadow(radius: 5)
            
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .overlay(
                    Text("A")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                )
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.purple, lineWidth: 4)
                .frame(width: 150, height: 80)
                .overlay(
                    Text("SwiftUI")
                        .foregroundColor(.purple)
                        .font(.headline)
                )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red.opacity(0.2))
    }

}

#Preview {
    FrameBootcamp()
}
