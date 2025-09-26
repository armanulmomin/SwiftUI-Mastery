//
//  ColorBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 1/8/25.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
            .fill(Color("CustomColor"))
            .frame(width: 250, height: 250)
            .overlay(
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .stroke(Color.white.opacity(0.6), lineWidth: 4)
            )
            .padding(50)
            .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
            .shadow(color: .white.opacity(0.2), radius: 5, x: -5, y: -5)
            .animation(.easeInOut(duration: 0.3), value: UUID()) // smooth refresh
    }

}

#Preview {
    ColorBootcamp()
}
