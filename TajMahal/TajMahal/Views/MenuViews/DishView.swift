//
//  DishView.swift
//  TajMahal
//
//  Created by Tristan Géhanne on 22/12/2023.
//

import SwiftUI

struct DishView: View {
    let dish: Dish
    
    var body: some View {
        HStack {
            Image(dish.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: 80)
                .cornerRadius(10)
                .padding(.trailing, 25)
            VStack(alignment: .leading) {
                    Text(dish.name)
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                Spacer()
                
                    Text(dish.description)
                        .font(.system(size: 12))
                Spacer()
                HStack {
                    Text("\(dish.price)€")
                        .font(.system(size: 12))
                    Spacer()
                    PepperView(viewModel: ViewModel(spiceLevel: dish.spiceLevel), spiceLevel: dish.spiceLevel)
                }
            }
            
        }
        .padding()
        .cornerRadius(10)
        .frame(width: 335, height: 110)
    }
}

#Preview {
    DishView(dish: Dish(id: 1, name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", price: "5,50", spiceLevel: .light, imageName: "Samosas"))
}
