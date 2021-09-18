//
//  CoffeeExtra.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import Foundation

// MARK: - CoffeeExtra
struct CoffeeExtra: Codable {
    let id, name: String
    let subselections: [Subselection]

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, subselections
    }
}
