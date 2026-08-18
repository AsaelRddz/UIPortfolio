//
//  LoginEmailView.swift
//  UIPortfolioWatch
//
//  Created by Asael Rodriguez on 10/08/26.
//

import Foundation
import SwiftUI

struct LoginEmailView : View {
    @State private var text = ""
    
    var body: some View {
        VStack {
            Text("Email").frame(maxWidth: .infinity, alignment: .leading)
            TextField("", text: $text)
            
            Text("password").frame(maxWidth: .infinity, alignment: .leading)
            TextField("", text: $text)            
            
            Text("Remember Me").frame(maxWidth: .infinity, alignment: .leading)
            
            ButtonView(title: "Sign In", action: {
                
            })
            
            Text("Forgot password?")
        }
        .padding()
        .navigationTitle("Login")
    }
}
