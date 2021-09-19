//
//  CoffeeExtra.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import Foundation

// MARK: - CoffeeExtra
struct CoffeeExtra: Codable {
    static var example = CoffeeExtra(
        id: "60ba34a0c45ecee5d77a0263",
        name: "Select type of milk",
        subselections: [Subselection.example]
    )

    let id: String
    let name: String
    let subselections: [Subselection]

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, subselections
    }
}
