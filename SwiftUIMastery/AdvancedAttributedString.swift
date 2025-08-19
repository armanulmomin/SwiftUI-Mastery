//
//  AdvancedAttributedString.swift
//  SwiftUIMastery
//
//  Created by Arman on 19/8/25.
//

import SwiftUI

struct AdvancedAttributedString: View {
    var message1: AttributedString {
            var result = AttributedString("Hello, world!")
            result.font = .largeTitle
            result.foregroundColor = .white
            result.backgroundColor = .blue
            result.underlineStyle = Text.LineStyle(pattern: .solid, color: .white)
            return result
        }
    var message2: AttributedString {
            var result = AttributedString("Hello, world!")
            result.font = .largeTitle
            result.foregroundColor = .white
            result.backgroundColor = .red
            return result
        }
    var body: some View {
        Text(message1 + message2)
    }
}

#Preview {
    AdvancedAttributedString()
}
