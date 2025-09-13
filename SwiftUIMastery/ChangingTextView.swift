//
//  ChangingTextView.swift
//  SwiftUIMastery
//
//  Created by Arman on 13/9/25.
//

import SwiftUI

struct ChangingTextView: View {
    @State private var showPage = false
    @State private var text = "Hello World"
    @State private var isTapped = false
    @State private var count = 0
    var body: some View {
        NavigationStack {
            VStack{
                Text("\(count)")
                
                Text(text)
                Button {
                    showPage.toggle()
                    text = isTapped ? "Text changed" : "Text changed hurray"
                    print("Tapped")
                    isTapped.toggle()
                    count += 1
                } label: {
                    Text("Button")
                    
                }
                
            }
            .navigationTitle("Counting Monitor")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        showPage.toggle()
                        print("Count tap")
                        
                    } label: {
                        Text("Count")
                    }

                }
            }
            .navigationDestination(isPresented: $showPage){
                CountingPage(text: $text)
            }
        }
        
    }
}

#Preview {
    ChangingTextView()
}
