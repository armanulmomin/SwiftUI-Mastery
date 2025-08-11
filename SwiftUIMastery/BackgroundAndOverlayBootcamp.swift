//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 11/8/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .overlay(
                Circle()
                    .fill(Color.gray)
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
