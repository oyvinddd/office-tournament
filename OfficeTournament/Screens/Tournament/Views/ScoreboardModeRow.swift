//
//  ScoreboardModeRow.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

struct ScoreboardModeRow: View {
    
    var body: some View {
        
        HStack {
            
            Button(action: scorebaordButtonTapped) {
                Text("Scoreboard")
            }
            
            Button(action: scorebaordButtonTapped) {
                Text("Recent matches")
            }
        }
        .background(Color.white)
    }
    
    private func scorebaordButtonTapped() {}
    
    private func recentMatchesButtonTapped() {}
}

#Preview {
    ScoreboardModeRow()
}
