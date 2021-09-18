//
//  OverviewCellView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct OverviewCellView: View {
    var itemName: String

    var body: some View {
        HStack {
            Image("lungo")
                .padding(.leading, 25)
            
            Text(itemName)
                .padding()
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("Edit")
                    .padding(.horizontal, 25)
            }
        }
        .frame(height: 50)
        .foregroundColor(.white)
        .background(Color("lemonGreen"))
        .cornerRadius(10)
    }
}

struct OverviewCellView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewCellView(itemName: "Lungo")
            .previewLayout(.sizeThatFits)
    }
}
