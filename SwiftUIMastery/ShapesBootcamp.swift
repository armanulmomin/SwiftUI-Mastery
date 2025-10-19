//
//  ShapesBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 31/7/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        VStack {
            Circle()
            Ellipse()
            Rectangle()
            RoundedRectangle(cornerRadius: 20)
            Capsule()
            Path { path in
                path.move(to: CGPoint(x: 20, y: 20))
                path.addLine(to: CGPoint(x: 100, y: 20))
                path.addLine(to: CGPoint(x: 60, y: 80))
                path.closeSubpath()
            } // custom triangle

            Capsule(style: .continuous)
            RoundedRectangle(cornerRadius: 50, style: .continuous)
            Path { path in
                path.addArc(center: CGPoint(x: 50, y: 50),
                            radius: 40,
                            startAngle: .degrees(0),
                            endAngle: .degrees(270),
                            clockwise: false)
            } // arc
            Circle()
            Ellipse()
            Rectangle()
            RoundedRectangle(cornerRadius: 20)
            Capsule()
            Path { path in
                path.move(to: CGPoint(x: 20, y: 20))
                path.addLine(to: CGPoint(x: 100, y: 20))
                path.addLine(to: CGPoint(x: 60, y: 80))
                path.closeSubpath()
            } // custom triangle

            
            
            
            
            
            
            
            
            Capsule(style: .continuous)
            RoundedRectangle(cornerRadius: 50, style: .continuous)
            Path { path in
                path.addArc(center: CGPoint(x: 50, y: 50),
                            radius: 40,
                            startAngle: .degrees(0),
                            endAngle: .degrees(270),
                            clockwise: false)
            } // arc
        }
        .padding()
        .foregroundStyle(.blue)

           
        
    }
}

#Preview {
    ShapesBootcamp()
}
