//
//  Tournament.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 10/01/2024.
//

import Foundation

struct Tournament: Codable {
    
    var id: UUID
    
    var title: String
    
    var scoreboard: [User]
    
    var createdAt: Date
}
