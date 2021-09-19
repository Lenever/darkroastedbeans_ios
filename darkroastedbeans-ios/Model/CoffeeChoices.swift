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
        coffeeType: "Lungo",
        coffeeSize: "Medium",
        milkExtra: ["Oat"],
        sugarExtra: ["A lot"]
    )
    
    var coffeeType: String?
    var coffeeSize: String?
    var milkExtra: [String]?
    var sugarExtra: [String]?
    
    init(
        coffeeType: String? = nil,
        coffeeSize: String? = nil,
        milkExtra: [String]? = nil,
        sugarExtra: [String]? = nil
    ) {
        self.coffeeType = coffeeType
        self.coffeeSize = coffeeSize
        self.milkExtra = milkExtra
        self.sugarExtra = sugarExtra
    }
}
