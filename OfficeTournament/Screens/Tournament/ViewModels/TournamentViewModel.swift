//
//  TournamentViewModel.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import Foundation

final class TournamentViewModel: ObservableObject, TournamentServiceInjectable, AuthServiceInjectable {
    
    @Published var signedIn: Bool = true
    @Published var scoreboard: [User] = []
    @Published var tournament: Tournament = Tournament(
        id: UUID(),
        title: "My Tournament",
        scoreboard: [
            User(id: UUID(), username: "player1", score: 1800, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player2", score: 1800, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player3", score: 120, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player4", score: 400, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player5", score: 1800, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player6", score: 1200, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player7", score: 1800, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player8", score: 1800, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player9", score: 100, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player10", score: 900, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player11", score: 200, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player12", score: 1800, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0),
            User(id: UUID(), username: "player13", score: 1800, lastSeen: Date.now, matchesPlayed: 0, matchesWon: 0)
        ],
        createdAt: Date.now
    )
    
    func getTournament() {
        Task {
            
            do {
                let tournament = try await tournamentService.getTournament()
                scoreboard = tournament.scoreboard.sorted(by: { $0.score > $1.score })
                
            } catch let error {
                print("Error fetching tournament data: \(error)")
            }
        }
    }
}
