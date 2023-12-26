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
            NavigationSplitView {
                    List(viewModel.apetizerArray) { apetizer in
                        NavigationLink{
                            DishDetail(dish: apetizer)
                                
                        } label: {
                            DishView(dish: apetizer)
                        }
                        
                    }
                        List(viewModel.mainCourseArray) { main in
                            NavigationLink{
                                DishDetail(dish: main)
                            }label: {
                                DishView(dish: main)
                            }
                        }
            } detail: {
                Text("Choisissez un plât")
            }
        }
    }




#Preview {
    MenuView()
}
