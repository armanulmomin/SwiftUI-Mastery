//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 11/8/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Hello, World!")
                .padding()
                .background(Color.red)
                .overlay(
                    Circle()
                        .fill(Color.gray)
                        .opacity(0.5)
                )
            
            Spacer()
            
            Text("Hello, World!")
                .padding()
                .background(Color.red)
                .overlay(
                    Circle()
                        .fill(Color.gray)
                        .opacity(0.5)
                )
            
            Spacer()
            
            Text("Custom Overlay")
                .font(.title2)
                .padding()
                .background(Color.green)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 3)
                        .padding(5)
                )
        }
        .padding()
    }

}

#Preview {
    BackgroundAndOverlayBootcamp()
}
