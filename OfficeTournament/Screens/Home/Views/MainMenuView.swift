//
//  MainMenuView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

struct MainMenuView: View {
    
    var body: some View {
        
        HStack {
            
            Button(action: {}) {
                Image(systemName: "eraser")
            }
            
            Button(action: {}) {
                Image(systemName: "eraser")
            }
            
            Button(action: {}) {
                Image(systemName: "eraser")
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 64)
        .background(Color.white)
    }
}
