//
//  CoffeeViewModel.swift
//  CoffeeDrinksApp
//
//  Created by Sibel Rodriguez on 6/03/26.
//

import Foundation
import SwiftUI
import Combine

class CoffeeViewModel: ObservableObject {
    
    @Published var drinks: [CoffeeDrink] = []
    @Published var isLoading = false
    
    private let service: CoffeeService

    init(service: CoffeeService) {
        self.service = service
    }

    func loadDrinks() {
        isLoading = true
        
        service.fetchDrinks { [weak self] drinks in
            self?.drinks = drinks
            self?.isLoading = false
        }
    }
}
