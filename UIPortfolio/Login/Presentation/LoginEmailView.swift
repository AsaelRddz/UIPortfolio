//
//  LoginEmailView.swift
//  UIPortfolio
//
//  Created by Asael Rodriguez on 02/08/26.
//

import Foundation
import SwiftUI

struct LoginEmailView : View {
    @State var text : String = ""
    @State var password : String = ""
    @State var remindMe : Bool = false
    
    var body : some View {
        VStack {
            Spacer()
            Text("Login")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(Color("primary"))
                .bold()
                .padding(.bottom, 10)
            
            InputData(title: "Email", text: $text, textType: .emailAddress)
            InputData(title: "Password", text: $password, textType: .password)
            
            HStack {
                TextView("Remind Me")
                Button(action: {
                    remindMe.toggle()
                }){
                    Image(systemName: remindMe ? "checkmark.circle.fill" : "checkmark.circle")
                        .foregroundStyle(Color("primary"))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 10)
            .padding(.bottom, 10)

            ButtonPrimary(title: "Sign in", image: "", action: {
                print("sign in")
            })
            Text("Forgot password?")
                .foregroundStyle(Color("primary"))
                .bold()
            Spacer()
        }.padding()
    }
}
