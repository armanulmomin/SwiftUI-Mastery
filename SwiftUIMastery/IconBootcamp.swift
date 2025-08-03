//
//  IconBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 3/8/25.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .scaledToFit()
            .font(.system(size: 32))
            .foregroundStyle(.green)
            .frame(width: 300, height: 300)
    }
}

#Preview {
    IconBootcamp()
}
