//
//  ImagePractise.swift
//  SwiftUIMastery
//
//  Created by Arman on 18/9/25.
//

import SwiftUI

struct ImagePractise: View {
    var body: some View {
        HStack{
            Image(systemName: "figure.american.football")
                .resizable()
                .frame(width: 100,height: 100)
                .foregroundStyle(.blue)
            Image(systemName: "figure.american.football")
                .resizable()
                .frame(width: 100,height: 100)
                .foregroundStyle(.purple)
            Image(systemName: "figure.american.football")
                .resizable()
                .frame(width: 100,height: 100)
                .foregroundStyle(.indigo)
        }
    }
}

#Preview {
    ImagePractise()
}
