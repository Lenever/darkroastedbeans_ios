//
//  OverviewViewModel.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 19/09/2021.
//

import Foundation

final class OverviewViewModel: ObservableObject {
    @Published var coffeeMachine: CoffeeMachine
    @Published var coffeeChoices: CoffeeChoices
    
    var milkExtras: [String] {
        var milkExtras: [String] = []
        
        if let mixedExtras = coffeeChoices.mixedExtras {
            for milkExtra in mixedExtras {
                for extra in coffeeMachine.extras {
                    if extra.name.contains("milk") {
                        for milk in extra.subselections {
                            if milkExtra == milk.name {
                                milkExtras.append(milkExtra)
                            }
                        }
                    }
                }
            }
        }
        
        return milkExtras
    }
    
    var sugarExtras: [String] {
        var sugarExtras: [String] = []
        
        if let mixedExtras = coffeeChoices.mixedExtras {
            for sugarExtra in mixedExtras {
                for extra in coffeeMachine.extras {
                    if extra.name.contains("sugar") {
                        for sugar in extra.subselections {
                            if sugarExtra == sugar.name {
                                sugarExtras.append(sugarExtra)
                            }
                        }
                    }
                }
            }
        }
        
        return sugarExtras
    }
    
    init(
        coffeeMachine: CoffeeMachine,
        coffeeChoices: CoffeeChoices
    ) {
        self.coffeeMachine = coffeeMachine
        self.coffeeChoices = coffeeChoices
    }
}
