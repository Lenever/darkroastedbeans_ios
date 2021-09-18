//
//  ExtraDetailsView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct ExtraDetailsView: View {
    @State var showDetails = false
    var extra: String
    var extraTypes = ["Dairy", "Soy", "Oats"]
    
    var body: some View {
        VStack {
            Button(action:{
                showDetails.toggle()
            }) {
                VStack {
                    CellView(itemName: extra)
                    
                    if showDetails {
                        VStack {
                            Divider()
                                .frame(height: 1)
                                .background(Color.white)
                                .padding(.bottom, 5)
                            
                            VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                                ForEach(extraTypes, id: \.self) { extra in
                                    ExtrasCellView(extra: extra)
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.horizontal,25)
                        .padding(.bottom, 25)
                    }
                }
            }
        }
        .background(Color("lemonGreen"))
        .cornerRadius(10)
    }
}

struct ExtraDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraDetailsView(extra: "Milk")
            .previewLayout(.sizeThatFits)
    }
}