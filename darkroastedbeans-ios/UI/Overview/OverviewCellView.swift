//
//  OverviewCellView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct OverviewCellView<Edit: View>: View {
    var itemName: String
    var edit: Edit
    
    init(itemName: String, @ViewBuilder edit: () -> Edit) {
        self.itemName = itemName
        self.edit = edit()
    }

    var body: some View {
        HStack {
            Image(chooseImage(title: itemName))
                .padding(.leading, 25)
            
            Text(itemName)
                .padding()
            
            Spacer()
            
            edit
                .padding(.horizontal, 25)
        }
        .frame(height: 50)
        .foregroundColor(.white)
        .background(Color(FooterConstants.backgroundColor))
        .cornerRadius(10)
    }
}

struct OverviewCellView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewCellView(itemName: CoffeeType.example.name) {
            EmptyView()
        }
        .previewLayout(.sizeThatFits)
    }
}
