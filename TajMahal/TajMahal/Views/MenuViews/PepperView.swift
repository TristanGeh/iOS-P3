//
//  Pepper.swift
//  TajMahal
//
//  Created by Tristan Géhanne on 25/12/2023.
//

import SwiftUI

struct PepperView: View {
    let viewModel: ViewModel
    let spiceLevel: SpiceLevel
    
    var body: some View {
        HStack{
            ForEach(0..<3, id: \.self) { index in
                Image("Pepper")
                    .resizable()
                    .frame(width: 12, height: 12)
                    .foregroundColor(viewModel.peppersColor(spiceLevel: spiceLevel,index: index))
            }
        }
        .frame(width: 74, height: 22)
        .background(.white)
        .cornerRadius(11)
    }
}

#Preview {
    PepperView(viewModel: ViewModel(spiceLevel: .medium), spiceLevel: .light)
}
