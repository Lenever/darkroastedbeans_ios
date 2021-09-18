//
//  TabMachineView.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import SwiftUI

struct TabMachineView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Dark Roasted Beans")
                        .font(.system(size: 16, weight: .bold))
                    
                    Spacer()
                }
                
                HStack {
                    Text("Tab the machine to start")
                        .font(.system(size: 24, weight: .regular))
                    
                    Spacer()
                }
            }
            .padding()
            
            Spacer()
            
            Image("coffeeMachine")
                .resizable()
                .scaledToFit()
            
            
            HStack {
                Text("How does this work")
                    .underline()
                    .padding()
                
                Spacer()
            }
            .padding(.bottom, 50)
            
            Spacer()
        }
    }
}

struct TabMachineView_Previews: PreviewProvider {
    static var previews: some View {
        TabMachineView()
    }
}
