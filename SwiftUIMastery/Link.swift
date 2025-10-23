//
//  Link.swift
//  SwiftUIMastery
//
//  Created by Arman on 23/10/25.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        
        Link("Let's Go to Google", destination: URL(string: "https://www.google.com")!)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
    }
}

#Preview {
    LinkView()
}
