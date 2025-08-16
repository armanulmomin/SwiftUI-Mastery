//
//  ForEachBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 16/8/25.
//

import SwiftUI

struct ForEachBootcamp: View {
    var body: some View {
        VStack{
            ForEach(0..<10){index in
                Text("Hi: \(index)")
                
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
