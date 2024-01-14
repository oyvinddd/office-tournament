//
//  InvitationListViewModel.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 14/01/2024.
//

import Foundation

@MainActor final class InvitationListViewModel: ObservableObject {
    
    @Published var invitations: [Invite] = [
        Invite(
            id: UUID(),
            tournament: Tournament(
                id: UUID(),
                title: "New Tournament",
                scoreboard: [],
                createdAt: Date.now
            )
        )
    ]
}
