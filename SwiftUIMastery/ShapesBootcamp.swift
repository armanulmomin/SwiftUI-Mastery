//
//  ShapesBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 31/7/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        Circle()
        Ellipse()
        Rectangle()
        RoundedRectangle(cornerRadius: 20)
        Capsule()
           // .fill(Color.blue)
            //.foregroundStyle(Color.red)
            //.stroke(Color.red, lineWidth: 10)
            //.stroke(Color.blue, style: StrokeStyle(lineWidth: 30, lineCap: .round,dash: [30, 50]))
            //.trim(from: 0.2,to: 1.0)
        
    }
}

#Preview {
    ShapesBootcamp()
}
