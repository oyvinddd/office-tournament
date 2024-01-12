//
//  SignInViewModel.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import Foundation

@MainActor final class SignInViewModel: ObservableObject, UserServiceInjectable {
    
    func signInUsingApple() {
        
        Task {
            
            let user = try await userService.signInUsingApple()
        }
    }
}
