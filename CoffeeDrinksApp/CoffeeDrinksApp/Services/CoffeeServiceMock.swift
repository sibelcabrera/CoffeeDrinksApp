//
//  CoffeeServiceMock.swift
//  CoffeeDrinksApp
//
//  Created by Sibel Rodriguez on 11/05/26.
//

class CoffeeServiceMock: CoffeeServiceProtocol {
    
    func fetchDrinks(completion: @escaping ([CoffeeDrink]) -> Void) {
        var listDrinks = [CoffeeDrink]()
        listDrinks.append(CoffeeDrink(name: "mockName", description: "mockDescription"))
        listDrinks.append(CoffeeDrink(name: "mockName", description: "mockDescription"))
        listDrinks.append(CoffeeDrink(name: "mockName", description: "mockDescription"))
        listDrinks.append(CoffeeDrink(name: "mockName", description: "mockDescription"))
        listDrinks.append(CoffeeDrink(name: "mockName", description: "mockDescription"))
        completion(listDrinks)
    }
}
