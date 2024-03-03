//
//  SignInViewController.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 18/01/2024.
//

import UIKit
import SwiftUI
import AuthenticationServices

//https://sarunw.com/posts/sign-in-with-apple-3/
final class SignInViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome ✨"
        label.textColor = UIColor(Color.Text.normal)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Start a tournament alongside your colleagues. Sign in using your Apple ID to get started!"
        label.textColor = UIColor(Color.Text.normal)
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var signInButton: ASAuthorizationAppleIDButton = {
        let authorizationButton = ASAuthorizationAppleIDButton()
        authorizationButton.translatesAutoresizingMaskIntoConstraints = false
        authorizationButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        return authorizationButton
    }()
    
    var viewModel: SignInViewModel = SignInViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupChildViews()
        view.backgroundColor = UIColor(Color.General.background)
    }
    
    private func setupChildViews() {
        
        view.addSubview(titleLabel)
        view.addSubview(welcomeLabel)
        view.addSubview(signInButton)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            titleLabel.bottomAnchor.constraint(equalTo: welcomeLabel.topAnchor, constant: -8),
            welcomeLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            welcomeLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 44),
            signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
            signInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32)
        ])
    }
    
    @objc private func signInButtonTapped() {
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        let request = appleIDProvider.createRequest()
        request.requestedScopes = [.email]
        
        let authorizationController = ASAuthorizationController(authorizationRequests: [request])
        authorizationController.delegate = self
        authorizationController.presentationContextProvider = self
        
        authorizationController.performRequests()
    }
}

extension SignInViewController: ASAuthorizationControllerDelegate {
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        
        guard let credentials = authorization.credential as? ASAuthorizationAppleIDCredential,
              let token = credentials.identityToken else {
            return
        }
        
        viewModel.signIn(token: token)
        
        /*
        switch authorization.credential {
        case let appleIDCredential as ASAuthorizationAppleIDCredential:
            
            // Create an account in your system.
            let userIdentifier = appleIDCredential.user
            //let fullName = appleIDCredential.fullName
            let email = appleIDCredential.email
            
            // For the purpose of this demo app, store the `userIdentifier` in the keychain.
            //self.saveUserInKeychain(userIdentifier)
            
            // For the purpose of this demo app, show the Apple ID credential information in the `ResultViewController`.
            //self.showResultViewController(userIdentifier: userIdentifier, fullName: fullName, email: email)
            
        case let passwordCredential as ASPasswordCredential:
            
            // Sign in using an existing iCloud Keychain credential.
            let username = passwordCredential.user
            let password = passwordCredential.password
            
            // For the purpose of this demo app, show the password credential as an alert.
            /*
             DispatchQueue.main.async {
             self.showPasswordCredentialAlert(username: username, password: password)
             }
             */
        default:
            print(authorization)
            break
        }
         */
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        print("Apple authorization failed with error: \(error)")
    }
}

extension SignInViewController: ASAuthorizationControllerPresentationContextProviding {
    
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return view.window!
    }
}
