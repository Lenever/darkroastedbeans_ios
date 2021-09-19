//
//  ExtrasCellView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct ExtrasCellView: View {
    var extra: String
    @State var isChecked = false
    
    var body: some View {
        Button(action:{
            isChecked.toggle()
        }) {
            HStack {
                Text(extra)
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
                
                Image(systemName: isChecked ? "checkmark.circle" : "circle")
                    .font(.system(size: 16, weight: .regular))
                    .padding()
            }
            .foregroundColor(.white)
            .background(Color("darkLemonGreen"))
            .cornerRadius(10)
        }
    }
}

struct ExtrasCellView_Previews: PreviewProvider {
    static var previews: some View {
        ExtrasCellView(extra: "Soy")
            .previewLayout(.sizeThatFits)
    }
}
