//
//  SignInView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 8) {
                
                Spacer()
                
                Text("Welcome! ✨")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.App.headingBig)
                    .foregroundStyle(.white)
                
                Text("Start a tournament alongside your colleagues. Sign in using your Apple ID to get started!")
                    .font(Font.App.subheading)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Button(action: signInButtonTapped) {
                    HStack {
                        
                        Text("Sign In using Apple")
                        
                        Image(systemName: "apple.logo")
                    }
                }
                .buttonStyle(MainButtonStyle())
                .padding(.bottom, 32)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding(.horizontal, 32)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue)
    }
    
    private func signInButtonTapped() {
        viewModel.signInUsingApple()
    }
}

#Preview {
    SignInView(viewModel: SignInViewModel())
}
