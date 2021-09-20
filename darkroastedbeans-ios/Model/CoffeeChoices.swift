//
//  CoffeeChoices.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 19/09/2021.
//

import Foundation

// MARK: - CoffeeChoices
class CoffeeChoices: ObservableObject {
    static var example = CoffeeChoices (
        selectedCoffeeType: CoffeeType.example,
        coffeeType: "Lungo",
        coffeeSize: "Medium",
        mixedExtras: ["Oat", "A lot"],
        milkExtra: ["Oat"],
        sugarExtra: ["A lot"]
    )
    
    var selectedCoffeeType: CoffeeType?
    var coffeeType: String?
    var coffeeSize: String?
    var mixedExtras: [String]?
    var milkExtra: [String]?
    var sugarExtra: [String]?
    
    init(
        selectedCoffeeType: CoffeeType? = nil,
        coffeeType: String? = nil,
        coffeeSize: String? = nil,
        mixedExtras: [String]? = nil,
        milkExtra: [String]? = nil,
        sugarExtra: [String]? = nil
    ) {
        self.selectedCoffeeType = selectedCoffeeType
        self.coffeeType = coffeeType
        self.coffeeSize = coffeeSize
        self.mixedExtras = mixedExtras
        self.mixedExtras = milkExtra
        self.sugarExtra = sugarExtra
    }
}
