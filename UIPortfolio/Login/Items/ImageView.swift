//
//  ImageView.swift
//  UIPortfolio
//
//  Created by Asael Rodriguez on 14/07/26.
//

import SwiftUI

enum IconSize {
    static let small: CGFloat = 14
    static let regular: CGFloat = 20
    static let large: CGFloat = 28
    static let extraLarge: CGFloat = 30
}

struct ImageView: View {
    let image: Image
    let iconSize: CGFloat
    
    init(image: String, iconSize: CGFloat = IconSize.extraLarge) {
        self.image = Image(image)
        self.iconSize = iconSize
    }
    
    init(image: Image, iconSize: CGFloat = IconSize.extraLarge) {
        self.image = image
        self.iconSize = iconSize
    }
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .frame(width: iconSize)
    }
}
