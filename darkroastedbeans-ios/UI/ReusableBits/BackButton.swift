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
                Image(systemName: "chevron.left")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                
                Text("Brew with Lex")
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
