//
//  User.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import Foundation

struct User: Codable, Identifiable {
    
    var id: UUID
    
    var username: String
    
    var accessToken: String?
}
