//
//  CustomerCarSpecsView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/25/24.
//

import SwiftUI

struct CustomerCarSpecsView: View {
    let customerCar:vehicle
    @EnvironmentObject var firebaseClass: FirebaseClass
    let firstName: String
    let lastName: String
    var body: some View {
        List {
            Text("VIN: \(customerCar.vin)")
                .font(.system(size: 23))
            Text("Make: \(customerCar.makeDescription)")
                .font(.system(size: 23))
            Text("Model: \(customerCar.modelDescription)")
                .font(.system(size: 23))
            Text("Submodel: \(customerCar.vehicleSubModel)")
                .font(.system(size: 23))
            Text("Model Year: \(customerCar.year)")
                .font(.system(size: 23))
            Text("Engine (L) \(customerCar.engineDescription)")
                .font(.system(size: 23))
            Text("Cylinders: \(customerCar.numberOfCylinders)")
                .font(.system(size: 23))
            Text("Transmission: \(customerCar.transmission)")
                .font(.system(size: 23))
            Text("Drive Type: \(customerCar.vehicleDriveType)")
                .font(.system(size: 23))
            Text("Mileage: \(customerCar.mileage)")
                .font(.system(size: 23))
        }
        .onAppear(perform: {
            firebaseClass.setCurrentCar(car: customerCar)
        })
        .navigationTitle("\(lastName), \(firstName)")
        .font(.system(size: 23))
    }
}

#Preview {
    CustomerCarSpecsView(customerCar: vehicle(customerID: "", engineDescription: "", makeDescription: "", mileage: "", modelDescription: "", numberOfCylinders: "", transmission: "", vin: "", vehicleID: "", vehicleDriveType: "", vehicleSubModel: "", year: ""), firstName: "", lastName: "")
}
