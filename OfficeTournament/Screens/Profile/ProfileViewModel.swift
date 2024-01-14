//
//  ProfileViewModel.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 14/01/2024.
//

import Foundation

@MainActor final class ProfileViewModel: ObservableObject, UserServiceInjectable {
    
    var username: String = "TestUser"
}
