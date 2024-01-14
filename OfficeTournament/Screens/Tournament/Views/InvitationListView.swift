//
//  InvitationListView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 14/01/2024.
//

import SwiftUI

struct InvitationListView: View {
    
    @ObservedObject var viewModel: InvitationListViewModel
    @State private var showCreateDialog: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("No tournament")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(Color.Text.normal)
                .font(Font.App.heading)
                .padding(.horizontal, 16)
            
            List {
                
                ForEach(viewModel.invitations, id: \.id) { invite in
                    InviteRow(invite: invite)
                }
                
                Section {
                    
                    Button(action: createButtonTapped) {
                        HStack {
                            
                            Text("Create tournament")
                            
                            Image(systemName: "plus")
                        }
                    }
                    .buttonStyle(MainButtonStyle())
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                .background(Color.clear)
            }
            .listStyle(.plain)
        }
        .sheet(isPresented: $showCreateDialog) {
            CreateTournamentView(viewModel: CreateTournamentViewModel())
        }
    }
    
    private func createButtonTapped() {
        showCreateDialog.toggle()
    }
}
