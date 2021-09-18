//
//  ExtrasCellView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct ExtrasCellView: View {
    var body: some View {
        HStack {
            Text("Soy")
                .foregroundColor(.white)
                .padding()
            
            Spacer()
            
            Image(systemName: "checkmark.circle")
                .font(.system(size: 16, weight: .regular))
                .padding()
        }
        .foregroundColor(.white)
        .background(Color("darkLemonGreen"))
        .padding(.horizontal)
        .cornerRadius(10)
    }
}

struct ExtrasCellView_Previews: PreviewProvider {
    static var previews: some View {
        ExtrasCellView()
    }
}
