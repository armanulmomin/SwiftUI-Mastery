//
//  TypeAliasBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 15/8/25.
//

import SwiftUI

struct MoviewModel{
    let title: String
    let director: String
    let count: Int
}

typealias TVModel = MoviewModel


struct TypeAliasBootcamp: View {
   // @State var item: MoviewModel = MoviewModel(title: "Title", director: "Joe", count: 5)
    @State var item: TVModel = TVModel(title: "Title", director: "Emily", count: 10)
    
    var body: some View {
        VStack{
            Text(item.title)
            Text(item.director)
            Text("\(item.count)")
        }
        
    }
}

#Preview {
    TypeAliasBootcamp()
}
