//
//  CoffeeDetailView.swift
//  CoffeeDrinksApp
//
//  Created by Sibel Rodriguez on 17/03/26.
//

import SwiftUI

struct CoffeeDetailView: View {
    
    let drink: CoffeeDrink
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(drink.name)
                .font(.largeTitle)
                .bold()
            
            Text(drink.description)
                .font(.body)
                .foregroundColor(.gray)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Detalle")
    }
}
