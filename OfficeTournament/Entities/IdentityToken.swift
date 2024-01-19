//
//  IdentityToken.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 19/01/2024.
//

import Foundation

struct IdentityToken: Codable {
    
    var identityToken: Data
    
    init(_ identityToken: Data) {
        self.identityToken = identityToken
    }
}
