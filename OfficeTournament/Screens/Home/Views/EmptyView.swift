//
//  EmptyView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

struct EmptyView: View {
    
    var body: some View {
        ZStack {
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.clear)
        //.opacity(0.5)
    }
}

#Preview {
    EmptyView()
}
