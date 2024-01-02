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
                .aspectRatio(contentMode: .fill)
                .frame(width: 110, height: 85)
                .cornerRadius(10)
                .padding(.trailing, 5)
                .padding(.vertical, 12)
                .padding(.leading, 11)
            VStack(alignment: .leading) {
                Text(dish.name)
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                
                Text(dish.description)
                    .font(.system(size: 12))
                    .padding(.top, 2)
                    .padding(.bottom, 5)
                    .padding(.trailing, 8)
                HStack {
                    PriceView(dish: dish)
                    
                }
            }
            
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding(.vertical, 2)
        .foregroundColor(.customGrey)
    }
}


#Preview {
    VStack {
        Text("Entrée")
        DishView(dish: Dish(id: 1, name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", price: "5,50", spiceLevel: .light, imageName: "Samosas"))
        DishView(dish: Dish(id: 2, name: "Pakoras", description: "Beignets de légumes enrobés de pâte épicée et frits", allergens: "Sans allergènes majeurs", ingredients: "Légumes assortis (aubergines, oignons, épinards), farine de pois chiches, épices, huile", price: "5,00", spiceLevel: .medium, imageName: "Pakoras"))
    }
    .background(Color.customBackground)
}
