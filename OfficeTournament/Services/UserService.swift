//
//  UserService.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import Foundation

protocol UserServiceInjectable {
    
    var userService: UserService { get }
}

extension UserServiceInjectable {
    
    var userService: UserService { return ServiceFactory.shared.userServive }
}

protocol UserService {
    
    var user: User? { get }
    
    func signedIn() -> Bool
    
    func signInUsingApple() async throws -> User
}

struct LiveUserService: UserService {
    
    var user: User? = User(id: UUID(), username: "oyvinddd", score: 0, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0)// LocalStorageManager.loadUser()
    
    func signedIn() -> Bool {
        return user?.accessToken != nil
    }
    
    func signInUsingApple() async throws -> User {
        fatalError()
    }
}
