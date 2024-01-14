//
//  HeaderView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        
        VStack(spacing: 2) {
            
            Text("Tournament".uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(Font.system(size: 12, weight: .bold, design: .rounded))
                .foregroundStyle(Color.Text.subtitle)
                .padding(.horizontal, 16)
                .padding(.top, 16)
            
            Text("Tietoevry table tennis")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(Font.App.heading)
                .foregroundStyle(Color.Text.normal)
                .padding(.horizontal, 16)
            
            // Player info part:
            
            HStack {
                
                
            }
        }
        .background(Color.white)
        .padding(.horizontal, 16)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
