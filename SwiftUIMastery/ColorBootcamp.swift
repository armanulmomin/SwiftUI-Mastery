//
//  ColorBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 1/8/25.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color("CustomColor"))
            .frame(width: 250, height: 250)
            .padding(50)
            .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)

    }
}

#Preview {
    ColorBootcamp()
}
