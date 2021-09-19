//
//  Header.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 19/09/2021.
//

import SwiftUI

struct Header: View {
    var header: String
    
    var body: some View {
        VStack {
            HStack {
                BackButton()
                
                Spacer()
            }
            
            HStack {
                Text(header)
                    .font(.system(size: 24, weight: .regular))
                
                Spacer()
            }
        }
        .padding(.top, 50)
        .padding()
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(header: "Select your style")
            .previewLayout(.sizeThatFits)
    }
}
