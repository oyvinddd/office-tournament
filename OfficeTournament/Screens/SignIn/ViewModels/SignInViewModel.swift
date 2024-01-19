//
//  SignInViewModel.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import Foundation

final class SignInViewModel: ObservableObject, AuthServiceInjectable {
    
    func signIn(token: Data) {
        
        Task {
            
            let identityToken = IdentityToken(token)
            let user = try await authService.signIn(token: identityToken)
        }
    }
}
