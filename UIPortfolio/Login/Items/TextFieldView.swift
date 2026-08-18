//
//  InputData.swift
//  UIPortfolio
//
//  Created by Asael Rodriguez on 30/07/26.
//

import SwiftUI

struct TextFieldView : View {
    
    let title : String
    // Binding connects this field to state owned by the parent view,
    // so both views read and update the same value.
    @Binding var text : String
    @State private var isPasswordVisible = false
    var textType : UITextContentType = .name
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("\(title):")
                .foregroundStyle(Color("gray"))
            
            HStack {
                if isPasswordVisible || textType != .password {
                    TextField("Type your \(title.lowercased())", text: $text)
                        .textContentType(textType)
                        .foregroundStyle(Color("primary"))
                }
                
                if textType == .password {
                    if !isPasswordVisible {
                        SecureField("Type your \(title.lowercased())", text: $text)
                            .textContentType(textType)
                            .foregroundStyle(Color("primary"))
                    }
                    
                    Button {
                        isPasswordVisible.toggle()
                    } label: {
                        Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                            .foregroundStyle(Color("primary"))
                    }
                    .buttonStyle(.plain)
                }
            }
            
            
            Rectangle()
                .fill(Color("primary").opacity(0.4))
                .frame(height: 1)
        }.padding(.bottom, 10)
    }
}
