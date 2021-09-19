//
//  TabMachineViewModel.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import Foundation
import Combine

final class TabMachineViewModel: ObservableObject {
    @Published var coffeeMachine: CoffeeMachine?
    
    @Published var error: Error?
    
    /// 🗑 Combine cancellables.
    private var cancellables: AnyCancellable?
    
    init() {
        getCoffeeMachine()
    }
    
    func getCoffeeMachine() {
        cancellables = CoffeeMachineRepository.request(.coffeeMachine)
            .mapError({ (error) -> Error in
                print(error)
                self.error = error
                return error
            })
            .sink(receiveCompletion: { _ in },
                  receiveValue: {
                    self.coffeeMachine = $0
                    print($0)
                  })
    }
}
