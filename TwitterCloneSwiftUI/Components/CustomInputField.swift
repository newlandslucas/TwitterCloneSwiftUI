//
//  CustomInputField.swift
//  TwitterCloneSwiftUI
//
//  Created by Lucas Newlands on 26/04/22.
//

import SwiftUI

struct CustomInputField: View {
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
                
                TextField(placeHolderText, text: $text)
                    .foregroundColor(Color(.white))
            }
            
            Divider()
                .foregroundColor(Color(.white))
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(imageName: "envelope", placeHolderText: "Email", text: .constant(""))
    }
}
