//
//  Footer.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 19/09/2021.
//

import SwiftUI

struct Footer: View {
    var footer: String
    
    var body: some View {
        HStack {
            Text(footer)
                .font(.system(size: 18, weight: .bold))
                .padding()
            
            Spacer()
        }
        .frame(height: 90)
        .foregroundColor(.white)
        .background(Color(FooterConstants.backgroundColor))
        .cornerRadius(5)
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer(footer: OverviewConstants.footerTitle)
            .previewLayout(.sizeThatFits)
    }
}
