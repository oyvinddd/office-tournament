//
//  ServiceFactory.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 10/01/2024.
//

import Foundation

final class ServiceFactory {
    
    static let shared = ServiceFactory()
    
    var tournamentService: TournamentService { return LiveTournamentService() }
    
    var userServive: UserService { return LiveUserService() }
}
