//
//  ExtrasView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct ExtrasView: View {
    @ObservedObject var viewModel: ExtrasViewModel
    @EnvironmentObject var coffeeChoices: CoffeeChoices
    
    var body: some View {
        VStack {
            Header(header: "Select your extra's")
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                    ForEach(viewModel.coffeeExtras, id: \.self) { coffeeExtra in
                        ExtraDetailsView(
                            extra: coffeeExtra.contains("milk") ? "Milk" : "Sugar",
                            extraTypes: coffeeExtra.contains("milk") ? viewModel.milkOptions : viewModel.sugarOptions
                        )
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            
            Spacer()
            
            NavigationLink(
                destination: OverviewView(
                    viewModel: OverviewViewModel(
                        coffeeMachine: viewModel.coffeeMachine,
                        coffeeChoices: self.coffeeChoices
                    )
                )
            ) {
                Footer(footer: "Confrim your coffee")
            }
            .padding()
            .padding(.bottom, 40)
        }
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct ExtrasView_Previews: PreviewProvider {
    static var previews: some View {
        ExtrasView(viewModel: ExtrasViewModel(coffeeMachine: CoffeeMachine.example, selectedCoffeeType: CoffeeType.example))
    }
}
