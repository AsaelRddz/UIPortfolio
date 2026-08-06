//
//  ContentView.swift
//  UIPortfolio
//
//  Created by Asael Rodriguez on 12/07/26.
//

import SwiftUI

struct LogoView: View {
    
    @State private var goToDetail : Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                ImageView(image: "logoLogin", width: 300)
                
                Spacer()
                
                ButtonPrimary(title: "Sign Up with Google", image: Image("logoGoogle")) {
                    print("google")
                }
                .padding(.bottom, 10)
                
                ButtonSecondaryView(title: "Sign Up with Email") {
                    print("email")
                    goToDetail = true
                }
                .padding(.bottom, 10)
                
                HStack(spacing: 0) {
                    TextView("Already have an account? ")
                    
                    NavigationLink("Sign in", destination: SignUpView())
                        .underline()
                        .foregroundStyle(Color("primary"))

                }
                Spacer()
            }
            .padding()
            .navigationDestination(isPresented: $goToDetail) {
                LoginEmailView()
            }
        }
    }
}

#Preview {
    LogoView()
}
