//
//  SelectStyleView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct SelectStyleView: View {
    @ObservedObject var viewModel: SelectStyleViewModel
    @EnvironmentObject var coffeeChoices: CoffeeChoices
    @State var choiceSelected = false
    
    var body: some View {
        VStack {            
            Header(header: SelectStyleConstants.title)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                    ForEach(viewModel.coffeeMachine.types, id: \.self) { coffeeType in
                        Button(action: {
                            self.coffeeChoices.selectedCoffeeType = coffeeType
                            self.coffeeChoices.coffeeType = coffeeType.name
                            self.choiceSelected = true
                        }) {
                            NavigationLink(
                                destination: SelectSizeView(
                                    viewModel: SelectSizeViewModel(
                                        coffeeMachine: viewModel.coffeeMachine,
                                        selectedCoffeeType: coffeeType
                                    )
                                ),
                                isActive: $choiceSelected
                            )  {
                                CellView(itemName: coffeeType.name)
                            }
                            .disabled(true)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct SelectStyleView_Previews: PreviewProvider {
    static var previews: some View {
        SelectStyleView(viewModel: SelectStyleViewModel(coffeeMachine: CoffeeMachine.example))
    }
}
