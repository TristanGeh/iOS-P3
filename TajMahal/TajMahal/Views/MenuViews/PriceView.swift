//
//  PriceView.swift
//  TajMahal
//
//  Created by Tristan Géhanne on 02/01/2024.
//

import SwiftUI

struct PriceView: View {
    let dish: Dish
    
    var body: some View {
        Text("\(dish.price)€")
            .font(.system(size: 12))
        Spacer()
        PepperView(viewModel: ViewModel(spiceLevel: dish.spiceLevel), spiceLevel: dish.spiceLevel)
    }
}

#Preview {
    PriceView(dish: Dish(id: 1, name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", price: "5,50", spiceLevel: .light, imageName: "Samosas"))
}
