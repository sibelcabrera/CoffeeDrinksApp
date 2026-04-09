//
//  CoffeeListView.swift
//  CoffeeDrinksApp
//
//  Created by Sibel Rodriguez on 6/03/26.
//

import SwiftUI

struct CoffeeListView: View {
    @StateObject var viewModel: CoffeeViewModel

    var body: some View {
        NavigationView {
            List(viewModel.drinks) { drink in
                NavigationLink(destination: CoffeeDetailView(drink: drink)) {
                    
                    VStack(alignment: .leading) {
                        Text(drink.name)
                            .font(.headline)
                        
                        Text(drink.description)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationBarTitle("Coffee Drinks")
        }
        .onAppear {
            viewModel.loadDrinks()
        }
    }
}

#Preview {
    CoffeeListView(
        viewModel: CoffeeViewModel(
            service: CoffeeService()
        )
    )
}
