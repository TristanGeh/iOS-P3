//
//  ViewModel.swift
//  TajMahal
//
//  Created by Amandine Cousin on 07/11/2023.
//

import Foundation
import SwiftUI

// Strcture qui gère toute la logique du code
// Fait l'intermédiaire entre l'affichage et les données
struct ViewModel {
    
    // Stocke les entrées qui composent le menu du restaurant
    let apetizerArray : [Dish] =
    [Dish(id: 1, name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", price: "5,50", spiceLevel: .light, imageName: "Samosas"),
     Dish(id: 2, name: "Pakoras", description: "Beignets de légumes enrobés de pâte épicée et frits", allergens: "Sans allergènes majeurs", ingredients: "Légumes assortis (aubergines, oignons, épinards), farine de pois chiches, épices, huile", price: "5,00", spiceLevel: .medium, imageName: "Pakoras"),
     Dish(id: 3 ,name: "Aloo Tikki", description: "Galettes de pommes de terre épicées et croustillantes", allergens: "Sans allergènes majeurs", ingredients: "Pommes de terre, épices, farine de pois chiches", price: "5,50", spiceLevel: .medium, imageName: "Aloo")]
    
    // Stocke les plats qui composent le menu du restaurant
    let mainCourseArray : [Dish] =
    [Dish(id: 1, name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", price: "13,00", spiceLevel: .medium, imageName: "Tikka Masala"),
     Dish(id: 2, name: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", allergens: "Noix de cajou, riz", ingredients: "Riz basmati, légumes assortis (carottes, petits pois, haricots verts), noix de cajou, raisins secs, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre", price: "10,50", spiceLevel: .medium, imageName: "Biryani"),
     Dish(id: 3, name: "Rogan Josh", description: "Agneau mijoté dans une sauce épicée", allergens: "Ail, oignon", ingredients: "Agneau, oignons, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, huile, coriandre fraîche", price: "14,50", spiceLevel: .hot, imageName: "Rogan Josh")]
    
        
    var spiceLevel: SpiceLevel
    
    func peppersColor(spiceLevel: SpiceLevel, index: Int) -> Color {
        switch spiceLevel {
        case .light:
            return index == 0 ? Color("CustomRed") : Color("PepperGrey")
        case .medium:
            return index <= 1 ? Color("CustomRed") : Color("PepperGrey")
        case .hot:
            return Color("CustomRed")
        }
    }

}

