//
//  ExtraDetailsView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct ExtraDetailsView: View {
    @State var showDetails = true
    
    var body: some View {
        VStack {
            Button(action:{
                showDetails.toggle()
            }) {
                VStack {
                    CellView(coffeeStyle: "Milk")
                    
                    if showDetails {
                        VStack {
                            VStack {
                                Divider()
                                    .background(Color.white)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        .background(Color("lemonGreen"))
    }
}

struct ExtraDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraDetailsView()
            .previewLayout(.sizeThatFits)
    }
}
