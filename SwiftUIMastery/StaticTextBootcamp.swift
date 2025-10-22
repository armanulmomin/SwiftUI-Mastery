//
//  StaticTextBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 17/8/25.
//

import SwiftUI

struct StaticTextBootcamp: View {
    var alignments: [TextAlignment] = [.leading, .trailing, .center]
    @State private var alignment = TextAlignment.leading
    var body: some View {
        
       // creating static labels with a text view
        Text("This is a longer text view, which needs couple of lines and i am going to use line limit to figure it out what i can do it while keeping the view compact with the help of lineLimit along with using frame.")
            .lineLimit(2, reservesSpace: true)
            .frame(width: 200)
            .truncationMode(.middle)
       
         
        
        
       // How to style text views with fonts, colors, line spacing and more
        Text("This is a longer text view, which needs couple of lines and i am going to use line limit to figure it out what i can do it while keeping the view compact with the help of lineLimit along with using frame.This is a longer text view, which needs couple of lines and i am going to use line limit to figure it out what i can do it while keeping the view compact with the help of lineLimit along with using frame.
        ")
        
           
            
            
            .fontWidth(.compressed)
            .frame(width: 300)
            .lineSpacing(50)
            .foregroundStyle(.red.gradient)
            .background(Color.blue)
         
        
        // How to adjust text alignment using multiline text Allignment()
        VStack{
            Picker("Text alignment", selection: $alignment){
                ForEach(alignments, id: \.self){ alignment in
                    //Text(String(describing: alignment))
                    Text("\(alignment)")
                    
                }
                
            }
            Text("This is a longer text view, which needs couple of lines and i am going to use line limit to figure it out what i can do it while keeping the view compact with the help of lineLimit along with using frame.")
                .font(.largeTitle)
                .multilineTextAlignment(alignment)
                .frame(width: 300)
                .padding(10)
        }
        //How to format text inside text views
    }
}

#Preview {
    StaticTextBootcamp()
}
