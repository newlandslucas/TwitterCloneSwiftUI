//
//  AuthViewModel.swift
//  TwitterCloneSwiftUI
//
//  Created by Lucas Newlands on 27/04/22.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: user in session: .\(self.userSession)")
    }
    
    func login(withEmail email: String, password: String) {
        print("DEBUG: login with email .\(email)")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {return}
            self.userSession = user
        }
    }
}
