//
//  RegistrationView.swift
//  TwitterCloneSwiftUI
//
//  Created by Lucas Newlands on 26/04/22.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            AuthenticationHeaderView(title1: "Get started.", title2: "Create your account")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeHolderText: "Email", text: $email)
                CustomInputField(imageName: "person", placeHolderText: "username", text: $username)
                CustomInputField(imageName: "person", placeHolderText: "fullname", text: $fullname)
                CustomInputField(imageName: "lock", placeHolderText: "Password", text: $password)
                
            }
            .padding(32)
            
            Button {
                print("Sign in here...")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
            }
            .padding(.bottom, 32)            
            
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
