//
//  GradientBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 2/8/25.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.red
//                LinearGradient(gradient: Gradient(colors: [.red, .blue, .orange]), startPoint: .leading, endPoint: .trailing)
//                RadialGradient(gradient: Gradient(colors: [.red, .blue, .orange]), center: .center, startRadius: 5, endRadius: 200)
                AngularGradient(gradient: Gradient(colors: [.red, .blue, .orange]), center: .topLeading, angle: .degrees(180))
            )
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    GradientBootcamp()
}
