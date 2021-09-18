//
//  SelectStyleView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct SelectStyleView: View {
    var coffees = ["Lungo", "Cappuccino", "Espresso"]
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Brew with Lex")
                        .font(.system(size: 16, weight: .bold))
                    
                    Spacer()
                }
                
                HStack {
                    Text("Select your style")
                        .font(.system(size: 24, weight: .regular))
                    
                    Spacer()
                }
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                    ForEach(coffees, id: \.self) { coffee in
                        CellView(coffeeStyle: coffee)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Spacer()
        }
    }
}

struct SelectStyleView_Previews: PreviewProvider {
    static var previews: some View {
        SelectStyleView()
    }
}
