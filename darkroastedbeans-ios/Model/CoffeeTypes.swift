//
//  CoffeeTypes.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import Foundation

// MARK: - CoffeeTypes
struct CoffeeTypes: Codable {
    let id, name: String
    let sizes, extras: [String]
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, sizes, extras
    }
}
