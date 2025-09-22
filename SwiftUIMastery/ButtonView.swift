//
//  ButtonView.swift
//  SwiftUIMastery
//
//  Created by Arman on 22/9/25.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // Basic Button
            Button("Tap Me") {
                print("Button tapped!")
            }
            .buttonStyle(.bordered)
            
            // Custom Styled Button
            Button(action: {
                print("Custom styled button tapped!")
            }) {
                Text("Custom Style")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .shadow(radius: 5)
            }
            
            // Button with Icon
            Button(action: {
                print("Button with icon tapped!")
            }) {
                HStack {
                    Image(systemName: "heart.fill")
                    Text("Like")
                }
                .padding()
                .background(Color.red.opacity(0.8))
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }
        .padding()
    }

}

#Preview {
    ButtonView()
}
