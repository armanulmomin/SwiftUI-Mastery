//
//  Image Bootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 9/8/25.
//

import SwiftUI

struct Image_Bootcamp: View {
    var body: some View {
        Image("Picture")
            
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300,height: 200)
            .clipped()
            .cornerRadius(30)
            .clipShape(Circle())
    }
}

#Preview {
    Image_Bootcamp()
}
