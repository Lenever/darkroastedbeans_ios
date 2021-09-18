//
//  CoffeeMachine.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import Foundation

// MARK: - CoffeeMachine
struct CoffeeMachine: Codable {
    let id: String
    let types: [CoffeeTypes]
    let sizes: [CoffeeSize]
    let extras: [CoffeeExtra]

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case types, sizes, extras
    }
}
