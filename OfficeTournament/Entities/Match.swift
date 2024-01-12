//
//  Match.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 10/01/2024.
//

import Foundation

struct Match: Codable, Identifiable {
    
    var id: UUID
    
    var winner: String
    
    var loser: String
    
    var date: Date
}
