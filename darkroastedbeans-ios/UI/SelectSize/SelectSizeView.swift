//
//  SelectSizeView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct SelectSizeView: View {
    @ObservedObject var viewModel: SelectSizeViewModel
    
    var body: some View {
        VStack {
            Header(header: "Select your size")
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                    ForEach(viewModel.coffeeSizes, id: \.self) { coffeeSize in
                        NavigationLink(
                            destination: ExtrasView(
                                viewModel: ExtrasViewModel(
                                    coffeeMachine: viewModel.coffeeMachine,
                                    selectedCoffeeType: viewModel.selectedCoffeeType
                                )
                            )
                        ) {
                            CellView(itemName: coffeeSize)
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
