//
//  CellView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct CellView: View {
    var coffeeStyle: String
    
    var body: some View {
        HStack {
            Image("lungo")
//                .resizable()
//                .scaledToFit()
                .padding(.leading, 25)
            
            Text(coffeeStyle)
                .foregroundColor(.white)
                .padding()
            
            Spacer()
        }
        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        .background(Color("lemonGreen"))
        .padding(.horizontal)
        .cornerRadius(10)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(coffeeStyle: "Lungo")
            .previewLayout(.sizeThatFits)
    }
}
