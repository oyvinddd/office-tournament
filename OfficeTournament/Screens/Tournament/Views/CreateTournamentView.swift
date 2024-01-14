//
//  CreateTournamentView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 14/01/2024.
//

import SwiftUI

struct CreateTournamentView: View {
    
    @ObservedObject var viewModel: CreateTournamentViewModel
    @State private var title: String = ""
    
    var body: some View {
        
        VStack {
            
            TextField("Tes test", text: $title)
            
            Button(action: createButtonTapped) {
                HStack {
                    
                    Text("Create")
                    
                    Image(systemName: "plus")
                }
            }
            .buttonStyle(MainButtonStyle())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
    
    private func createButtonTapped() {
        
    }
}
