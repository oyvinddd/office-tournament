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
            
            HeaderView()
            
            ScoreboardView(scoreboard: $viewModel.scoreboard)
        }
    }
}

#Preview {
    TournamentView(viewModel: TournamentViewModel())
}
