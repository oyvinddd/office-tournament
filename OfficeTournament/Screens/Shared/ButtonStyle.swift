//
//  ButtonStyle.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

struct MainButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        var backgroundColor: Color
        if configuration.isPressed {
            backgroundColor = Color.black
        } else {
            backgroundColor = Color.black
        }
        
        return configuration.label
            .padding(.horizontal, 24)
            .padding(.vertical, 16)
            .font(Font.App.button)
            .background(backgroundColor)
            .foregroundStyle(Color.white)
            .foregroundStyle(.white)
            .clipShape(Capsule())
    }
}
