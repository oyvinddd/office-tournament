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
                    
                    ProfileView()
                        .containerRelativeFrame(.horizontal)
                }
                .scrollTargetLayout()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.clear)
            .scrollTargetBehavior(.viewAligned)
            .scrollIndicators(.hidden)
            //.ignoresSafeArea(.all)
            
            VStack {
                
                MainMenuView()
                    .padding(.horizontal, 32)
                    .padding(.bottom, 32)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
    }
}

#Preview {
    HomeView()
}
