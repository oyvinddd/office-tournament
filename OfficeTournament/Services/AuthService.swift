//
//  UserService.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import Foundation

protocol AuthServiceInjectable {
    
    var authService: AuthService { get }
}

extension AuthServiceInjectable {
    
    var authService: AuthService { return ServiceFactory.shared.userServive }
}

protocol AuthService {
    
    var user: User? { get }
    
    func signedIn() -> Bool
    
    func signIn(token: IdentityToken) async throws -> User
}

struct LiveUserService: AuthService {

    var user: User? = User(id: UUID(), username: "oyvinddd", score: 0, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0)// LocalStorageManager.loadUser()
    
    func signedIn() -> Bool {
        return true//user?.accessToken != nil
    }
    
    func signIn(token: IdentityToken) async throws -> User {
        let request = URLRequestBuilder(.post, endpoint: .signIn).set(token).build()
        return try await APIClient.executeRequest(request)
    }
}
