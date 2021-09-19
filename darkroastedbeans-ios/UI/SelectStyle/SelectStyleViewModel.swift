//
//  SelectStyleViewModel.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 19/09/2021.
//

import Foundation

final class SelectStyleViewModel: ObservableObject {
    @Published var coffeeMachine: CoffeeMachine
//    var coffeeChoices: CoffeeChoices
    
    init(
        coffeeMachine: CoffeeMachine
//        coffeeChoices: CoffeeChoices
    ) {
        self.coffeeMachine = coffeeMachine
//        self.coffeeChoices = coffeeChoices
    }
}
