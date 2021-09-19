//
//  CoffeeSize.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import Foundation

// MARK: - Size
struct CoffeeSize: Codable {
    static var example = CoffeeSize(
        id: "60ba3368c45ecee5d77a016b",
        name: "Venti",
        v: nil
    )

    let id: String
    let name: String
    let v: Int?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case v = "__v"
    }
}
