//
//  ScoreboardView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct ScoreboardView: View {
    
    @Binding var scoreboard: [Player]
    
    var body: some View {
        
        List(scoreboard, id: \.id) { player in
            
            PlayerRow(player: player)
        }
    }
}
