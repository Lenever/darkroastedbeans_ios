//
//  ImageHelper.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 20/09/2021.
//

import Foundation

func chooseImage(title: String) -> String {
    if title.contains("Milk") {
        return "milk"
    }
    
    if title.contains("Sugar") {
        return "sugar"
    }
    
    if title.contains("Lungo") {
        return "lungo"
    }
    
    if title.contains("Cappuccino") {
        return "cappuchino"
    }
    
    if title.contains("Espresso") {
        return "espresso"
    }
    
    if title.contains("Small") {
        return "smallCoffeeBrew"
    }
    
    if title.contains("Medium") {
        return "mediumCoffeeBrew"
    }
    
    if title.contains("Large") {
        return "largeCoffeeBrew"
    }
    
    return "mediumCoffeeBrew"
}
