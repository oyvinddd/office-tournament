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
    
    func signInUsingApple() async throws -> User
}

struct LiveUserService: UserService {
    
    func signInUsingApple() async throws -> User {
        fatalError()
    }
}
