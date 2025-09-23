//
//  IconBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 3/8/25.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        VStack(spacing: 30) {
            
            // Original Heart
            Image(systemName: "heart.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .scaledToFit()
                .font(.system(size: 32))
                .foregroundStyle(.green)
                .frame(width: 150, height: 150)
                .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            
            // Gradient Heart
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundStyle(
                    LinearGradient(
                        colors: [.pink, .purple],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            
            // Rotated Heart
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundStyle(.red)
                .rotationEffect(.degrees(25))
            
            // Heart in Rounded Rectangle
            RoundedRectangle(cornerRadius: 25)
                .fill(.blue.opacity(0.2))
                .frame(width: 200, height: 200)
                .overlay(
                    Image(systemName: "heart.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.blue)
                        .padding(30)
                )
        }
        .padding()
    }

}

#Preview {
    IconBootcamp()
}
