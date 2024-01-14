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
        
        HStack {
            
            Button(action: scoreboardButtonTapped) {
                Text("Scoreboard".uppercased())
                    .font(Font.App.buttonSmall)
                    .foregroundStyle(Color.Text.normal)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
            }
            
            Button(action: recentMatchesButtonTapped) {
                Text("Recent matches".uppercased())
                    .font(Font.App.buttonSmall)
                    .foregroundStyle(Color.Text.normal)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
            }
        }
        .frame(maxHeight: .infinity)
        .listRowBackground(Color.clear)
        .listRowSeparator(.hidden)
        .background(Color.white)
        .clipShape(
            .rect(
                topLeadingRadius: 16,
                bottomLeadingRadius: 0,
                bottomTrailingRadius: 0,
                topTrailingRadius: 16
            )
        )
    }
    
    private func scoreboardButtonTapped() {}
    
    private func recentMatchesButtonTapped() {}
}
