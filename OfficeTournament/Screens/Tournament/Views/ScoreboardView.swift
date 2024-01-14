//
//  ScoreboardView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct ScoreboardView: View {
    
    @Binding var scoreboard: [User]
    
    var body: some View {
        
        List {
            
            Section {
                ScoreboardModeRow(mode: .scoreboard)
            }
            
            Section {
                ForEach(scoreboard.indices, id: \.self) { index in
                    PlayerRow(player: scoreboard[index])
                }
            }
        }
        .listStyle(.plain)
    }
}
