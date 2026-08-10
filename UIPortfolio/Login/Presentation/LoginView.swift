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
                
                ImageView(assetName: "logoLogin", size: ImageSize.loginLogo)
                
                Spacer()
                
                ButtonView(title: "Sign Up with Google", image: Image("logoGoogle"), isBold: true) {
                    print("google")
                }
                .padding(.bottom, 10)
                
                ButtonView(
                    title: "Sign Up with Email",
                    backgroundColor: .white,
                    textColor: .black,
                    isBold: true,
                    shadowColor: Color.black.opacity(0.15),
                    shadowRadius: 8,
                    shadowX: 4,
                    shadowY: 4
                ) {
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
