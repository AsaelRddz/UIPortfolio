//
//  PlatformViewModifiers.swift
//  UIPortfolioWatch
//
//  Created by Asael Rodriguez on 05/08/26.
//

import SwiftUI

extension View {
    @ViewBuilder
    func watchPlainButtonStyle() -> some View {
        #if os(watchOS)
        self.buttonStyle(.plain)
        #else
        self
        #endif
    }
}
