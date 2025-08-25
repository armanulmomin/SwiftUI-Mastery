//
//  ColorBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 1/8/25.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
           // .fill(Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)))
            .fill(Color("CustomColor"))
            .frame(width: 250,height: 250)
            .padding(50)
    }
}

#Preview {
    ColorBootcamp()
}
