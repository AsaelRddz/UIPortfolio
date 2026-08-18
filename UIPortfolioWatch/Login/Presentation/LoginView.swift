//
//  ContentView.swift
//  UIPortfolioWatch Watch App
//
//  Created by Asael Rodriguez on 04/08/26.
//

import SwiftUI

struct LoginView: View {
    @State private var goToDetail: Bool = false
    @State private var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                TabView {
                    VStack {
                        ImageView(assetName: "logoWatch", size: ImageSize.watchLogo)
                        
                        ButtonView(title: "Open on Iphone", image: Image(systemName: "iphone"), iconSize: ImageSize.smallIcon, font: .caption) {
                            print("Open on Iphone")
                        }
                        ButtonView(title: "Connect Automatically", iconSize: ImageSize.smallIcon, backgroundColor: .gray, font: .caption) {
                            startAutomaticConnection()
                        }
                        .disabled(isLoading)
                        
                        if isLoading {
                            ProgressView()
                        }
                    }
                    .padding()
                    
                    VStack {
                        Text("Second page")
                    }
                }
            }
            .navigationDestination(isPresented: $goToDetail) {
                HomeView()
            }
        }
    }
    
    private func startAutomaticConnection() {
        isLoading = true
        
        Task {
            try? await Task.sleep(for: .seconds(2))
            isLoading = false
            goToDetail = true
        }
    }
}

#Preview {
    LoginView()
}
