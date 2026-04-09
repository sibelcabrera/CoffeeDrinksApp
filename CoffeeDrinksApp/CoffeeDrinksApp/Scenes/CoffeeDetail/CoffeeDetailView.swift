//
//  CoffeeDetailView.swift
//  CoffeeDrinksApp
//
//  Created by Sibel Rodriguez on 17/03/26.
//

import SwiftUI

struct CoffeeDetailView: View {

    var viewModel: DetailCoffeeViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(viewModel.drinkSelected.name)
                .font(.largeTitle)
                .bold()
            
            Text(viewModel.drinkSelected.description)
                .font(.body)
                .foregroundColor(.gray)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Detalle")
    }
}
