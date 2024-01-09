//
//  WelcomeView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var username: String = ""
    
    var body: some View {
        
        VStack(spacing: 16) {
            
            TextField("Username", text: $username)
                .font(Font.system(size: 24, weight: .semibold, design: .rounded))
            
            Button("Create", action: createButtonTapped)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 16)
        .background(Color.green)
    }
    
    private func createButtonTapped() {}
}

#Preview {
    WelcomeView()
}
