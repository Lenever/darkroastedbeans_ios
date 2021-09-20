//
//  TabMachineView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct TabMachineView: View {
    @ObservedObject var viewModel = TabMachineViewModel()
    @StateObject var coffeeChoices = CoffeeChoices()

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Text(TabMachineConstants.title)
                            .font(.system(size: 16, weight: .bold))
                            .padding(.vertical, 5)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text(TabMachineConstants.subTitle)
                            .font(.system(size: 24, weight: .regular))
                        
                        Spacer()
                    }
                }
                .padding(.top, 50)
                .padding()
                
                Spacer()
                
                NavigationLink(
                    destination: SelectStyleView(
                        viewModel: SelectStyleViewModel(
                            coffeeMachine: viewModel.coffeeMachine ?? CoffeeMachine.example
                        )
                    )
                ) {
                    Image(TabMachineConstants.coffeeMachine)
                        .resizable()
                        .scaledToFit()
                }
                
                HStack {
                    Text(TabMachineConstants.help)
                        .underline()
                        .padding()
                    
                    Spacer()
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
            .navigationBarHidden(true)
            .ignoresSafeArea()
        }
        .environmentObject(coffeeChoices)
    }
}

struct TabMachineView_Previews: PreviewProvider {
    static var previews: some View {
        TabMachineView()
    }
}
