//
//  CustomSecureInputField.swift
//  TwitterCloneSwiftUI
//
//  Created by Lucas Newlands on 29/04/22.
//

import SwiftUI

import SwiftUI

struct CustomSecureInputField: View {
    let imageName: String
    let placeHolderText: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.white))
                
                SecureField(placeHolderText, text: $text)
                    .foregroundColor(Color(.white))
            }
            
            Divider()
                .foregroundColor(Color(.white))
        }
    }
}

struct CustomSecureInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureInputField(imageName: "envelope", placeHolderText: "Email", text: .constant(""))
    }
}
