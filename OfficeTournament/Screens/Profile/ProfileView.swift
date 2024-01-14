//
//  ProfileView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

struct ProfileView: View {
    
    var viewModel: ProfileViewModel
    
    var body: some View {
        
        VStack(spacing: 8) {
            
            Image(systemName: "person.circle")
                .font(Font.system(size: 120))
                .background(Color.white)
                .padding(.all, 16)
                .shadow(color: Color.gray, radius: 12, x: 0, y: 0)
                //.clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text("Hi, \(viewModel.username)!")
                .frame(maxWidth: .infinity)
                .font(.title.bold())
            
            // Profile menu:
            
            VStack(spacing: 0) {
                
                Button(action: {}) {
                    
                    HStack(spacing: 16) {
                        
                        Image(systemName: "hockey.puck")
                            .foregroundStyle(Color.Text.normal)
                            .font(Font.App.button)
                            .padding(.leading, 16)
                        
                        Text("Log out")
                            .foregroundStyle(Color.Text.normal)
                            .font(Font.App.button)
                        
                        Spacer()
                    }
                }
            }
            .background(Color.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 16)
        .background(Color.General.background)
    }
}

#Preview {
    ProfileView(viewModel: ProfileViewModel())
}
