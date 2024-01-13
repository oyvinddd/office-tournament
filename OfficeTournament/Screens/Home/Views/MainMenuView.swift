//
//  MainMenuView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

enum Page: Int {
    case camera, tournament, profile
}

struct MainMenuView: View {
    
    @State var currentPage: Page = .tournament
    
    private let feedback = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            Button(action: cameraButtonTapped) {
                Image(systemName: "eraser")
                    .padding(.leading, 24)
                    .padding(.trailing, 16)
                    .padding(.vertical, 12)
            }
            .font(Font.App.menuButton)
            .foregroundStyle(Color.black)
            
            Button(action: tournamentButtonTapped) {
                Image(systemName: "eraser")
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
            }
            .font(Font.App.menuButton)
            .foregroundStyle(Color.black)
            
            Button(action: profileButtonTapped) {
                Image(systemName: "eraser")
                    .padding(.leading, 16)
                    .padding(.trailing, 24)
                    .padding(.vertical, 12)
            }
            .font(Font.App.menuButton)
            .foregroundStyle(Color.black)
        }
        .background(Color.white)
        .clipShape(Capsule())
    }
    
    private func cameraButtonTapped() {
        feedback.impactOccurred()
        currentPage = .camera
    }
    
    private func tournamentButtonTapped() {
        feedback.impactOccurred()
        currentPage = .tournament
    }
    
    private func profileButtonTapped() {
        feedback.impactOccurred()
        currentPage = .profile
    }
}
