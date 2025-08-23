//
//  EscapingBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 23/8/25.
//

import SwiftUI

class EscapingViewModel: ObservableObject {
    @Published var text: String = "Hello"
    
    func getData(){
        downloadData2 { [weak self] data in
            self?.text = data.data
        }
    }
    
    func downloadData() -> String{
        return "New Data"
    }
    
    func downloadData2(completionHandler: @escaping downloadFormation){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            let result = DownloadResult(data: "New Data show up")
            completionHandler(result)
        }
    }
}

struct DownloadResult{
    let data: String
}
typealias downloadFormation = (DownloadResult) -> ()

struct EscapingBootcamp: View {
    @StateObject var vm = EscapingViewModel()
    var body: some View {
        Text(vm.text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundStyle(.blue)
            .onTapGesture {
                vm.getData()
            }
    }
}

#Preview {
    EscapingBootcamp()
}
