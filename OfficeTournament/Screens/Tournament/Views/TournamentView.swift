//
//  TournamentView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct TournamentView: View {
    
    @ObservedObject var viewModel: TournamentViewModel
    
    var body: some View {
        
        VStack {
            
            HeaderView(title: viewModel.tournament.title)
            
            ScoreboardView(scoreboard: $viewModel.tournament.scoreboard)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
    }
}

#Preview {
    TournamentView(viewModel: TournamentViewModel())
}
