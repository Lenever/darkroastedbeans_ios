//
//  CoffeeTypes.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import Foundation

// MARK: - CoffeeTypes
struct CoffeeType: Codable, Identifiable {
    static var example = CoffeeType(
        id: "60ba1a062e35f2d9c786c56d",
        name: "Ristretto",
        sizes: [CoffeeSize.example.id],
        extras: [CoffeeExtra.example.id]
    )
    
    let id: String
    let name: String
    let sizes: [String]
    let extras: [String]
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, sizes, extras
    }
}
