//
//  Informations.swift
//  TajMahal
//
//  Created by Tristan Géhanne on 18/12/2023.
//

import SwiftUI

struct Informations: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HStack {
                HStack {
                    Image("Clock")
                    Text("Mardi")
                }
                Spacer()
                Text("11h30 - 14h30 ・18h30-22h00")
            }
            HStack {
                HStack {
                    Image("House")
                    Text("Type de service")
                }
                Spacer()
                Text("À emporter")
            }
            HStack {
                Image("Localisation")
                Text("12 Avenue de la Brique - 75010 Paris")
            }
            HStack {
                Image("Site")
                Text("ww.tajmahal.fr")
            }
            HStack {
                Image("Phone")
                Text("06 12 34 56 78")
            }
        }
    }
}

#Preview {
    Informations()
}
