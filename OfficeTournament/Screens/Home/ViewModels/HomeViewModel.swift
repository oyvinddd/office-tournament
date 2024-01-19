//
//  HomeViewModel.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 19/01/2024.
//

import SwiftUI

final class HomeViewModel: ObservableObject, AuthServiceInjectable {
    
    @Published var shouldShowSignIn: Bool = false
    
    init() {
        shouldShowSignIn = !authService.signedIn()
    }
}
