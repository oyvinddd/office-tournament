//
//  PlayerRow.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player
    
    var body: some View {
        
        HStack {
            
            Text(player.username)
            
            Text("\(player.score)")
                .multilineTextAlignment(.trailing)
        }
    }
}

#Preview {
    PlayerRow(player: Player(id: UUID(), username: "oyvindhauge", score: 1800))
}
