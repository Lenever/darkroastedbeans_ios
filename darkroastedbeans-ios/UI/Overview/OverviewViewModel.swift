//
//  OverviewViewModel.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 19/09/2021.
//

import Foundation

final class OverviewViewModel: ObservableObject {
    @Published var coffeeMachine: CoffeeMachine
    
    init(coffeeMachine: CoffeeMachine) {
        self.coffeeMachine = coffeeMachine
    }
}
