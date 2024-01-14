//
//  InviteRow.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 14/01/2024.
//

import SwiftUI

struct InviteRow: View {
    
    var invite: Invite
    
    var body: some View {
        
        HStack {
            
            VStack {
             
                Text("Invitation to tournament".uppercased())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.system(size: 12, weight: .bold, design: .rounded))
                    .foregroundStyle(Color.Text.subtitle)
                
                Text(invite.tournament.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.App.textField)
                    .foregroundStyle(Color.Text.normal)
            }
            .padding(.leading, 8)
            
            Spacer()
            
            Button(action: {}) {
                Text("Accept")
            }
            .buttonStyle(MainButtonStyle())
            .padding(.trailing, 8)
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .listRowSeparator(.hidden)
        .listRowBackground(Color.clear)
    }
}
