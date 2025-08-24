//
//  CodableBootcamp.swift
//  SwiftUIMastery
//
//  Created by Arman on 23/8/25.
//

import SwiftUI

struct CustomerModel: Identifiable, Decodable, Encodable{
    let id: String
    let name: String
    let points: Int
    let isPremium: Bool
    
    enum CodingKeys: String, CodingKey{
        case id,name,points,isPremium
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.points = try container.decode(Int.self, forKey: .points)
        self.isPremium = try container.decode(Bool.self, forKey: .isPremium)
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.points, forKey: .points)
        try container.encode(self.isPremium, forKey: .isPremium)
    }
}

class CodableViewModel: ObservableObject {
    @Published var customer: CustomerModel? = nil
    
    init(){
        getData()
    }
    func getData(){
        guard let data = getJSONData() else{return}
        self.customer = try? JSONDecoder().decode(CustomerModel.self, from: data)
//        do{
//           
//        } catch let error{
//            print("error decoding. \(error)")
//        }
        
//        if
//        let localData = try? JSONSerialization.jsonObject(with: data, options: []),
//            let dictionary = localData as? [String: Any],
//            let id = dictionary["id"] as? String,
//            let name = dictionary["name"] as? String,
//            let points = dictionary["points"] as? Int,
//            let isPremium = dictionary["isPremium"] as? Bool
//        {
//            let newCustomer = CustomerModel(id: id, name: name, points: points, isPremium: isPremium)
//            customer = newCustomer
//        }
    }
    func getJSONData() -> Data? {
        
       // let customer = CustomerModel(id: "12345", name: "John Doe", points: 30, isPremium: false)
        
        let dictionary: [String: Any] = [
            "id" : "12345",
            "name" : "John Doe",
            "points" : 30,
            "isPremium" : false
        ]
        let jsonData = try? JSONSerialization.data(withJSONObject: dictionary)
        return jsonData
    }
}

struct CodableBootcamp: View {
    @StateObject var vm = CodableViewModel()
    var body: some View {
        VStack(spacing: 20){
            if let customer = vm.customer {
                Text("id: \(customer.id)")
                Text("Name: \(customer.name)")
                Text("Points: \(customer.points)")
                Text("Premium: \(customer.isPremium ? "Yes" : "No")")
            } else {
                Text("Loading...")
            }
        }
    }
}

#Preview {
    CodableBootcamp()
}
