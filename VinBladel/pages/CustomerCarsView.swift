//
//  CustomerCarsView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/25/24.
//

import SwiftUI
import FirebaseDatabase

struct CustomerCarsView: View {
    @EnvironmentObject var firebaseClass: FirebaseClass
    @State var currentCustomer: customer
    var body: some View {
        List {
            ForEach(firebaseClass.carArray, id: \.self) { car in
                if car.customerID == currentCustomer.id {
                    NavigationLink("\(car.year) \(car.modelDescription)") {
                        CustomerTabs(customerCar: car, firstName: currentCustomer.firstName, lastName: currentCustomer.lastName)
                            .font(.system(size: 23))
                    }
                }
            }
        }
        .navigationTitle("\(currentCustomer.lastName), \(currentCustomer.firstName)")
    }
}

#Preview {
    CustomerCarsView(currentCustomer: customer(addr1: "", addr2: "", city: "", country: "", email: "", firstName: "", homePhone: "", id: "", key: "", lastName: "", state: "", title: "", workPhone: "", zipCode: ""))
}
