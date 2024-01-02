//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("TajMahal")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                    .padding(.top)
                VStack {
                    Title()
                        .padding(.bottom, 20)
                    Spacer()
                    Informations()
                        .font(.system(size: 13))
                }
                .foregroundColor(.customGrey)
                .padding()
                
                NavigationLink(destination: MenuView().navigationBarBackButtonHidden(true)) {
                    Text("Accéder au menu")
                        .frame(maxWidth: 300, maxHeight: 40)
                        .background(Color.customRed)
                        .font(.headline)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    WelcomeView()
}
