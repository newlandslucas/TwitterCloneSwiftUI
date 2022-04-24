//
//  UserStateView.swift
//  TwitterCloneSwiftUI
//
//  Created by Lucas Newlands on 24/04/22.
//

import SwiftUI

struct UserStateView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack {
                Text("0").bold()
                    .font(.subheadline)
                    .bold()
                
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
                                
            HStack {
                Text("0").bold()
                    .font(.subheadline)
                    .bold()
                
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStateView_Previews: PreviewProvider {
    static var previews: some View {
        UserStateView()
    }
}
