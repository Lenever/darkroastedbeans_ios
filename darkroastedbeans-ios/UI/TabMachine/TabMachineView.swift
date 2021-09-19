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
                        Text("Dark Roasted Beans")
                            .font(.system(size: 16, weight: .bold))
                            .padding(.vertical, 5)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("Tab the machine to start")
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
//                            coffeeChoices: self.coffeeChoices
                        )
                    )
                ) {
                    Image("coffeeMachine")
                        .resizable()
                        .scaledToFit()
                }
                
                HStack {
                    Text("How does this work")
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
