//
//  HeaderView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct HeaderView: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(Font.App.heading)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 16)
    }
}
