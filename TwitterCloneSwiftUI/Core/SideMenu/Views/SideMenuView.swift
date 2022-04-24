//
//  SideMenuView.swift
//  TwitterCloneSwiftUI
//
//  Created by Lucas Newlands on 24/04/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Lucas Newlands")
                    .font(.headline)
                
                Text("newlandsLM")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            UserStateView()
                .padding(.vertical)
           
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
