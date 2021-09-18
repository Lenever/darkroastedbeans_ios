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
            Image("lungo")
                .padding(.leading, 25)
            
            Text(itemName)
                .padding()
            
            Spacer()
        }
        .frame(height: 90
        )
        .foregroundColor(.white)
        .background(Color("lemonGreen"))
        .cornerRadius(10)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(itemName: "Lungo")
            .previewLayout(.sizeThatFits)
    }
}
