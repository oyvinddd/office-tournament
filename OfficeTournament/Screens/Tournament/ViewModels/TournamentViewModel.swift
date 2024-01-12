//
//  TournamentViewModel.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import Foundation

final class TournamentViewModel: ObservableObject, TournamentServiceInjectable {
    
    @Published var title: String = "My Tournament"
    @Published var scoreboard: [Player] = [
        Player(id: UUID(), username: "player1", score: 1800),
        Player(id: UUID(), username: "player2", score: 1800),
        Player(id: UUID(), username: "player3", score: 120),
        Player(id: UUID(), username: "player4", score: 400),
        Player(id: UUID(), username: "player5", score: 1800),
        Player(id: UUID(), username: "player6", score: 1200),
        Player(id: UUID(), username: "player7", score: 1800),
        Player(id: UUID(), username: "player8", score: 1800),
        Player(id: UUID(), username: "player9", score: 100),
        Player(id: UUID(), username: "player10", score: 900),
        Player(id: UUID(), username: "player11", score: 200),
        Player(id: UUID(), username: "player12", score: 1800),
        Player(id: UUID(), username: "player13", score: 1800)
    ]
    
    func getScoreboard() {
    }
}
