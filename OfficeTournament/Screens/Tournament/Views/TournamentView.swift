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
            
            if viewModel.signedIn {
                
                TournamentHeaderView(title: viewModel.tournament.title, buttonAction: {})
             
                PlayerInfoView(player: viewModel.userService.user!)
                
                ScoreboardView(scoreboard: $viewModel.tournament.scoreboard)
                
            } else {
                
                InvitationListView(viewModel: InvitationListViewModel())
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.General.background)
    }
}

#Preview {
    TournamentView(viewModel: TournamentViewModel())
}
