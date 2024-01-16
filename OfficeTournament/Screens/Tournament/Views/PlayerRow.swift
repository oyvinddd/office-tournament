//
//  PlayerRow.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: User
    var placementEmoji: String
    var isLastRow: Bool
    
    init(_ player: User, _ emoji: String, _ isLastRow: Bool) {
        self.player = player
        self.placementEmoji = emoji
        self.isLastRow = isLastRow
    }
    
    var body: some View {
        
        HStack {
            
            ZStack {
                Text("🙂")
                    .frame(alignment: .center)
                    .font(Font.App.heading)
                    .padding(.all, 8)
            }
            .background(Ellipse().fill(.red))
            .padding(.leading, 16)
            
            VStack(spacing: 4) {
             
                Text(player.username.lowercased())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.App.textField)
                    .foregroundStyle(Color.Text.normal)
                
                Text("\(player.score) pts")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.App.normal)
                    .foregroundStyle(Color.Text.subtitle)
            }
            .padding(.leading, 8)
            .padding(.vertical, 12)
            
            Spacer()
            
            Text(placementEmoji)
                .font(Font.App.headingBig)
                .padding(.trailing, 10)
        }
        .frame(maxHeight: .infinity)
        .listRowBackground(Color.clear)
        .listRowSeparator(.hidden)
        .background(Color.white)
        .clipShape(
            .rect(
                topLeadingRadius: 0,
                bottomLeadingRadius: isLastRow ? 16 : 0,
                bottomTrailingRadius: isLastRow ? 16 : 0,
                topTrailingRadius: 0
            )
        )
    }
}
