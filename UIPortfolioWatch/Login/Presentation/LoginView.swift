//
//  ContentView.swift
//  UIPortfolioWatch Watch App
//
//  Created by Asael Rodriguez on 04/08/26.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            ImageView(assetName: "logoWatch", size: ImageSize.watchLogo)
            
            ButtonView(title: "Open on Iphone", image: Image(systemName: "iphone"), iconSize: ImageSize.smallIcon, font: .caption) {
                print("Open on Iphone")
            }
            ButtonView(title: "I have an account", iconSize: ImageSize.smallIcon, backgroundColor: .gray, font: .caption) {
                print("I have an account")
            }
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
