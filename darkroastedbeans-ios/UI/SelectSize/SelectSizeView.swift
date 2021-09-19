//
//  SelectSizeView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct SelectSizeView: View {
    @ObservedObject var viewModel: SelectSizeViewModel
    @EnvironmentObject var coffeeChoices: CoffeeChoices
    @State var choiceSelected = false
    
    var body: some View {
        VStack {
            Header(header: "Select your size")
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                    ForEach(viewModel.coffeeSizes, id: \.self) { coffeeSize in
                        Button(action: {
                            self.coffeeChoices.coffeeSize = coffeeSize
                            self.choiceSelected = true
                            print(self.coffeeChoices.coffeeType, self.coffeeChoices.coffeeSize, "<<<>>>")
                        }) {
                            NavigationLink(
                                destination: ExtrasView(
                                    viewModel: ExtrasViewModel(
                                        coffeeMachine: viewModel.coffeeMachine,
                                        selectedCoffeeType: viewModel.selectedCoffeeType
                                    )
                                ),
                                isActive: $choiceSelected
                            ) {
                                CellView(itemName: coffeeSize)
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

struct SelectSizeView_Previews: PreviewProvider {
    static var previews: some View {
        SelectSizeView(viewModel: SelectSizeViewModel(coffeeMachine: CoffeeMachine.example, selectedCoffeeType: CoffeeType.example))
    }
}
