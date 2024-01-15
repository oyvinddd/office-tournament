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
    
    var tournamentId: UUID?
    
    var score: Int
    
    var lastSeen: Date
    
    var matchesPlayed: Int
    
    var matchesWon: Int
    
    var accessToken: String?
    
    var winDelta: String {
        guard matchesPlayed > 0 else { return "-" }
        return "\(Float(matchesWon) / Float(matchesPlayed))"
    }
}
