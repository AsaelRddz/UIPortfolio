//
//  ImageView.swift
//  UIPortfolio
//
//  Created by Asael Rodriguez on 14/07/26.
//

import Foundation
import SwiftUI

struct ImageView : View {
    let image : String
    let width : CGFloat
    
    var body : some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .frame(width: width)
    }
}
