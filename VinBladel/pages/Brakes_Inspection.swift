//
//  Brakes_Inspection.swift
//  VinBladelNew
//
//  Created by James Balek on 1/23/24.
//

import Foundation
import FirebaseDatabase
import SwiftUI

struct Brakes_Inspection: View {
    var body: some View {
            VStack {
                Text("Brakes Inspection")
                    .font(.system(size: 30))
                    .bold()
                    .padding()
                Image("ColorsMeaning")
                    .resizable()
                    .frame(width: 900, height: 90)
                    .padding()
                ScrollView {
                    InspectionList(arrayTitle: "brakes")
                }
            }
    }
}
