//
//  OverviewView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct OverviewView: View {
    @ObservedObject var viewModel: OverviewViewModel
    var extraTypes = ["Dairy", "Soy", "Oats"]

    var body: some View {
        VStack {
            Header(header: "Overview")
            
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        OverviewCellView(itemName: "Lungo")
                        
                        divider
                        
                        OverviewCellView(itemName: "Medium")
                        
                        divider
                        
                        OverviewCellView(itemName: "Milk")
                        
                        divider
                            .padding(.bottom, 5)
                        
                        VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                            ForEach(extraTypes, id: \.self) { extra in
                                ExtrasCellView(extra: extra)
                                    .disabled(true)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 25)
                        
                        divider
                            .padding(.top, 5)
                        
                        OverviewCellView(itemName: "Sugar")
                        
                        VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                            Divider()
                                .frame(height: 1)
                                .background(Color.white)
                            
                            ForEach(extraTypes, id: \.self) { extra in
                                ExtrasCellView(extra: extra)
                                    .disabled(true)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 25)
                    }
                }
                .background(Color("lemonGreen"))
                .cornerRadius(5)
            }
            .padding(.horizontal)
            
            Spacer()
            
            Footer(footer: "Brew your coffee")
                .padding()
                .padding(.bottom, 40)
        }
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
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
        OverviewView(viewModel: OverviewViewModel(coffeeMachine: CoffeeMachine.example))
    }
}
