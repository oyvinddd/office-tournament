//
//  ProfileView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        
        VStack {
            Text("Profile View")
                .font(.title.bold())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue)
    }
}

#Preview {
    ProfileView()
}
