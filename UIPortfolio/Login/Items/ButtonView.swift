//
//  Button.swift
//  UIPortfolio
//
//  Created by Asael Rodriguez on 12/07/26.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let image: Image?
    let iconSize: CGFloat
    let backgroundColor: Color
    let textColor: Color
    let font: Font
    let isBold: Bool
    let shadowColor: Color
    let shadowRadius: CGFloat
    let shadowX: CGFloat
    let shadowY: CGFloat
    let action: () -> Void
    
    init(
        title: String,
        image: Image? = nil,
        iconSize: CGFloat = IconSize.extraLarge,
        backgroundColor: Color = Color("primary"),
        textColor: Color = .white,
        font: Font = .body,
        isBold: Bool = false,
        shadowColor: Color = .clear,
        shadowRadius: CGFloat = 0,
        shadowX: CGFloat = 0,
        shadowY: CGFloat = 0,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.image = image
        self.iconSize = iconSize
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.font = font
        self.isBold = isBold
        self.shadowColor = shadowColor
        self.shadowRadius = shadowRadius
        self.shadowX = shadowX
        self.shadowY = shadowY
        self.action = action
    }
    
    var body: some View {
        Button(action: action) { label }
        .watchPlainButtonStyle()
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(backgroundColor)
        )
        .shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY)
    }
    
    private var label: some View {
        HStack {
            if let image {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: iconSize)
                    .padding(.trailing, 10)
            }
            
            Text(title)
                .font(font)
                .fontWeight(isBold ? .bold : .regular)
                .foregroundStyle(textColor)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}
