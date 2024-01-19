//
//  SignInView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

struct SignInView: UIViewControllerRepresentable {

    typealias UIViewControllerType = UINavigationController
    
    func makeUIViewController(context: Context) -> UINavigationController {
        return UINavigationController(rootViewController: SignInViewController())
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        // do nothing
    }
}
