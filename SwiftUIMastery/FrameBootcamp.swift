//
//  FrameBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 10/8/25.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .frame(width: 100,height: 100,alignment: .center)
            .background(.red)
    }
}

#Preview {
    FrameBootcamp()
}
