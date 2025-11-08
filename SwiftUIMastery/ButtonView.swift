//
//  ButtonView.swift
//  SwiftUIMastery
//
//  Created by Arman on 22/9/25.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack(spacing: 24) {
            
            // Basic Button with Feedback
            Button("Tap Me") {
                print("Button tapped!")
            }
            .buttonStyle(.borderedProminent)
            .tint(.indigo)
            .controlSize(.large)
            
            // Custom Gradient Button
            Button(action: {
                print("Custom styled button tapped!")
            }) {
                Text("Custom Style")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        LinearGradient(
                            colors: [.blue, .purple],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                    .shadow(color: .gray.opacity(0.4)

}

#Preview {
    ButtonView()
}
