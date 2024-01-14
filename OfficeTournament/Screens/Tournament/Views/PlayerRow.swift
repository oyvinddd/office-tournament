//
//  PlayerRow.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: User
    
    var body: some View {
        
        HStack {
            
            VStack(spacing: 4) {
             
                Text(player.username.lowercased())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.App.textField)
                    .foregroundStyle(Color.Text.normal)
                
                Text("\(player.score)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.App.textField)
                    .foregroundStyle(Color.Text.subtitle)
            }
            .padding(.leading, 16)
            
            Spacer()
            
            Text("🏆")
                .padding(.trailing, 8)
        }
        .frame(maxHeight: .infinity)
        .listRowBackground(Color.clear)
        .listRowSeparator(.hidden)
        .background(Color.white)
    }
}

#Preview {
    PlayerRow(player: User(id: UUID(), username: "oyvindhauge", score: 1800, lastSeen: Date.now))
}
