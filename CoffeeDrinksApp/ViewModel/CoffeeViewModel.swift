//
//  CoffeeViewModel.swift
//  CoffeeDrinksApp
//
//  Created by Sibel Rodriguez on 6/03/26.
//

import Foundation
internal import Combine

class CoffeeViewModel: ObservableObject {
    
    @Published var drinks: [CoffeeDrink] = [
        CoffeeDrink(name:"Espresso", description: "Esencia de café"),
        CoffeeDrink(name:"Capuccino", description: "Café con leche espumoso"),
        CoffeeDrink(name:"Latte Clásico", description: "Café con leche sin presencia de espuma"),
        CoffeeDrink(name:"Long Black", description: "Espresso Doble sobre el agua caliente"),
        CoffeeDrink(name:"Mokaccino", description: "Café con leche sin presencia de espuma")
        
    ]
}
