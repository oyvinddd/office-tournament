//
//  PlayerInfoView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct PlayerInfoView: View {
    
    var player: User
    
    var body: some View {
        
        HStack {
            
            VStack {
                
                Text("Hi, \(player.username)!")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.App.heading)
                    .foregroundStyle(Color.Text.normal)
                    .padding(.top, 16)
                    .padding(.horizontal, 16)
                
                // Player info part:
                
                HStack {
                    
                    // POINTS
                    
                    VStack {
                        
                        Text("Points".uppercased())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(Font.App.small)
                            .foregroundStyle(Color.Text.subtitle)
                        
                        Text("\(player.score)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(Color.Text.normal)
                            .font(Font.App.subheading)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 16)
                    .padding(.bottom, 16)
                    
                    // MATCHES PLAYED
                    
                    VStack {
                        
                        Text("Matches".uppercased())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(Font.App.small)
                            .foregroundStyle(Color.Text.subtitle)
                        
                        Text("\(player.matchesPlayed)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(Color.Text.normal)
                            .font(Font.App.subheading)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 16)
                    
                    // WIN DELTA
                    
                    VStack {
                        
                        Text("Wins".uppercased())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(Font.App.small)
                            .foregroundStyle(Color.Text.subtitle)
                        
                        Text(player.winDelta)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(Color.Text.normal)
                            .font(Font.App.subheading)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 16)
                }
                .padding(.top, 8)
            }
        }
        .background(Color.white)
        .padding(.horizontal, 16)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
