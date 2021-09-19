//
//  Subselection.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import Foundation

// MARK: - Subselection
struct Subselection: Codable {
    static var example = Subselection(
        id: "60ba349a869d7a04642b41f4",
        name: "Cow"
    )
    
    let id: String
    let name: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
    }
}
