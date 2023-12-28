//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel(spiceLevel: .hot)
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text("Menu")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.bottom, 15)
                VStack(alignment: .leading){
                    Text("Entrées")
                        .font(.subheadline)
                        .padding(.bottom, 3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.customGrey)
                    ForEach(viewModel.apetizerArray) { apetizer in
                        VStack {
                            NavigationLink(destination: DishDetail(dish: apetizer)) {
                                DishView(dish: apetizer)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .padding(.horizontal, 15)
                .padding(.bottom, 17)
                
                VStack(alignment: .leading){
                    Text("Plats Principaux")
                        .font(.subheadline)
                        .padding(.bottom, 3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.customGrey)
                    ForEach(viewModel.mainCourseArray) { main in
                        NavigationLink(destination: DishDetail(dish: main)) {
                            DishView(dish: main)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 15)
            }
            .background(Color.customBackground)
        }
        
    }
}





#Preview {
    MenuView()
}
