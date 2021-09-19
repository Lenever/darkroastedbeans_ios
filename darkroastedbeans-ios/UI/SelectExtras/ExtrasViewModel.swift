//
//  ExtrasViewModel.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 19/09/2021.
//

import Foundation

final class ExtrasViewModel: ObservableObject {
    @Published var coffeeMachine: CoffeeMachine
    @Published var selectedCoffeeType: CoffeeType
    
    var coffeeExtras: [String] {
        var extras: [String] = []
        
        for extrasID in selectedCoffeeType.extras {
            for extra in coffeeMachine.extras {
                if extrasID == extra.id {
                    extras.append(extra.name)
                }
            }
        }
        
        return extras
    }
    
    var milkOptions: [String] {
        var options: [String] = []
        
        for extra in coffeeMachine.extras[1].subselections {
            options.append(extra.name)
        }
        
        return options
    }
    
    var sugarOptions: [String] {
        var options: [String] = []
        
        for extra in coffeeMachine.extras[0].subselections {
            options.append(extra.name)
        }
        
        return options
    }
    
    init(coffeeMachine: CoffeeMachine, selectedCoffeeType: CoffeeType) {
        self.coffeeMachine = coffeeMachine
        self.selectedCoffeeType = selectedCoffeeType
    }
}
