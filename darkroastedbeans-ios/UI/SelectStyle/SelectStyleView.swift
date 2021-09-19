//
//  SelectStyleView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct SelectStyleView: View {
    @ObservedObject var viewModel: SelectStyleViewModel
        
    var body: some View {
        VStack {            
            Header(header: "Select your style")
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                    ForEach(viewModel.coffeeMachine.types) { coffeeType in
                        NavigationLink(
                            destination: SelectSizeView(
                                viewModel: SelectSizeViewModel(
                                    coffeeMachine: viewModel.coffeeMachine,
                                    selectedCoffeeType: coffeeType
                                )
                            )
                        ) {
                            CellView(itemName: coffeeType.name)
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
