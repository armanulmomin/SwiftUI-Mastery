//
//  CountingPage.swift
//  SwiftUIMastery
//
//  Created by Arman on 13/9/25.
//

import SwiftUI

struct CountingPage: View {
    @Binding var text: String
    var body: some View {
        Text(text)
    }
}

#Preview {
    CountingPage(text: .constant("Empty"))
}
