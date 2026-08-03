//
//  Button.swift
//  UIPortfolio
//
//  Created by Asael Rodriguez on 12/07/26.
//

import Foundation
import SwiftUI

struct ButtonPrimary : View {
    
    let title : String
    let image : String
    let action: () -> Void
    
    var body : some View {
        Button(action: action) {
            HStack {
                if !image.isEmpty {
                    ImageView(image: image, width: 30)
                        .padding(.trailing, 10)
                }
                
                Text(title)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .bold()
                    
            }
            .frame(maxWidth: .infinity, alignment: .center)
                
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color("primary"))
        )
    }
}

struct ButtonSecondaryView : View {
    
    let title : String
    let action: () -> Void
    
    var body : some View {
        Button(action: action) {
            ZStack(alignment: .leading) {
                Text(title)
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .multilineTextAlignment(.center)
                    .bold()
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.white)
        )
        .shadow(color: Color.black.opacity(0.15), radius: 8, x: 4, y: 4)
    }}
