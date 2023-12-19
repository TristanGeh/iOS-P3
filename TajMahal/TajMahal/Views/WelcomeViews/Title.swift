//
//  Title.swift
//  TajMahal
//
//  Created by Tristan Géhanne on 18/12/2023.
//

import SwiftUI

struct Title: View {
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading) {
                    Text("Restaurant Indien")
                        .fontWeight(.thin)
                    Text("Taj Mahal")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                }
                Spacer()
                Image("LogoGris")
            }
        }
    }
}
