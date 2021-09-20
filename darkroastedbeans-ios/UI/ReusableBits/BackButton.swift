//
//  BackButton.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 19/09/2021.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: HeaderConstants.backArrow)
                    .aspectRatio(contentMode: .fit)
                
                Text(HeaderConstants.title)
                    .font(.system(size: 16, weight: .bold))
            }
            .padding(.vertical, 5)
        }
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
