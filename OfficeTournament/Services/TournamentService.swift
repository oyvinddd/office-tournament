//
//  TournamentService.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 10/01/2024.
//

import Foundation

protocol TournamentServiceInjectable {
    
    var tournamentService: TournamentService { get }
}

extension TournamentServiceInjectable {
    
    var tournamentService: TournamentService { return ServiceFactory.shared.tournamentService }
}

protocol TournamentService {
    
    func create(title: String) async throws -> Tournament
    
    func join(tournamentId: UUID) async throws -> Tournament
    
    func get() async throws -> Tournament
    
    func leave() async throws
}

struct LiveTournamentService: TournamentService {
    
    func create(title: String) async throws -> Tournament {
        let request = URLRequestBuilder(.post, endpoint: .createTournament).build()
        return try await APIClient.executeRequest(request)
    }
    
    func join(tournamentId: UUID) async throws -> Tournament {
        let request = URLRequestBuilder(.put, endpoint: .jointTournament).build()
        return try await APIClient.executeRequest(request)
    }
    
    func get() async throws -> Tournament {
        let request = URLRequestBuilder(.get, endpoint: .getTournament).build()
        return try await APIClient.executeRequest(request)
    }
    
    func leave() async throws {
    }
}
