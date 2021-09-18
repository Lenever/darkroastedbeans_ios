//
//  CoffeeSize.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import Foundation

// MARK: - Size
struct CoffeeSize: Codable {
    let id, name: String
    let v: Int?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case v = "__v"
    }
}
