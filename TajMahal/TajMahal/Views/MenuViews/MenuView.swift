//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct MenuView: View {
    let viewModel: ViewModel = ViewModel(spiceLevel: .hot)
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading){
                    Text("Entrées")
                        .font(.subheadline)
                        .padding(.top, 15)
                        .padding(.bottom, 3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.customGrey)
                    ForEach(viewModel.apetizerArray) { apetizer in
                        VStack {
                            NavigationLink(destination: DishDetailView(dish: apetizer)) {
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
                        NavigationLink(destination: DishDetailView(dish: main)) {
                            DishView(dish: main)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 15)
            }
            .background(Color.customBackground)
            
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image("Arrow")
            })
            .navigationBarTitle("Menu", displayMode: .inline)
        }
    }
}





#Preview {
    MenuView()
}
