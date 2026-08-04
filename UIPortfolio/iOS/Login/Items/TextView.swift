//
//  TextView.swift
//  UIPortfolio
//
//  Created by Asael Rodriguez on 22/07/26.
//

import Foundation
import SwiftUI

struct TextView : View {
    let text: String
    
    // "_" evita colocar el parametro
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .foregroundStyle(Color("gray"))
    }
}
