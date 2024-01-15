//
//  TournamentHeaderView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 15/01/2024.
//

import SwiftUI

struct TournamentHeaderView: View {
    
    var title: String
    var buttonAction: () -> Void
    
    var body: some View {
        
        HStack {
            
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(Color.Text.normal)
                .font(Font.App.headingBig)
                .padding(.leading, 16)
            
            Spacer()
            
            Image(systemName: "gearshape")
                .foregroundStyle(Color.Text.normal)
                .font(Font.App.heading)
                .padding(.trailing, 16)
        }
        .padding(.top, 16)
    }
}
