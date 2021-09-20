//
//  CoffeeMachineRepository.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import Foundation
import Combine

enum CoffeeMachineRepository {
    static let apiClient = APIClient()
    static let baseUrl = URL(string: "https://darkroastedbeans.coffeeit.nl/")!
}

enum APIPath: String {
    case coffeeMachine = "coffee-machine/60ba1ab72e35f2d9c786c610"
}

extension CoffeeMachineRepository {
    static func request(_ path: APIPath) -> AnyPublisher<CoffeeMachine, Error> {
        guard let components = URLComponents(url: baseUrl.appendingPathComponent(path.rawValue), resolvingAgainstBaseURL: true)
            else { fatalError("Couldn't create URLComponents") }
        
        let request = URLRequest(url: components.url!)
        
        return apiClient.run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
}
