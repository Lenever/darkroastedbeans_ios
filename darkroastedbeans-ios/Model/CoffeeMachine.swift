//
//  CoffeeMachine.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import Foundation

// MARK: - CoffeeMachine
struct CoffeeMachine: Codable {
    static var example = CoffeeMachine(
        id: "60ba1ab72e35f2d9c786c610",
        types: [CoffeeType.example],
        sizes: [CoffeeSize.example],
        extras: [CoffeeExtra.example]
    )

    let id: String
    let types: [CoffeeType]
    let sizes: [CoffeeSize]
    let extras: [CoffeeExtra]

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case types, sizes, extras
    }
}
