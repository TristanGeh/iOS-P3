//
//  MenuDetail.swift
//  TajMahal
//
//  Created by Tristan Géhanne on 25/12/2023.
//

import SwiftUI

struct DishDetailView: View {
    let dish: Dish
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            ZStack(alignment: .topTrailing){
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .frame(width: 360, height: 460)
                    .cornerRadius(10)
                
                PepperView(viewModel: ViewModel(spiceLevel: dish.spiceLevel), spiceLevel: dish.spiceLevel)
                    .padding(12)
            }
            .padding(.bottom, 32)
            
            HStack {
                VStack(alignment: .leading){
                    Text("Allergènes :")
                        .fontWeight(.semibold)
                        .padding(.bottom, 8)
                    Text(dish.allergens)
                        .fontWeight(.light)
                }
                Spacer()
            }
            Rectangle()
                .fill(Color.pepperGrey)
                .frame(height: 1)
                .padding(.top, 15)
                .padding(.bottom, 15)
            VStack(alignment: .leading){
                Text("Ingrédients :")
                    .fontWeight(.semibold)
                    .padding(.bottom, 8)
                Text(dish.ingredients)
                    .fontWeight(.light)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image("Arrow")
                    Text(dish.name)
                        .font(.system(size: 23))
                        .fontWeight(.semibold)
                    
                }
            })
        }
        .padding()
        .foregroundColor(.customGrey)
        
    }
}

#Preview {
    DishDetailView(dish: Dish(id: 1, name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", price: "5,50", spiceLevel: .light, imageName: "Samosas"))
}
