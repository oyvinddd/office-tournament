//
//  CameraView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

struct CameraView: View {
    
    var body: some View {
        
        ZStack {
            Text("Camera View")
                .font(.title.bold())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple)
    }
}
