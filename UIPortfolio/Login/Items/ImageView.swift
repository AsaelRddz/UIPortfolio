//
//  ImageView.swift
//  UIPortfolio
//
//  Created by Asael Rodriguez on 14/07/26.
//

import SwiftUI

enum ImageSize {
    static let smallIcon: CGFloat = 14
    static let regularIcon: CGFloat = 20
    static let largeIcon: CGFloat = 28
    static let extraLargeIcon: CGFloat = 30
    
    static let watchLogo: CGFloat = 110
    static let loginLogo: CGFloat = 300
}

struct ImageView: View {
    let image: Image
    let size: CGFloat
    
    init(assetName: String, size: CGFloat = ImageSize.extraLargeIcon) {
        self.image = Image(assetName)
        self.size = size
    }
    
    init(image: Image, size: CGFloat = ImageSize.extraLargeIcon) {
        self.image = image
        self.size = size
    }
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .frame(width: size)
    }
}
