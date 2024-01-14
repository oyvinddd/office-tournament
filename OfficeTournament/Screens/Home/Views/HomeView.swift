//
//  HomeView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        ZStack {
            
            CameraView()
         
            ScrollView(.horizontal) {
                
                LazyHStack(spacing: 0) {
                    EmptyView()
                        .containerRelativeFrame(.horizontal)
                    
                    TournamentView(viewModel: TournamentViewModel())
                        .containerRelativeFrame(.horizontal)
                    
                    ProfileView(viewModel: ProfileViewModel())
                        .containerRelativeFrame(.horizontal)
                }
                .scrollTargetLayout()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.General.background)
            .scrollTargetBehavior(.viewAligned)
            .scrollIndicators(.hidden)
            //.ignoresSafeArea(.all)
            
            VStack {
                
                MainMenuView()
                    .padding(.bottom, 16)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
    }
}

#Preview {
    HomeView()
}
