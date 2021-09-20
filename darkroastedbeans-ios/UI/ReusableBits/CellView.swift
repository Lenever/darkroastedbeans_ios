//
//  CellView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct CellView: View {
    var itemName: String
    
    var body: some View {
        HStack {
            Image(chooseImage(title: itemName))
                .padding(.leading, 25)
            
            Text(itemName)
                .padding()
            
            Spacer()
        }
        .frame(height: 90
        )
        .foregroundColor(.white)
        .background(Color(FooterConstants.backgroundColor))
        .cornerRadius(5)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(itemName: CoffeeType.example.name)
            .previewLayout(.sizeThatFits)
    }
}
