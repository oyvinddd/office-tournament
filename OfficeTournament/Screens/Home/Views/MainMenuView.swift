//
//  MainMenuView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

enum AppPage: Int {
    case camera, tournament, profile
}

struct MainMenuView: View {
    
    @State var currentPage: AppPage = .tournament
    
    private let feedback = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            Button(action: cameraButtonTapped) {
                Image(systemName: "qrcode.viewfinder")
                    .padding(.leading, 24)
                    .padding(.trailing, 20)
                    .padding(.vertical, 12)
            }
            .font(Font.App.menuButton)
            .foregroundStyle(Color.black)
            
            Button(action: tournamentButtonTapped) {
                Image(systemName: "trophy")
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
            }
            .font(Font.App.menuButton)
            .foregroundStyle(Color.black)
            
            Button(action: profileButtonTapped) {
                Image(systemName: "person.crop.circle")
                    .padding(.leading, 20)
                    .padding(.trailing, 24)
                    .padding(.vertical, 12)
            }
            .font(Font.App.menuButton)
            .foregroundStyle(Color.black)
        }
        .background(Color.white)
        .clipShape(Capsule())
        .shadow(color: Color.gray, radius: 12, x: 0, y: 0)
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
