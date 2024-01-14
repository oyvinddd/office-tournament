//
//  ScoreboardModeRow.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

enum ScoreboardMode {
    case scoreboard, recentMatches
}

struct ScoreboardModeRow: View {
    
    var mode: ScoreboardMode
    
    init(mode: ScoreboardMode) {
        self.mode = mode
    }
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            Button(action: scoreboardButtonTapped) {
                Text("Scoreboard".uppercased())
                    .font(Font.App.buttonSmall)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
            }
            
            Button(action: recentMatchesButtonTapped) {
                Text("Recent matches".uppercased())
                    .font(Font.App.buttonSmall)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
            }
        }
        .frame(maxHeight: .infinity)
        .listRowBackground(Color.clear)
        .listRowSeparator(.hidden)
        .background(Color.white)
    }
    
    private func scoreboardButtonTapped() {}
    
    private func recentMatchesButtonTapped() {}
}
