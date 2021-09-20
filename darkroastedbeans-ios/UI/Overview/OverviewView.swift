//
//  OverviewView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct OverviewView: View {
    @ObservedObject var viewModel: OverviewViewModel
    @EnvironmentObject var coffeeChoices: CoffeeChoices
    
    var body: some View {
        VStack {
            Header(header: OverviewConstants.title)
            
            VStack {
                VStack {
                    if let coffeeType = viewModel.coffeeChoices.coffeeType {
                        OverviewCellView(itemName: coffeeType) {
                            NavigationLink(
                                destination: SelectStyleView(
                                    viewModel: SelectStyleViewModel(
                                        coffeeMachine: viewModel.coffeeMachine
                                    )
                                )
                            ) {
                                Text(OverviewConstants.editButtonTitle)
                            }
                        }
                    }
                    
                    if let coffeeSize = viewModel.coffeeChoices.coffeeSize {
                        divider
                        
                        OverviewCellView(itemName: coffeeSize) {
                            NavigationLink(
                                destination: SelectSizeView(
                                    viewModel: SelectSizeViewModel(
                                        coffeeMachine: viewModel.coffeeMachine,
                                        selectedCoffeeType: coffeeChoices.selectedCoffeeType ?? CoffeeType.example
                                    )
                                )
                            )  {
                                Text(OverviewConstants.editButtonTitle)
                            }
                        }
                    }
                    
                    if viewModel.milkExtras.count > 0 {
                        divider
                        
                        OverviewCellView(itemName: OverviewConstants.milk) {
                            NavigationLink(
                                destination: ExtrasView(
                                    viewModel: ExtrasViewModel(
                                        coffeeMachine: viewModel.coffeeMachine,
                                        selectedCoffeeType: coffeeChoices.selectedCoffeeType ?? CoffeeType.example
                                    )
                                )
                            ) {
                                Text(OverviewConstants.editButtonTitle)
                            }
                        }
                        
                        divider
                            .padding(.bottom, 5)
                        
                        VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                            ForEach(viewModel.milkExtras, id: \.self) { extra in
                                ExtrasCellView(isChecked: true, extra: extra)
                                    .disabled(true)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 25)
                    }
                    
                    if viewModel.sugarExtras.count > 0 {
                        divider
                            .padding(.top, 5)
                        
                        OverviewCellView(itemName: OverviewConstants.sugar) {
                            NavigationLink(
                                destination: ExtrasView(
                                    viewModel: ExtrasViewModel(
                                        coffeeMachine: viewModel.coffeeMachine,
                                        selectedCoffeeType: coffeeChoices.selectedCoffeeType ?? CoffeeType.example
                                    )
                                )
                            ) {
                                Text(OverviewConstants.editButtonTitle)
                            }
                        }
                        
                        VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                            Divider()
                                .frame(height: 1)
                                .background(Color.white)
                            
                            ForEach(viewModel.sugarExtras, id: \.self) { extra in
                                ExtrasCellView(isChecked: true, extra: extra)
                                    .disabled(true)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 25)
                    }
                }
                .padding(.vertical)
                .background(Color(FooterConstants.backgroundColor))
                .cornerRadius(5)
            }
            .padding(.horizontal)
            
            Spacer()
            
            Footer(footer: OverviewConstants.footerTitle)
                .padding()
                .padding(.bottom, 40)
        }
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
        .onAppear{
            viewModel.coffeeChoices = self.coffeeChoices
        }
    }
    
    private var divider: some View {
        Divider()
            .frame(height: 1)
            .background(Color.white)
            .padding(.horizontal, 25)
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView(viewModel: OverviewViewModel(coffeeMachine: CoffeeMachine.example, coffeeChoices: CoffeeChoices.example))
    }
}
