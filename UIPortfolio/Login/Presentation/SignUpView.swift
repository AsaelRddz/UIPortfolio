//
//  GetStartView.swift
//  UIPortfolio
//
//  Created by Asael Rodriguez on 20/07/26.
//

import SwiftUI

struct SignUpView : View {
    
    @Environment(\.dismiss) private var dismiss
    @State var fullName : String = ""
    @State var email : String = ""
    @State var password : String = ""
    @State private var selectedAccountType: AccountType = .student
    
    var body: some View {
        VStack {
            Text("Get Started")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(Color("primary"))
                .bold()
            
            HStack {
                Text("Already have an account? ")
                    .foregroundStyle(Color("gray"))
                
                Button("Sign in") {
                    dismiss()
                }
                .underline()
                .foregroundStyle(Color("primary"))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 32)
                        
            TextFieldView(title: "Full name", text: $fullName)
            TextFieldView(title: "Email", text: $email, textType: .emailAddress)
            TextFieldView(title: "Password", text: $password, textType: .password)
            
            Text("Account type")
                .foregroundStyle(Color("gray"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 4)

            OptionsAccountType(selectedAccountType: $selectedAccountType)
            
            Spacer()
            
            ButtonView(title: "Sign up", isBold: true, action: {
                print("sign up")
            })
            .padding(.bottom, 10)
            
            Text("By Sign up you agree to our \(Text("Privacy Policy").underline()) and \(Text("Terms and Condition").underline())")
                .foregroundStyle(Color("gray"))
                .font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
    }
}


struct OptionsAccountType : View {
    @Binding var selectedAccountType: AccountType

    var body : some View {
        HStack(spacing: 12) {
            accountTypeButton(title: "Student", type: .student)
            accountTypeButton(title: "Teacher", type: .teacher)
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private func accountTypeButton(title: String, type: AccountType) -> some View {
        Button {
            selectedAccountType = type
        } label: {
            HStack {
                Image(systemName: selectedAccountType == type ? "checkmark.circle.fill" : "circle")
                    .foregroundStyle(Color("primary"))
                Text(title)
            }
        }
        .buttonStyle(.plain)
    }
}

enum AccountType {
    case student
    case teacher
}
