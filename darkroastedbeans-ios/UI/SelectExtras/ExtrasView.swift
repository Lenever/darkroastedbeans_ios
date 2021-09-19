//
//  ExtrasView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct ExtrasView: View {
    @ObservedObject var viewModel: ExtrasViewModel
    var extras = ["Milk", "Sugar"]
    
    var body: some View {
        VStack {
            Header(header: "Select your extra's")
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                    ForEach(extras, id: \.self) { extra in
                        ExtraDetailsView(extra: extra)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            
            Spacer()
            
            NavigationLink(destination: OverviewView(viewModel: OverviewViewModel(coffeeMachine: viewModel.coffeeMachine))) {
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
