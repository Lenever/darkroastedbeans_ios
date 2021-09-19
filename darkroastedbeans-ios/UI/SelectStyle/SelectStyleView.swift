//
//  SelectStyleView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct SelectStyleView: View {
    var coffeeTypes = ["Lungo", "Cappuccino", "Espresso"]
    
    var body: some View {
        VStack {            
            Header(header: "Select your style")
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                    ForEach(coffeeTypes, id: \.self) { coffee in
                        NavigationLink(destination: SelectSizeView()) {
                            CellView(itemName: coffee)
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
        SelectStyleView()
    }
}
