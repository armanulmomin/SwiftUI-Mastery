//
//  ImagePractise.swift
//  SwiftUIMastery
//
//  Created by Arman on 18/9/25.
//

import SwiftUI

struct ImagePractise: View {
    @State private var selectedColor: Color? = nil
        
        var body: some View {
            VStack(spacing: 30) {
                
                Text("Sports Icons")
                    .font(.title)
                    .bold()
                
                HStack(spacing: 20) {
                    ForEach([Color.blue, Color.purple, Color.indigo], id: \.self) { color in
                        Image(systemName: "figure.american.football")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .padding()
                            .background(
                                Circle()
                                    .fill(color.opacity(0.2))
                            )
                            .foregroundStyle(color)
                            .overlay(
                                Circle()
                                    .strokeBorder(color, lineWidth: selectedColor == color ? 4 : 0)
                            )
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedColor = (selectedColor == color) ? nil : color
                                }
                            }
                            .scaleEffect(selectedColor == color ? 1.2 : 1.0)
                    }
                }
                
                if let selectedColor = selectedColor {
                    Text("You selected \(selectedColor.description.capitalized)")
                        .font(.headline)
                        .foregroundStyle(selectedColor)
                        .transition(.opacity.combined(with: .scale))
                }
                
                Spacer()
            }
            .padding()
        }
}

#Preview {
    ImagePractise()
}
