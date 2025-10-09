//
//  Image Bootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 9/8/25.
//

import SwiftUI

struct Image_Bootcamp: View {
    var body: some View {
        HStack {
            Image("Picture")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 200)
                .clipped()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                )
                .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
                .padding()
                .onTapGesture {
                    print("Image tapped!")
                }
                .scaleEffect(1.0)
                .animation(.spring(), value: UUID())
            Image("Picture")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 200)
                .clipped()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                )
                .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
                .padding()
                .onTapGesture {
                    print("Image tapped!")
                }
                .scaleEffect(1.0)
                .animation(.spring(), value: UUID())
            Image("Picture")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 200)
                .clipped()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                )
                .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
                .padding()
                .onTapGesture {
                    print("Image tapped!")
                }
                .scaleEffect(1.0)
                .animation(.spring(), value: UUID())
        }

    }
}

#Preview {
    Image_Bootcamp()
}
