//
//  OfficeTournamentApp.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

@main struct OfficeTournamentApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        
        WindowGroup {
            HomeView()
            //SignInView(viewModel: SignInViewModel())
        }
    }
}
