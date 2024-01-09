//
//  LogInView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 09/01/2024.
//

import SwiftUI

struct LogInView: View {
    
    @ObservedObject var viewModel: LogInViewModel
    @State private var tournamentCode: String = ""
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 8) {
            
            Text("Hi!")
                .font(Font.system(size: 28, weight: .bold, design: .rounded))
                .foregroundStyle(Color.white)
            
            TextField("Tournament password", text: $tournamentCode)
                .font(Font.system(size: 24, weight: .bold, design: .rounded))
                .multilineTextAlignment(.center)
            
            Button("Log In", action: logInButtonTapped)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 16)
        .background(Color.red)
    }
    
    private func logInButtonTapped() {
        viewModel.tournamentLogIn(code: tournamentCode)
    }
}

#Preview {
    LogInView(viewModel: LogInViewModel())
}
