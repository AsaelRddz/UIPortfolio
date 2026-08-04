//
//  ContentView.swift
//  UIPortfolioWatch Watch App
//
//  Created by Asael Rodriguez on 04/08/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ButtonPrimary(title: "test", image: "", action: {
                print("test")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
