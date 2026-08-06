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
            ButtonPrimary(title: "Open on Iphone", image: Image(systemName: "iphone")) {
                print("test")
            }
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
