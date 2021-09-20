//
//  SelectSizeViewModel.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 19/09/2021.
//

import Foundation

final class SelectSizeViewModel: ObservableObject {
    @Published var coffeeMachine: CoffeeMachine
    @Published var selectedCoffeeType: CoffeeType
    
    var coffeeSizes: [String] {
        var sizes: [String] = []

        for sizeID in selectedCoffeeType.sizes {
            for size in coffeeMachine.sizes {
                if sizeID == size.id {
                    sizes.append(size.name)
                }
            }
        }

        return sizes
    }
    
    init(
        coffeeMachine: CoffeeMachine,
        selectedCoffeeType: CoffeeType
    ) {
        self.coffeeMachine = coffeeMachine
        self.selectedCoffeeType = selectedCoffeeType
    }
}
