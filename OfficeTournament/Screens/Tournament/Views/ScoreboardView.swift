//
//  ScoreboardView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct ScoreboardView: View {
    
    @Binding var scoreboard: [User]
    @State private var selectedPlayer: User?
    
    var body: some View {
        
        List {
            
            Section {
                ScoreboardModeRow(mode: .scoreboard)
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            
            Section {
                
                ForEach(scoreboard.indices, id: \.self) { index in
                    PlayerRow(scoreboard[index], emojiFromPlacement(index: index), index == scoreboard.count - 1)
                }
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        }
        .listStyle(.plain)
        .refreshable {
            print("Do your refresh work here")
        }
    }
    
    private func emojiFromPlacement(index: Int) -> String {
        let last = scoreboard.count - 1
        
        switch index {
        case 0: return "🥇"
        case 1: return "🥈"
        case 2: return "🥉"
        case last: return "💩"
        default: return ""
        }
    }
}
