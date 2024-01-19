//
//  SignInView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

struct SignInView: UIViewControllerRepresentable {

    typealias UIViewControllerType = SignInViewController
    
    func makeUIViewController(context: Context) -> SignInViewController {
        return SignInViewController()
    }
    
    func updateUIViewController(_ uiViewController: SignInViewController, context: Context) {
        // do nothing
    }
    
}
