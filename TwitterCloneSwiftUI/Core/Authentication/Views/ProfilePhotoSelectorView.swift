//
//  ProfilePhotoSelectorView.swift
//  TwitterCloneSwiftUI
//
//  Created by Lucas Newlands on 02/05/22.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker: Bool = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    
    var body: some View {
        VStack {
            AuthenticationHeaderView(title1: "Create your account",
                                     title2: "Add a profile photo")
            
            Button() {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .frame(width: 180, height: 180)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                } else {
                    VStack {
                        Image(systemName: "plus")
                            .modifier(ProfileImageModifier())
                        
                        Text("Photo")
                            .foregroundColor(Color(.white))
                            .fontWeight(.semibold)
                            .font(.headline)
                    }
                }
                }
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                ImagePicker(selectedImage: $selectedImage)
            }
            .padding(.top, 44)
            
            if profileImage != nil {
                Spacer()
                
                Button {
                    print("DEBUG: finish registering user...")
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding()
                }
            }
            
            Spacer()
        }
        .ignoresSafeArea()
        .background(Color("darkTwitter"))
        
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

private struct ProfileImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 180, height: 180)
            .foregroundColor(Color(.white))
            .padding()
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
