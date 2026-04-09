//
//  CoffeeDrinksAppApp.swift
//  CoffeeDrinksApp
//
//  Created by Sibel Rodriguez on 6/03/26.
//

import SwiftUI

@main
struct CoffeeDrinksAppApp: App {
    var body: some Scene {
        WindowGroup {
            CoffeeListView(
                viewModel: CoffeeViewModel(
                    service: CoffeeService()
                )
            )
        }
    }
}
