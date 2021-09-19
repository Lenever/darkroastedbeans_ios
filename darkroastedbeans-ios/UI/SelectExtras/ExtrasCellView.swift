//
//  ExtrasCellView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct ExtrasCellView: View {
    @EnvironmentObject var coffeeChoices: CoffeeChoices
    var extra: String
    @State var isChecked = false
    
    var body: some View {
        Button(action:{
            isChecked.toggle()
            if isChecked {
                if coffeeChoices.milkExtra != nil {
                    coffeeChoices.milkExtra?.append(extra)
                } else {
                    coffeeChoices.milkExtra = [extra]
                }
            } else {
                guard var extras = coffeeChoices.milkExtra else { return }
                if let index = extras.firstIndex(of: extra) {
                    extras.remove(at: index)
                    coffeeChoices.milkExtra = extras
                }
            }
            print(coffeeChoices.milkExtra, "|||")
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
