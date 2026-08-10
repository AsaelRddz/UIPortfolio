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
            ImageView(image: Image("logoWatch"), iconSize: 110)
            
            ButtonView(title: "Open on Iphone", image: Image(systemName: "iphone"), iconSize: 10, font: .caption) {
                print("Open on Iphone")
            }
            ButtonView(title: "I have an account", iconSize: 10, backgroundColor: .gray, font: .caption) {
                print("I have an account")
            }
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
