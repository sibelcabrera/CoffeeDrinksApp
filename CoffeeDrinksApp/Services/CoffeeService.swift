//
//  CoffeeService.swift
//  CoffeeDrinksApp
//
//  Created by Sibel Rodriguez on 17/03/26.
//

import Foundation

class CoffeeService {
    
    func fetchDrinks(completion: @escaping ([CoffeeDrink]) -> Void) {
        
        guard let url = URL(string: "https://coffee-drink-api.free.beeceptor.com/drinks") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let data = data {
                do {
                    let drinks = try JSONDecoder().decode([CoffeeDrink].self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(drinks)
                    }
                    
                } catch {
                    print("Error decoding:", error)
                }
            }
            
        }.resume()
    }
}
