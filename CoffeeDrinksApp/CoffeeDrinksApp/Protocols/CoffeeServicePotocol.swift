//
//  CoffeeServicePotocol.swift
//  CoffeeDrinksApp
//
//  Created by Sibel Rodriguez on 11/05/26.
//

protocol CoffeeServiceProtocol {
    func fetchDrinks(completion: @escaping ([CoffeeDrink]) -> Void)
}
