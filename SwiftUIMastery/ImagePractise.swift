//
//  ImagePractise.swift
//  SwiftUIMastery
//
//  Created by Arman on 18/9/25.
//

import SwiftUI

struct ImagePractise: View {
    var body: some View {
        HStack {
            ForEach([Color.blue, Color.purple, Color.indigo], id: \.self) { color in
                Image(systemName: "figure.american.football")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(color)
            }
        }

    }
}

#Preview {
    ImagePractise()
}
