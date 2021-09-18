//
//  ExtrasView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct ExtrasView: View {
    var extras = ["Milk", "Sugar"]
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Brew with Lex")
                        .font(.system(size: 16, weight: .bold))
                    
                    Spacer()
                }
                
                HStack {
                    Text("Select your extra's")
                        .font(.system(size: 24, weight: .regular))
                    
                    Spacer()
                }
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: UIScreen.main.bounds.width <= 375 ? 10 : 24) {
                    ForEach(extras, id: \.self) { extra in
                        ExtraDetailsView(extra: extra)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
    }
}

struct ExtrasView_Previews: PreviewProvider {
    static var previews: some View {
        ExtrasView()
    }
}
