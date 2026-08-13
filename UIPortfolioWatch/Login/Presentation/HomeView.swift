//
//  HomeView.swift
//  UIPortfolioWatch
//
//  Created by Asael Rodriguez on 12/08/26.
//

import Foundation
import SwiftUI

struct HomeView : View {
    var body: some View {
        VStack {
            Text("Hello")
                .frame(maxWidth: .infinity, alignment: .leading)

            Text("Welcome back")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.gray)
            
        }
        .padding()
        .navigationTitle("Home")
    }
}


