//
//  SetupConfiguration.swift
//  darkroastedbeans-ios
//
//  Created by Ikechukwu Onuorah on 18/09/2021.
//

import UIKit

func configureUIKitAppearanceForApp() {
    // 🎨 UINavigationBar
    let navigationAppearance = UINavigationBarAppearance()
    navigationAppearance.configureWithOpaqueBackground()
    UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance
    UINavigationBar.appearance().standardAppearance = navigationAppearance
    UINavigationBar.appearance().tintColor = UIColor.label
}
